.class public final Lcom/android/server/wm/ActivityTaskManagerService$LocalService;
.super Lcom/android/server/wm/ActivityTaskManagerInternal;
.source "ActivityTaskManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public static synthetic $r8$lambda$9L6bCoFX770T8O7d1m-CEPsZJ2s(Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 6614
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    .line 6615
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$K0VNmX0HW4WinBFZDY9FY4g3qgY(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$showSystemReadyErrorDialogsIfNeeded$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$PsKU3qzgMIyouIjFl0dizi2h9WM(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$updateTopComponentForFactoryTest$3(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ug6lRtoHhlMy1xUAPsiPFvoHcTY(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$showSystemReadyErrorDialogsIfNeeded$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wCfXAaYFqmTS3D17subNsxGP2is(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 7592
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 6081
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 5

    .line 6863
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x20

    .line 6864
    :try_start_0
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachApplication:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6868
    :cond_0
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->attachApplication(Lcom/android/server/wm/WindowProcessController;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6870
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6871
    throw p0

    .line 6872
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public canCloseSystemDialogs(II)Z
    .locals 0

    .line 6275
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mcanCloseSystemDialogs(Lcom/android/server/wm/ActivityTaskManagerService;II)Z

    move-result p0

    return p0
.end method

.method public canGcNow()Z
    .locals 2

    .line 7162
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7163
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->isSleeping()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 7164
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public canShowErrorDialogs(I)Z
    .locals 6

    .line 7336
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 7338
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->shouldShowDialogsForVisibleBackgroundUserLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    move v1, v2

    .line 7339
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-nez v4, :cond_2

    .line 7343
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_2
    if-eqz v1, :cond_3

    .line 7345
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 7346
    invoke-virtual {v1, v3}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v5, "no_system_error_dialogs"

    .line 7347
    invoke-virtual {v1, v5, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 7348
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 7349
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7345
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7350
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public checkCanCloseSystemDialogs(IILjava/lang/String;)Z
    .locals 0

    .line 6269
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCanCloseSystemDialogs(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public cleanupDisabledPackageComponents(Ljava/lang/String;Ljava/util/Set;IZ)V
    .locals 9

    .line 6796
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 6798
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    .line 6800
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/RootWindowContainer;->finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 6803
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 6804
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 6808
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, v3, v4, v7}, Lcom/android/server/wm/RecentTasks;->cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 6810
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public cleanupRecentTasksForUser(I)V
    .locals 1

    .line 7290
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7291
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 7292
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
    .locals 1

    .line 6402
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 6403
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 6404
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearLockedTasks(Ljava/lang/String;)V
    .locals 1

    .line 7316
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7317
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    .line 7318
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 6585
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 6586
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6587
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 6588
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6590
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 6

    .line 6762
    const-string v0, "closeSystemDialogs"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 6763
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 6764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    .line 6765
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->checkCanCloseSystemDialogs(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 6769
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6771
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v5, 0x2710

    if-lt v1, v5, :cond_1

    .line 6775
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 6776
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPerceptible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6777
    const-string p0, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring closeSystemDialogs "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from background process "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6779
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6789
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6782
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->closeSystemDialogs(Ljava/lang/String;)V

    .line 6784
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->closeSystemDialogActivities(Ljava/lang/String;)V

    .line 6785
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6787
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->broadcastCloseSystemDialogs(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6789
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 6785
    :goto_0
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6789
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6790
    throw p0
.end method

.method public createPackageConfigurationUpdater()Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .locals 2

    .line 7472
    new-instance v0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;)V

    return-object v0
.end method

.method public createPackageConfigurationUpdater(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .locals 1

    .line 7479
    new-instance v0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(Ljava/lang/String;ILcom/android/server/wm/ActivityTaskManagerService;)V

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;I)V
    .locals 2

    .line 6928
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 6929
    :try_start_0
    const-string v0, "activities"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "a"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 6932
    :cond_0
    const-string p2, "lastanr"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6933
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    .line 6934
    :cond_1
    const-string p2, "lastanr-traces"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6935
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpLastANRTracesLocked(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 6936
    :cond_2
    const-string p2, "starter"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6937
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p3, p8}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivityStarterLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    .line 6938
    :cond_3
    const-string p2, "containers"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6939
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivityContainersLocked(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 6940
    :cond_4
    const-string p2, "recents"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "r"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    .line 6944
    :cond_5
    const-string p2, "top-resumed"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 6945
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpTopResumedActivityLocked(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 6946
    :cond_6
    const-string p2, "visible"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 6947
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p3, p9}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpVisibleActivitiesLocked(Ljava/io/PrintWriter;I)V

    goto :goto_2

    .line 6941
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 6942
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, p3, p6, p8}, Lcom/android/server/wm/RecentTasks;->dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V

    goto :goto_2

    .line 6930
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual/range {p1 .. p9}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;I)V

    .line 6949
    :cond_9
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZII)Z
    .locals 13

    .line 7144
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const-wide/16 v11, 0x1388

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZIIJ)Z

    move-result p0

    return p0
.end method

.method public dumpForOom(Ljava/io/PrintWriter;)V
    .locals 3

    .line 7151
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7152
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHomeProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPreviousProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7154
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_0

    .line 7155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHeavyWeightProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7157
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpForProcesses(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;IZZI)Z
    .locals 7

    .line 6956
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 6957
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 6958
    invoke-virtual {v0, p4}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    if-eqz p6, :cond_1

    .line 6960
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    move p6, v1

    .line 6963
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHomeProcess: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6965
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_5

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 6966
    invoke-virtual {v0, p4}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    if-eqz p6, :cond_4

    .line 6968
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    move p6, v1

    .line 6971
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPreviousProcess: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    if-eqz p3, :cond_7

    .line 6973
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 6974
    invoke-virtual {v0, p4}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6975
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6976
    const-string v2, "  mPreviousProcessVisibleTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6977
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmPreviousProcessVisibleTime(Lcom/android/server/wm/ActivityTaskManagerService;)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 6978
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6980
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_a

    if-eqz p4, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 6981
    invoke-virtual {v0, p4}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    if-eqz p6, :cond_9

    .line 6983
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    move p6, v1

    .line 6986
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHeavyWeightProcess: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    if-nez p4, :cond_b

    .line 6989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mGlobalConfiguration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6990
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v2, "  "

    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x1

    if-eqz p3, :cond_f

    .line 6993
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-nez p4, :cond_c

    if-eqz p3, :cond_c

    .line 6995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mConfigWillChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p3, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6997
    :cond_c
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p3}, Lcom/android/server/wm/CompatModePackages;->getPackages()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    if-lez p3, :cond_f

    .line 7000
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p3}, Lcom/android/server/wm/CompatModePackages;->getPackages()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v2, v1

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7001
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7002
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz p4, :cond_d

    .line 7003
    invoke-virtual {p4, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    if-nez v2, :cond_e

    .line 7007
    const-string v2, "  mScreenCompatPackages:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v0

    .line 7010
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    if-nez p4, :cond_11

    .line 7016
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulness="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7017
    invoke-static {p8}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 7016
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7018
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  mSleepTokens="

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p8, p8, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7019
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p3, :cond_10

    .line 7020
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  mRunningVoice="

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7021
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  mVoiceWakeLock"

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7023
    :cond_10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  mSleeping="

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p8}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result p8

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7024
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  mShuttingDown="

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p8, " mTestPssMode="

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7025
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "  mVrController="

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p7, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p7, p7, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7027
    :cond_11
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz p3, :cond_12

    .line 7028
    const-string p7, "  "

    invoke-virtual {p3, p2, p7, v0}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 7030
    :cond_12
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-lez p3, :cond_18

    move p3, v1

    move p7, p3

    .line 7032
    :goto_2
    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {p8}, Landroid/util/SparseArray;->size()I

    move-result p8

    if-ge p3, p8, :cond_18

    .line 7033
    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {p8, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Landroid/util/ArrayMap;

    move v2, v1

    .line 7034
    :goto_3
    invoke-virtual {p8}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_17

    if-eqz p4, :cond_13

    .line 7036
    invoke-virtual {p8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p5, :cond_16

    :cond_13
    if-eqz p6, :cond_14

    .line 7038
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    move p6, v1

    :cond_14
    if-nez p7, :cond_15

    .line 7042
    const-string p7, "  mAllowAppSwitchUids:"

    invoke-virtual {p2, p7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p7, v0

    .line 7045
    :cond_15
    const-string v3, "    User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7046
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 7047
    const-string v3, ": Type "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7048
    invoke-virtual {p8, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7049
    const-string v3, " = "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7050
    invoke-virtual {p8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p2, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 7051
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_17
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_18
    if-nez p4, :cond_1a

    .line 7057
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz p3, :cond_19

    .line 7058
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  mController="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " mControllerIsAMonkey="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7061
    :cond_19
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  mGoingToSleepWakeLock="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7062
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  mLaunchingActivityWakeLock="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7066
    :cond_1a
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p6

    .line 7067
    :goto_4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public enableScreenAfterBoot(Z)V
    .locals 2

    .line 6443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/EventLogTags;->writeBootProgressEnableScreen(J)V

    .line 6446
    invoke-static {}, Lcom/mediatek/server/MtkSystemServer;->getInstance()Lcom/mediatek/server/MtkSystemServer;

    move-result-object v0

    const-string v1, "AMS:ENABLE_SCREEN"

    invoke-virtual {v0, v1}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 6449
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenAfterBoot()V

    .line 6450
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6451
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateEventDispatchingLocked(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    .line 6452
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public finishHeavyWeightApp()V
    .locals 2

    .line 6409
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6410
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_0

    .line 6411
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->finishActivities()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6413
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 6415
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I
    .locals 2

    .line 7220
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7223
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7226
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityOnVisibleActivityDiedOrCrashed(Ljava/lang/String;)V

    .line 7227
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7231
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7227
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    .line 7231
    :cond_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7229
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, -0x1

    return p0

    .line 7231
    :goto_0
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 7232
    throw p1

    .line 7233
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public flushRecentTasks()V
    .locals 0

    .line 7311
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->flush()V

    return-void
.end method

.method public getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 0

    .line 6595
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 6596
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6597
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 6598
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getAppTasks(Ljava/lang/String;I)Ljava/util/List;
    .locals 3

    .line 7563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7564
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mgetAppTasks(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 7565
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 7567
    new-instance v1, Landroid/app/ActivityManager$AppTask;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/app/IAppTask$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ActivityManager$AppTask;-><init>(Landroid/app/IAppTask;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getApplicationConfig(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
    .locals 0

    .line 7487
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object p0

    return-object p0
.end method

.method public getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    .locals 9

    .line 6604
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 6605
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6608
    const-string p0, "ActivityTaskManager"

    const-string p1, "getApplicationThreadForTopActivity failed: Requested task not found"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6610
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    .line 6612
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6613
    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6618
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    .line 6619
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    .line 6622
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6623
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6624
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    iget-object v4, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6625
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 6626
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v8

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;-><init>(Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/IApplicationThread;Landroid/os/IBinder;I)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6624
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 6629
    :cond_2
    :goto_0
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 6630
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6631
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    if-ne v4, p2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6632
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    iget-object v4, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6633
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 6634
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v8

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;-><init>(Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/IApplicationThread;Landroid/os/IBinder;I)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6632
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6637
    :cond_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 6638
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getDisplayId(Landroid/os/IBinder;)I
    .locals 3

    .line 6237
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 6238
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6243
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 6240
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayId: No activity record matching token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6244
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getHomeActivityForUser(I)Landroid/content/ComponentName;
    .locals 1

    .line 6085
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6086
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 6087
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 6088
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6089
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .locals 1

    .line 6663
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6664
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6665
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;
    .locals 2

    .line 6646
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 6647
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual/range {p0 .. p12}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 6649
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .locals 1

    .line 7402
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7403
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 7404
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getMostRecentTaskFromBackground()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 5

    .line 7535
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTasks(I)Ljava/util/List;

    move-result-object v0

    .line 7537
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 7538
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7544
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 7548
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v3, 0x2

    .line 7545
    invoke-virtual {p0, v3, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 7549
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 7551
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 7553
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eq v3, v4, :cond_0

    return-object v1

    :cond_1
    return-object v2

    .line 7540
    :cond_2
    const-string p0, "ActivityTaskManager"

    const-string v0, "No running task found!"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getServiceConnectionsHolder(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .locals 0

    .line 6654
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6655
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 6658
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrCreateServiceConnectionsHolder()Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskSnapshotBlocking(IZI)Landroid/window/TaskSnapshot;
    .locals 0

    .line 7420
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mgetTaskSnapshotInner(Lcom/android/server/wm/ActivityTaskManagerService;IZI)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getTaskToShowPermissionDialogOn(Ljava/lang/String;I)I
    .locals 1

    .line 7574
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7575
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 7576
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getTaskToShowPermissionDialogOn(Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7575
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 7577
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getTopApp()Lcom/android/server/wm/WindowProcessController;
    .locals 0

    .line 7170
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public getTopProcessState()I
    .locals 1

    .line 6384
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 6389
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    return p0
.end method

.method public getTopVisibleActivities()Ljava/util/List;
    .locals 1

    .line 6102
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6103
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopVisibleActivities()Ljava/util/List;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6104
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    .line 7410
    const-string v0, "getUriPermissionOwnerForActivity"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 7411
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 7412
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 7413
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 7414
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z
    .locals 11

    .line 7259
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 7260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 7261
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    .line 7265
    :try_start_1
    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    move-object/from16 v10, p8

    goto :goto_0

    .line 7270
    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 7271
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v10}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 7273
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v10, :cond_2

    .line 7275
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    .line 7273
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public handleAppDied(Lcom/android/server/wm/WindowProcessController;ZLjava/lang/Runnable;)V
    .locals 3

    .line 6735
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 6736
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6740
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->handleAppDied()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 6742
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    if-nez p2, :cond_0

    if-eqz v1, :cond_0

    .line 6746
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6748
    :try_start_3
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v1, "handleAppDied"

    invoke-virtual {p2, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityOnVisibleActivityDiedOrCrashed(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6751
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6752
    throw p1

    .line 6754
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6755
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6756
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :catchall_2
    move-exception p1

    .line 6742
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 6743
    throw p1

    .line 6754
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public hasResumedActivity(I)Z
    .locals 0

    .line 6109
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker;->hasResumedActivity(I)Z

    move-result p0

    return p0
.end method

.method public hasSystemAlertWindowPermission(IILjava/lang/String;)Z
    .locals 0

    .line 7493
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAssistDataAllowed()Z
    .locals 0

    .line 7632
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssistDataAllowed()Z

    move-result p0

    return p0
.end method

.method public isBaseOfLockedTask(Ljava/lang/String;)Z
    .locals 1

    .line 7453
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7454
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isBaseOfLockedTask(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 7455
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isCallerRecents(I)Z
    .locals 0

    .line 6259
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result p0

    return p0
.end method

.method public isGetTasksAllowed(Ljava/lang/String;II)Z
    .locals 0

    .line 6329
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isNoDisplay(Ljava/lang/String;II)Z
    .locals 0

    .line 7466
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getWindowStyle(Ljava/lang/String;II)Lcom/android/server/wm/ActivityRecord$WindowStyle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7467
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->noDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShuttingDown()Z
    .locals 0

    .line 6426
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    return p0
.end method

.method public isSleeping()Z
    .locals 0

    .line 6421
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result p0

    return p0
.end method

.method public isUidForeground(I)Z
    .locals 0

    .line 7426
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$showSystemReadyErrorDialogsIfNeeded$0()V
    .locals 3

    .line 6476
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6477
    new-instance v0, Lcom/android/server/am/BaseErrorDialog;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmUiContext(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 6478
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const/4 v1, 0x0

    .line 6479
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 6480
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmUiContext(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040152

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 6481
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmUiContext(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040a3c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6482
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmUiContext(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000a

    .line 6483
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const/4 v2, 0x1

    .line 6484
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 v2, -0x1

    .line 6482
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 6485
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$showSystemReadyErrorDialogsIfNeeded$1()V
    .locals 3

    .line 6495
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6496
    new-instance v0, Lcom/android/server/am/BaseErrorDialog;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmUiContext(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 6497
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const/4 v1, 0x0

    .line 6498
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 6499
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmUiContext(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040152

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 6500
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmUiContext(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040a3b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6501
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmUiContext(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000a

    .line 6502
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const/4 v2, 0x1

    .line 6503
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 v2, -0x1

    .line 6501
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 6504
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$updateTopComponentForFactoryTest$3(Ljava/lang/CharSequence;)V
    .locals 2

    .line 6724
    new-instance v0, Lcom/android/server/wm/FactoryErrorDialog;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmUiContext(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 6725
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6726
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->ensureBootCompleted()V

    return-void
.end method

.method public loadRecentTasksForUser(I)V
    .locals 1

    .line 7298
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->loadRecentTasksIfNeeded(I)V

    .line 7299
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackageConfigPersister;->loadUserPackages(I)V

    return-void
.end method

.method public notifyActiveDreamChanged(Landroid/content/ComponentName;)V
    .locals 1

    .line 6287
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6288
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmActiveDreamComponent(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/ComponentName;)V

    .line 6289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public notifyActiveVoiceInteractionServiceChanged(Landroid/content/ComponentName;)V
    .locals 1

    .line 6280
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6281
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    .line 6282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public notifyLockedProfile(I)V
    .locals 4

    .line 6878
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 6885
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6886
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6888
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6889
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mmaybeHideLockedProfileActivityLocked(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 6890
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lockAllProfileTasks(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6893
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6895
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 6893
    :goto_1
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6894
    throw p0

    .line 6895
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6879
    :cond_1
    :try_start_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only privileged app can call notifyLockedProfile"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 6882
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Fail to check is caller a privileged app"

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onCleanUpApplicationRecord(Lcom/android/server/wm/WindowProcessController;)V
    .locals 3

    .line 6371
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 6372
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 6373
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6375
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p1, v1, :cond_1

    .line 6376
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 6378
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onForceStopPackage(Ljava/lang/String;ZZI)Z
    .locals 9

    .line 6816
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 6818
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 6819
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/RootWindowContainer;->finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z

    move-result p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 6825
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    .line 7197
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7201
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->handleAppCrash()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7203
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    if-eqz p1, :cond_0

    .line 7207
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7209
    :try_start_3
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v1, "onHandleAppCrash"

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityOnVisibleActivityDiedOrCrashed(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7212
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 7213
    throw p1

    .line 7215
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2
    move-exception p1

    .line 7203
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 7204
    throw p1

    .line 7215
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onLocalVoiceInteractionStarted(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 1

    .line 6095
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6096
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$monLocalVoiceInteractionStartedLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 6097
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackageAdded(Ljava/lang/String;Z)V
    .locals 1

    .line 6547
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6548
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CompatModePackages;->handlePackageAddedLocked(Ljava/lang/String;Z)V

    .line 6549
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 2

    .line 6528
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6529
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->handlePackageDataClearedLocked(Ljava/lang/String;)V

    .line 6530
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AppWarnings;->onPackageDataCleared(Ljava/lang/String;I)V

    .line 6531
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->onPackageDataCleared(Ljava/lang/String;I)V

    .line 6532
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackageReplaced(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    .line 6554
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6556
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6557
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 6558
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6559
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmWindowStyleCache(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/utils/WindowStyleCache;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/utils/WindowStyleCache;->invalidatePackage(Ljava/lang/String;)V

    return-void

    .line 6558
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackageUninstalled(Ljava/lang/String;I)V
    .locals 2

    .line 6537
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6538
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AppWarnings;->onPackageUninstalled(Ljava/lang/String;I)V

    .line 6539
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->handlePackageUninstalledLocked(Ljava/lang/String;)V

    .line 6540
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->onPackageUninstall(Ljava/lang/String;I)V

    .line 6541
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6542
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmWindowStyleCache(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/utils/WindowStyleCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/utils/WindowStyleCache;->invalidatePackage(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 6541
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .locals 1

    .line 7304
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7305
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RecentTasks;->onPackagesSuspendedChanged([Ljava/lang/String;ZI)V

    .line 7306
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessAdded(Lcom/android/server/wm/WindowProcessController;)V
    .locals 4

    .line 6336
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 6337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    iget v2, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget-object v3, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/PackageConfigPersister;->updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V

    .line 6339
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 6340
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onProcessMapped(ILcom/android/server/wm/WindowProcessController;)V
    .locals 1

    .line 6514
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6515
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessControllerMap;->put(ILcom/android/server/wm/WindowProcessController;)V

    .line 6516
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessRemoved(Ljava/lang/String;I)V
    .locals 8

    .line 6346
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 6347
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_1

    .line 6348
    iget-boolean v2, v1, Lcom/android/server/wm/WindowProcessController;->mHasEverAttached:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    .line 6349
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6351
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6353
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 6354
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 6355
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p2, v5, :cond_0

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6356
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is removed with pending start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6357
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6359
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6360
    const-string v5, "starting-proc-removed"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6365
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onProcessUnMapped(I)V
    .locals 1

    .line 6521
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6522
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->remove(I)V

    .line 6523
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onUidActive(II)V
    .locals 0

    .line 7239
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MirrorActiveUids;->onUidActive(II)V

    return-void
.end method

.method public onUidInactive(I)V
    .locals 0

    .line 7245
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->onUidInactive(I)V

    return-void
.end method

.method public onUidProcStateChanged(II)V
    .locals 0

    .line 7251
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MirrorActiveUids;->onUidProcStateChanged(II)V

    return-void
.end method

.method public onUserStopped(I)V
    .locals 2

    .line 6321
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentTasks;->unloadUserDataFromMemoryLocked(I)V

    .line 6323
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 6324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public preBindApplication(Lcom/android/server/wm/WindowProcessController;Landroid/content/pm/ApplicationInfo;)Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;
    .locals 6

    .line 6841
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 6842
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V

    .line 6843
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6845
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 6846
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 6847
    iget v4, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6848
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6852
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0x7cdf13af5a8b3866L    # 3.1012259304182996E293

    const/4 v2, 0x0

    invoke-static {v3, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6855
    :cond_2
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object p0

    new-instance p2, Landroid/content/res/Configuration;

    .line 6856
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;-><init>(Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    monitor-exit v0

    return-object v1

    .line 6857
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V
    .locals 2

    .line 7501
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7502
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmActivityInterceptorCallbacks(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    .line 7509
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback;->isValidOrderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7517
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmActivityInterceptorCallbacks(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7518
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 7510
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provided id "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in range of valid ids for system services ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] nor in range of valid ids for mainline module services ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e8

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e9

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7506
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The passed ActivityInterceptorCallback can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7503
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate id provided: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7518
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerCompatScaleProvider(ILcom/android/server/wm/CompatScaleProvider;)V
    .locals 0

    .line 7621
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->registerCompatScaleProvider(ILcom/android/server/wm/CompatScaleProvider;)V

    return-void
.end method

.method public registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V
    .locals 0

    .line 6249
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRecentTasksByPackageName(Ljava/lang/String;I)V
    .locals 1

    .line 7283
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7284
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->removeTasksByPackageName(Ljava/lang/String;I)V

    .line 7285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeUser(I)V
    .locals 2

    .line 7182
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->removeUser(I)V

    .line 7184
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackageConfigPersister;->removeUser(I)V

    .line 7185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public requestBackGesture()Z
    .locals 0

    .line 7637
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->requestBackGesture()Z

    move-result p0

    return p0
.end method

.method public restartTaskActivityProcessIfVisible(ILjava/lang/String;)V
    .locals 3

    .line 7582
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7583
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    .line 7585
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_0

    .line 7587
    const-string p0, "ActivityTaskManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to restart Activity. No task found for id: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7588
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 7591
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_1

    .line 7597
    const-string p0, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restart Activity. No Activity found for package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in task: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7599
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7602
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 7603
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public resumeTopActivities(Z)V
    .locals 2

    .line 6830
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6831
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    if-eqz p1, :cond_0

    .line 6833
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6835
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public scheduleDestroyAllActivities(Ljava/lang/String;)V
    .locals 1

    .line 7175
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7176
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 7177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 10

    .line 6566
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 6567
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6568
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6571
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6574
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v7, p6

    invoke-virtual {p2, v7, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v9

    .line 6576
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 6577
    :try_start_1
    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    move v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    .line 6579
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 6569
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6571
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .locals 1

    .line 6120
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6121
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/wm/ActivityTaskManagerService;[I)V

    .line 6122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setAllowAppSwitches(Ljava/lang/String;II)V
    .locals 2

    .line 6299
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6302
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6303
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    if-gez p2, :cond_1

    .line 6306
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6308
    :cond_1
    :try_start_1
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 6309
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    if-gez p2, :cond_3

    .line 6312
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6314
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6316
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

.method public setBackgroundActivityStartCallback(Lcom/android/server/wm/BackgroundActivityStartCallback;)V
    .locals 0

    .line 6115
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmBackgroundActivityStartCallback(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/BackgroundActivityStartCallback;)V

    return-void
.end method

.method public setCompanionAppUids(ILjava/util/Set;)V
    .locals 1

    .line 7445
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7446
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmCompanionAppUidsMap(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setDeviceOwnerUid(I)V
    .locals 1

    .line 7431
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7432
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setDeviceOwnerUid(I)V

    .line 7433
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setProfileApp(Ljava/lang/String;)V
    .locals 1

    .line 7381
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7382
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 7383
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setProfileOwnerUids(Ljava/util/Set;)V
    .locals 1

    .line 7438
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7439
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setProfileOwnerUids(Ljava/util/Set;)V

    .line 7440
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setProfileProc(Lcom/android/server/wm/WindowProcessController;)V
    .locals 1

    .line 7388
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7389
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 7390
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setProfilerInfo(Landroid/app/ProfilerInfo;)V
    .locals 1

    .line 7395
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7396
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 7397
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setVr2dDisplayId(I)V
    .locals 5

    .line 6229
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v0, p1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0xf972baf3b14cee3L    # -3.083842131713187E233

    const/4 v1, 0x1

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6230
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6231
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 6232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final shouldShowDialogsForVisibleBackgroundUserLocked(I)Z
    .locals 2

    .line 7368
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7371
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result p1

    .line 7372
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 7376
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mshouldShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Z)Z

    move-result p0

    return p0
.end method

.method public showStrictModeViolationDialog()Z
    .locals 2

    .line 6457
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6458
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 6459
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public showSystemReadyErrorDialogsIfNeeded()V
    .locals 6

    const-wide/16 v0, 0x20

    .line 6464
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6465
    const-string v2, "showSystemReadyErrorDialogs"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6469
    :cond_0
    invoke-static {}, Landroid/os/Build;->isBuildConsistent()Z

    move-result v2

    .line 6470
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 6472
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->hasSystemUidErrors()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6473
    const-string v4, "ActivityTaskManager"

    const-string v5, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6475
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    new-instance v5, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 6493
    :try_start_1
    const-string v2, "ActivityTaskManager"

    const-string v4, "Build fingerprint is not consistent, warning user"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6494
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6508
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6509
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 6508
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shuttingDown(ZI)Z
    .locals 3

    .line 6431
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 6432
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->prepareShutdown()V

    .line 6433
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6434
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->prepareForShutdown()V

    .line 6435
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateEventDispatchingLocked(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    .line 6436
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 6437
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->shutdownLocked(I)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 6438
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startActivitiesAsPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 12

    move-object/from16 v4, p4

    .line 6128
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6129
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/String;

    .line 6135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, 0x0

    move v3, v0

    .line 6138
    :goto_0
    :try_start_0
    array-length v6, v4

    if-ge v3, v6, :cond_0

    .line 6139
    aget-object v6, v4, v3

    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 6140
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 6143
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/32 v6, 0x10000000

    invoke-interface {v3, p1, v6, v7, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6148
    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v0

    goto :goto_2

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6149
    throw p0

    .line 6151
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 6152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 6153
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    move-object/from16 v3, p5

    .line 6156
    invoke-static {v3, v0, v2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    .line 6153
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(ILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result p0

    return p0
.end method

.method public startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 16

    move-object/from16 v0, p0

    .line 6167
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 6168
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I
    .locals 14

    .line 6193
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 6195
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    move-object/from16 v4, p4

    invoke-virtual {v4, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    .line 6193
    invoke-static/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mstartActivityAsUser(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result p0

    return p0
.end method

.method public startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .locals 21

    move-object/from16 v0, p0

    .line 6181
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 6182
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move/from16 v20, p18

    invoke-virtual/range {v2 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method public startActivityWithScreenshot(Landroid/content/Intent;Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 7

    .line 6204
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 6205
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 6206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string v6, "startActivityWithScreenshot"

    const/4 v3, 0x0

    move v2, p7

    .line 6204
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result p7

    .line 6208
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v1, "startActivityWithScreenshot"

    .line 6209
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 6210
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 6211
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 6212
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 6213
    invoke-virtual {p1, p5}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6214
    invoke-static {p0, p6}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mcreateSafeActivityOptionsWithBalAllowed(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 6215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 6216
    invoke-virtual {p0, p7}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    const/4 p1, 0x1

    .line 6217
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setAllowBalExemptionForSystemProcess(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 6218
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setFreezeScreen(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 6219
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    return p0
.end method

.method public startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    .line 6900
    const-string v0, "startConfirmDeviceCredentialIntent"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6902
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6903
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v3, 0x10800000

    .line 6905
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 6907
    new-instance v3, Landroid/app/ActivityOptions;

    invoke-direct {v3, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 6908
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6911
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6913
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 6911
    :goto_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6912
    throw p0

    .line 6913
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startDreamActivity(Landroid/content/Intent;II)Landroid/app/IAppTask;
    .locals 0

    .line 6294
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mstartDreamActivityInternal(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Intent;II)Landroid/app/IAppTask;

    move-result-object p0

    return-object p0
.end method

.method public startHomeActivity(ILjava/lang/String;)Z
    .locals 2

    .line 6670
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6671
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 6672
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startHomeOnAllDisplays(ILjava/lang/String;)Z
    .locals 1

    .line 6686
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6687
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnAllDisplays(ILjava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 6688
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startHomeOnDisplay(ILjava/lang/String;IZZ)Z
    .locals 8

    .line 6678
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 6679
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    move-result p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 6681
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public switchUser(ILcom/android/server/am/UserState;)Z
    .locals 1

    .line 7190
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7191
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->switchUser(ILcom/android/server/am/UserState;)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 7192
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public unregisterActivityStartInterceptor(I)V
    .locals 3

    .line 7524
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 7525
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmActivityInterceptorCallbacks(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7529
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmActivityInterceptorCallbacks(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7530
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 7526
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityInterceptorCallback with id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7530
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateTopComponentForFactoryTest()V
    .locals 6

    .line 6693
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6694
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 6695
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6697
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.FACTORY_TEST"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    .line 6698
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6701
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 6702
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6703
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 6704
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v5, "android.intent.action.FACTORY_TEST"

    iput-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 6705
    iput-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    .line 6706
    new-instance v5, Landroid/content/ComponentName;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    move-object v1, v2

    goto :goto_0

    .line 6709
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040422

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 6713
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040421

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    .line 6717
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6720
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 6721
    iput-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    .line 6722
    iput-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    .line 6723
    iget-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6728
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateUserConfiguration()V
    .locals 9

    .line 7323
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 7324
    :try_start_0
    new-instance v3, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 7325
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v7

    .line 7326
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 7327
    invoke-static {v2}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v2

    .line 7326
    invoke-static {v0, v3, v7, v2}, Landroid/provider/Settings$System;->adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V

    .line 7328
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    .line 7331
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public useTopSchedGroupForTopProcess()Z
    .locals 0

    .line 6396
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public writeActivitiesToProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    .line 6918
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6920
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-wide v1, 0x10b00000002L

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 6922
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public writeProcessesToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IZ)V
    .locals 8

    .line 7073
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const-wide v1, 0x10900000001L

    if-nez p2, :cond_3

    .line 7075
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const-wide v4, 0x10b00000013L

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7076
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7078
    iget-boolean v3, v3, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    const-wide v4, 0x10800000015L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 7080
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mwriteSleepStateToProto(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/util/proto/ProtoOutputStream;IZ)V

    .line 7081
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p3, :cond_1

    const-wide p3, 0x10b0000001cL

    .line 7082
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p3

    .line 7084
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 7085
    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionSession;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7084
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7086
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/PowerManager$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7088
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7090
    :cond_1
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    const-wide v3, 0x10b0000001dL

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/wm/VrController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7092
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz p3, :cond_2

    const-wide p3, 0x10b00000025L

    .line 7093
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p3

    .line 7094
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 7095
    invoke-interface {v3}, Landroid/app/IActivityController;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7094
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7096
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7097
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7099
    :cond_2
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide v3, 0x10b0000002fL

    invoke-virtual {p3, p1, v3, v4}, Landroid/os/PowerManager$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7100
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide v3, 0x10b00000030L

    invoke-virtual {p3, p1, v3, v4}, Landroid/os/PowerManager$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7104
    :cond_3
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz p3, :cond_5

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 7105
    invoke-virtual {p3, p2}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 7106
    :cond_4
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const-wide v3, 0x10b0000000fL

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/wm/WindowProcessController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7109
    :cond_5
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz p3, :cond_7

    if-eqz p2, :cond_6

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 7110
    invoke-virtual {p3, p2}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 7111
    :cond_6
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    const-wide v3, 0x10b00000010L

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/wm/WindowProcessController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7112
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmPreviousProcessVisibleTime(Lcom/android/server/wm/ActivityTaskManagerService;)J

    move-result-wide p3

    const-wide v3, 0x10300000011L

    invoke-virtual {p1, v3, v4, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7115
    :cond_7
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz p3, :cond_9

    if-eqz p2, :cond_8

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 7116
    invoke-virtual {p3, p2}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 7117
    :cond_8
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    const-wide v3, 0x10b00000012L

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/wm/WindowProcessController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7121
    :cond_9
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p3}, Lcom/android/server/wm/CompatModePackages;->getPackages()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_a
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 7122
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7123
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eqz p2, :cond_b

    .line 7124
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_b
    const-wide v4, 0x20b00000016L

    .line 7125
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7126
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10500000002L

    .line 7127
    invoke-virtual {p1, v6, v7, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7128
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1

    .line 7132
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz p0, :cond_d

    const-wide p2, 0x10b0000001fL

    const/4 p4, 0x1

    .line 7133
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppTimeTracker;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 7136
    :cond_d
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
