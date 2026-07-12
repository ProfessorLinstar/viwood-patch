.class public Lcom/android/server/wm/RemoteDisplayChangeController$1;
.super Landroid/view/IDisplayChangeWindowCallback$Stub;
.source "RemoteDisplayChangeController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

.field public final synthetic val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;


# direct methods
.method public static synthetic $r8$lambda$jbxhuxi0g9KRlvDyb9BRGTABwRI(Lcom/android/server/wm/RemoteDisplayChangeController$1;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RemoteDisplayChangeController$1;->lambda$continueDisplayChange$0(Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RemoteDisplayChangeController;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    iput-object p2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    invoke-direct {p0}, Landroid/view/IDisplayChangeWindowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public continueDisplayChange(Landroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteDisplayChangeController;->-$$Nest$fgetmService(Lcom/android/server/wm/RemoteDisplayChangeController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-static {v1}, Lcom/android/server/wm/RemoteDisplayChangeController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/RemoteDisplayChangeController;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 196
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-static {v1}, Lcom/android/server/wm/RemoteDisplayChangeController;->-$$Nest$fgetmService(Lcom/android/server/wm/RemoteDisplayChangeController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    new-instance v3, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RemoteDisplayChangeController$1;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    iget-object p1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-static {p1}, Lcom/android/server/wm/RemoteDisplayChangeController;->-$$Nest$fgetmService(Lcom/android/server/wm/RemoteDisplayChangeController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-static {v1}, Lcom/android/server/wm/RemoteDisplayChangeController;->-$$Nest$fgetmTimeoutRunnable(Lcom/android/server/wm/RemoteDisplayChangeController;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->val$callback:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 199
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$continueDisplayChange$0(Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RemoteDisplayChangeController;->continueDisplayChange(Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
