.class public final Lcom/android/server/wm/ActivityTaskManagerService$H;
.super Landroid/os/Handler;
.source "ActivityTaskManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 6007
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6008
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 6013
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_2

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-void

    .line 6028
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WindowProcessController;

    .line 6029
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6030
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    .line 6032
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const-wide/16 p0, 0x20

    .line 6033
    const-string v0, "finishWakefulnessAnimating"

    invoke-static {p0, p1, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 6032
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6020
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WindowProcessController;

    .line 6021
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6022
    :try_start_2
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowProcessController;->addAnimatingReason(I)V

    .line 6024
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6051
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 6052
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;)I

    move-result v0

    if-nez v0, :cond_3

    .line 6053
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_1

    .line 6055
    :cond_3
    :goto_0
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6037
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6038
    :try_start_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    .line 6039
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    .line 6040
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    const/16 v3, 0xc

    if-ne p1, v3, :cond_5

    .line 6043
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v2, v2, v1, v2}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_2

    :catchall_3
    move-exception p0

    goto :goto_3

    .line 6047
    :cond_5
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6015
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppTimeTracker;

    .line 6016
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    return-void
.end method
