.class public final Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
.super Ljava/lang/Object;
.source "StartingSurfaceController.java"


# instance fields
.field public final mTask:Lcom/android/server/wm/Task;

.field public final mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field public final synthetic this$0:Lcom/android/server/wm/StartingSurfaceController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTask:Lcom/android/server/wm/Task;

    .line 261
    iput-object p3, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    return-void
.end method


# virtual methods
.method public remove(ZZ)V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    invoke-static {v0}, Lcom/android/server/wm/StartingSurfaceController;->-$$Nest$fgetmService(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    invoke-static {v1}, Lcom/android/server/wm/StartingSurfaceController;->-$$Nest$fgetmService(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v2, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTask:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v1, v2, p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->removeStartingWindow(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;ZZ)V

    .line 275
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
