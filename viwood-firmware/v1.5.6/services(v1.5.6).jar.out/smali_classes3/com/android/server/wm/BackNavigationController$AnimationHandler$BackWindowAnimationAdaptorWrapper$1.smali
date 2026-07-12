.class public Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;
.super Landroid/window/IWindowlessStartingSurfaceCallback$Stub;
.source "BackNavigationController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

.field public final synthetic val$openTask:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1618
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;->val$openTask:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Landroid/window/IWindowlessStartingSurfaceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceAdded(Landroid/view/SurfaceControl;)V
    .locals 3

    .line 1630
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;->val$openTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1631
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmRequestedStartingSurfaceId(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1632
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    invoke-static {v1, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fputmStartingSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Landroid/view/SurfaceControl;)V

    .line 1633
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;->val$openTask:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 1634
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1636
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 1638
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
