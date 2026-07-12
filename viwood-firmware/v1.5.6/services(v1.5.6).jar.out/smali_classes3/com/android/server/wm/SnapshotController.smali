.class public Lcom/android/server/wm/SnapshotController;
.super Ljava/lang/Object;
.source "SnapshotController.java"


# instance fields
.field public final mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

.field public final mObsoleteSnapshots:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field public final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;


# direct methods
.method public static synthetic $r8$lambda$TV29UzMtxQKVnhnWpRUevvp_os4(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotController;->lambda$new$1(Landroid/hardware/HardwareBuffer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ibbxI7ud-kkaypzOJwL5fxr1fg(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotController;->lambda$new$0(Landroid/hardware/HardwareBuffer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 52
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {v0}, Lcom/android/server/wm/SnapshotPersistQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 53
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v1, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 54
    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/ActivitySnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v2, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 55
    new-instance p1, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SnapshotController;)V

    .line 69
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotReleaser(Ljava/util/function/Consumer;)V

    .line 70
    invoke-virtual {v2, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotReleaser(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static isTransitionClose(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isTransitionOpen(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0xd

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final closeObsoleteSnapshots()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 230
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivitySnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 249
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SnapshotPersistQueue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$new$0(Landroid/hardware/HardwareBuffer;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 61
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 66
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$new$1(Landroid/hardware/HardwareBuffer;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivitySnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method public onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 88
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 83
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onTransactionReady(ILjava/util/ArrayList;)V
    .locals 6

    .line 98
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionOpen(I)Z

    move-result v0

    .line 99
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionClose(I)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    goto/16 :goto_3

    .line 104
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ltz p1, :cond_9

    .line 105
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 107
    iget v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 108
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 109
    :cond_2
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 110
    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_3

    .line 111
    iget-object v5, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_2

    .line 117
    :cond_4
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 118
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 119
    :cond_5
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 120
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_1

    .line 121
    :cond_6
    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_8

    .line 122
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v2, :cond_7

    .line 124
    new-instance v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;

    invoke-direct {v2, v0}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;-><init>(Lcom/android/server/wm/SnapshotController-IA;)V

    .line 126
    :cond_7
    invoke-virtual {v2, v3}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->put(Lcom/android/server/wm/ActivityRecord;)V

    :cond_8
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    .line 131
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->recordSnapshot(Lcom/android/server/wm/ActivitySnapshotController;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onTransitionFinish(ILjava/util/ArrayList;)V
    .locals 6

    .line 189
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionOpen(I)Z

    move-result v0

    .line 190
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionClose(I)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    .line 192
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotController;->closeObsoleteSnapshots()V

    return-void

    .line 196
    :cond_2
    const-string p1, "SnapshotController_analysis"

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivitySnapshotController;->beginSnapshotProcess()V

    .line 198
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    .line 200
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 201
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-nez v4, :cond_3

    .line 202
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 205
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 207
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivitySnapshotController;->handleTransitionFinish(Ljava/util/ArrayList;)V

    .line 208
    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivitySnapshotController;->endSnapshotProcess()V

    .line 210
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_6

    .line 211
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 212
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 213
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 214
    iget-object v2, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v4, v3, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 217
    iget-object v2, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v4, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/TaskSnapshotController;->removeAndDeleteSnapshot(II)V

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 221
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotController;->closeObsoleteSnapshots()V

    .line 222
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public setPause(Z)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotPersistQueue;->setPaused(Z)V

    return-void
.end method

.method public systemReady()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue;->systemReady()V

    return-void
.end method
