.class public Lcom/android/server/wm/InsetsPolicy$ControlTarget;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;
.implements Ljava/lang/Runnable;


# instance fields
.field public final mGlobalLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public final mInsetsController:Landroid/view/InsetsController;

.field public final mName:Ljava/lang/String;

.field public final mState:Landroid/view/InsetsState;

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V
    .locals 2

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    .line 761
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mHandler:Landroid/os/Handler;

    .line 762
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mGlobalLock:Ljava/lang/Object;

    .line 763
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 764
    new-instance p1, Landroid/view/InsetsController;

    new-instance v0, Lcom/android/server/wm/InsetsPolicy$Host;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/InsetsPolicy$Host;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    .line 765
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public notifyInsetsControlChanged(I)V
    .locals 0

    .line 770
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 777
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    .line 778
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    .line 779
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 784
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mName:Ljava/lang/String;

    return-object p0
.end method
