.class public Lcom/android/server/wm/SurfaceSyncGroupController;
.super Ljava/lang/Object;
.source "SurfaceSyncGroupController.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mSurfaceSyncGroups:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$EqQG4rGoO5nNw2e4s11USDwgzBY(Landroid/window/ISurfaceSyncGroupCompletedListener;)V
    .locals 0

    .line 49
    :try_start_0
    invoke-interface {p0}, Landroid/window/ISurfaceSyncGroupCompletedListener;->onSurfaceSyncGroupComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceSyncGroupController;->mLock:Ljava/lang/Object;

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceSyncGroupController;->mSurfaceSyncGroups:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public addToSyncGroup(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;Landroid/window/AddToSurfaceSyncGroupResult;)Z
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/android/server/wm/SurfaceSyncGroupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceSyncGroupController;->mSurfaceSyncGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;

    if-nez v1, :cond_1

    .line 45
    new-instance v1, Landroid/window/SurfaceSyncGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SurfaceSyncGroupController-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 47
    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/android/server/wm/SurfaceSyncGroupController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Lcom/android/server/wm/SurfaceSyncGroupController$$ExternalSyntheticLambda0;-><init>(Landroid/window/ISurfaceSyncGroupCompletedListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/window/SurfaceSyncGroup;->addSyncCompleteCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 54
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/SurfaceSyncGroupController;->mSurfaceSyncGroups:Landroid/util/ArrayMap;

    new-instance p3, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;

    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p3, v2, v1, v3}, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;-><init>(ILandroid/window/SurfaceSyncGroup;Lcom/android/server/wm/SurfaceSyncGroupController-IA;)V

    .line 54
    invoke-virtual {p0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_1
    iget-object v1, v1, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;->mSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v1, p2}, Landroid/window/SurfaceSyncGroup;->createTransactionReadyCallback(Z)Landroid/window/ITransactionReadyCallback;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 66
    :cond_2
    iget-object p1, v1, Landroid/window/SurfaceSyncGroup;->mISurfaceSyncGroup:Landroid/window/ISurfaceSyncGroup;

    iput-object p1, p4, Landroid/window/AddToSurfaceSyncGroupResult;->mParentSyncGroup:Landroid/window/ISurfaceSyncGroup;

    .line 67
    iput-object p0, p4, Landroid/window/AddToSurfaceSyncGroupResult;->mTransactionReadyCallback:Landroid/window/ITransactionReadyCallback;

    const/4 p0, 0x1

    return p0

    .line 59
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public markSyncGroupReady(Landroid/os/IBinder;)V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/SurfaceSyncGroupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceSyncGroupController;->mSurfaceSyncGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;

    if-eqz v1, :cond_1

    .line 80
    iget v2, v1, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;->mOwningUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 85
    iget-object v1, v1, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;->mSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    .line 86
    iget-object p0, p0, Lcom/android/server/wm/SurfaceSyncGroupController;->mSurfaceSyncGroups:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 81
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only process that created the SurfaceSyncGroup can call markSyncGroupReady"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SurfaceSyncGroup Token has not been set up or has already been marked as ready"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
