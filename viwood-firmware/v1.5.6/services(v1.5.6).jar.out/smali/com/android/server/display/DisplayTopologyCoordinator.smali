.class public Lcom/android/server/display/DisplayTopologyCoordinator;
.super Ljava/lang/Object;
.source "DisplayTopologyCoordinator.java"


# instance fields
.field public final mDensities:Landroid/util/SparseIntArray;

.field public final mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

.field public final mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

.field public final mOnTopologyChangedCallback:Ljava/util/function/Consumer;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public mTopology:Landroid/hardware/display/DisplayTopology;

.field public final mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

.field public final mTopologySavedCallback:Ljava/lang/Runnable;

.field public final mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

.field public final mUniqueIdToDisplayIdMapping:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$FLGZO3IsBzi_ExNQa2xMif3tj-E(Lcom/android/server/display/DisplayTopologyCoordinator;Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayTopologyCoordinator;->lambda$sendTopologyUpdateLocked$0(Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayTopologyCoordinator$Injector;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/hardware/display/DisplayTopology;",
            "Landroid/hardware/display/DisplayTopologyGraph;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/server/display/DisplayManagerService$SyncRoot;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    .line 68
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    .line 99
    invoke-virtual {p1}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;->getTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 100
    iput-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

    .line 101
    iput-object p3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mOnTopologyChangedCallback:Ljava/util/function/Consumer;

    .line 102
    iput-object p4, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

    .line 103
    iput-object p5, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 104
    invoke-virtual {p1, v1, v0}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;->createTopologyStore(Landroid/util/SparseArray;Ljava/util/Map;)Lcom/android/server/display/DisplayTopologyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    .line 106
    iput-object p6, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;)V
    .locals 7

    .line 90
    new-instance v1, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;

    invoke-direct {v1}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayTopologyCoordinator;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getUniqueId(Landroid/view/DisplayInfo;)Ljava/lang/String;
    .locals 2

    .line 48
    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    const-string p0, "internal"

    return-object p0

    .line 51
    :cond_0
    iget-object p0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final addDisplayIdMappingLocked(Landroid/view/DisplayInfo;)V
    .locals 3

    .line 233
    invoke-static {p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getUniqueId(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayTopology;->dump(Ljava/io/PrintWriter;)V

    .line 217
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getHeight(Landroid/view/DisplayInfo;)F
    .locals 0

    .line 251
    iget p0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float p0, p0

    iget p1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-static {p0, p1}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result p0

    return p0
.end method

.method public getTopology()Landroid/hardware/display/DisplayTopology;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->copy()Landroid/hardware/display/DisplayTopology;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getWidth(Landroid/view/DisplayInfo;)F
    .locals 0

    .line 243
    iget p0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float p0, p0

    iget p1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-static {p0, p1}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result p0

    return p0
.end method

.method public final isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z
    .locals 8

    .line 255
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "Display "

    const-string v5, "DisplayTopologyCoordinator"

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not allowed in topology because type is not INTERNAL, EXTERNAL or OVERLAY"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    if-ne v0, v6, :cond_3

    .line 263
    iget v7, p1, Landroid/view/DisplayInfo;->displayId:I

    if-eqz v7, :cond_3

    if-eqz p2, :cond_2

    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not allowed in topology because it is a non-default internal display"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_6

    .line 270
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

    .line 271
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    if-nez p0, :cond_6

    if-eqz p2, :cond_5

    .line 273
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not allowed in topology because type is EXTERNAL or OVERLAY and !mIsExtendedDisplayAllowed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3

    :cond_6
    return v6
.end method

.method public final synthetic lambda$sendTopologyUpdateLocked$0(Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V
    .locals 1

    .line 300
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mOnTopologyChangedCallback:Ljava/util/function/Consumer;

    new-instance v0, Landroid/util/Pair;

    .line 301
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayTopology;->getGraph(Landroid/util/SparseIntArray;)Landroid/hardware/display/DisplayTopologyGraph;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onDisplayAdded(Landroid/view/DisplayInfo;)V
    .locals 5

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->addDisplayIdMappingLocked(Landroid/view/DisplayInfo;)V

    .line 119
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getWidth(Landroid/view/DisplayInfo;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getHeight(Landroid/view/DisplayInfo;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/display/DisplayTopology;->addDisplay(IFF)V

    .line 121
    const-string v1, "DisplayTopologyCoordinator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " added, new topology: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    .line 123
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayChanged(Landroid/view/DisplayInfo;)V
    .locals 4

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getWidth(Landroid/view/DisplayInfo;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getHeight(Landroid/view/DisplayInfo;)F

    move-result p1

    invoke-virtual {v1, v2, v3, p1}, Landroid/hardware/display/DisplayTopology;->updateDisplay(IFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    .line 142
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 152
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayTopology;->removeDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "DisplayTopologyCoordinator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " removed, new topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->removeDisplayIdMappingLocked(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    .line 156
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 158
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

.method public reloadTopologies(IZ)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    invoke-interface {v1, p1}, Lcom/android/server/display/DisplayTopologyStore;->reloadTopologies(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    iget-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-interface {p1, p2}, Lcom/android/server/display/DisplayTopologyStore;->saveTopology(Landroid/hardware/display/DisplayTopology;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 180
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 183
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    .line 180
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeDisplayIdMappingLocked(I)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find uniqueId for displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayTopologyCoordinator"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 228
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final restoreTopologyLocked()Z
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayTopologyStore;->restoreTopology(Landroid/hardware/display/DisplayTopology;)Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 291
    :cond_0
    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 292
    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->normalize()V

    const/4 p0, 0x1

    return p0
.end method

.method public final sendTopologyUpdateLocked()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->copy()Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    .line 300
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator;Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTopology(Landroid/hardware/display/DisplayTopology;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->normalize()V

    .line 200
    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 201
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    .line 202
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    invoke-interface {v1, p1}, Lcom/android/server/display/DisplayTopologyStore;->saveTopology(Landroid/hardware/display/DisplayTopology;)Z

    move-result p1

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 206
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 203
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
