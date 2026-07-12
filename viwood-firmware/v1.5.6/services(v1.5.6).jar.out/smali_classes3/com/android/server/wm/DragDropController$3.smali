.class public Lcom/android/server/wm/DragDropController$3;
.super Landroid/window/IUnhandledDragCallback$Stub;
.source "DragDropController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragDropController;

.field public final synthetic val$traceCookie:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragDropController;I)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/android/server/wm/DragDropController$3;->this$0:Lcom/android/server/wm/DragDropController;

    iput p2, p0, Lcom/android/server/wm/DragDropController$3;->val$traceCookie:I

    invoke-direct {p0}, Landroid/window/IUnhandledDragCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUnhandledDropComplete(Z)V
    .locals 3

    .line 430
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Unhandled listener finished handling DROP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$3;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v0}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmService(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$3;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DragDropController;->onUnhandledDropCallback(Z)V

    .line 433
    const-string p1, "DragDropController#notifyUnhandledDrop"

    iget p0, p0, Lcom/android/server/wm/DragDropController$3;->val$traceCookie:I

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, p1, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 435
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
