.class public Lcom/android/server/wm/TransitionController$Lock;
.super Ljava/lang/Object;
.source "TransitionController.java"


# instance fields
.field public mTransitionWaiters:I

.field public final synthetic this$0:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TransitionController;)V
    .locals 0

    .line 1828
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1829
    iput p1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    return-void
.end method


# virtual methods
.method public doNotifyLocked()V
    .locals 1

    .line 1859
    monitor-enter p0

    .line 1860
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    if-lez v0, :cond_0

    .line 1861
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1863
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runWhenIdle(JLjava/lang/Runnable;)V
    .locals 5

    .line 1831
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1832
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1833
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1834
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 1836
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 1837
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 1841
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 1842
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_1

    goto :goto_2

    .line 1847
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1848
    monitor-enter p0

    .line 1850
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1854
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 1852
    :catch_0
    monitor-exit p0

    return-void

    .line 1854
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p0

    goto :goto_3

    .line 1843
    :cond_2
    :goto_2
    :try_start_5
    iget p1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 1844
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1845
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1847
    :goto_3
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1837
    :goto_4
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
