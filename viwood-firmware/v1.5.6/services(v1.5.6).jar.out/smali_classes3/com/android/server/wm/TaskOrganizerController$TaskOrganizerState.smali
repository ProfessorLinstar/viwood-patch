.class Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

.field public final mOrganizedTasks:Ljava/util/ArrayList;

.field public final mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

.field public final mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOrganizedTasks(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingEventsQueue(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$maddTask(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->addTask(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveTask(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;Z)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeTask(Lcom/android/server/wm/Task;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V
    .locals 1

    .line 332
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 333
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-direct {v0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;-><init>(Landroid/window/ITaskOrganizer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 334
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    .line 335
    new-instance p1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    invoke-direct {p1, p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    .line 337
    :try_start_0
    invoke-interface {p2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    const-string p1, "TaskOrganizerController"

    const-string p2, "TaskOrganizer failed to register death recipient"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mUid:I

    return-void
.end method


# virtual methods
.method public final addTask(Lcom/android/server/wm/Task;)Z
    .locals 2

    .line 367
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->taskAppearedReady()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 376
    iput-boolean p0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    return p0

    :cond_2
    return v1
.end method

.method public addTaskWithoutCallback(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 1

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->prepareLeash(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public dispose()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmTaskOrganizers(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object v1, v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 404
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 406
    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->removeImmediately()V

    goto :goto_1

    .line 411
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState()Z

    .line 413
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeTask(Lcom/android/server/wm/Task;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v1, p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$monTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController;Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)V

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v1}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmService(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->clearPendingTaskEvents()V

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmTaskOrganizerStates(Lcom/android/server/wm/TaskOrganizerController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDeathRecipient()Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    return-object p0
.end method

.method public getPendingEventsQueue()Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    return-object p0
.end method

.method public final removeTask(Lcom/android/server/wm/Task;Z)Z
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmInterceptBackPressedOnRootTasks(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashSet;

    move-result-object v0

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 385
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    :cond_0
    const/4 v1, 0x0

    .line 390
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    :cond_1
    if-eqz p2, :cond_2

    .line 393
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmService(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(Lcom/android/server/wm/Task;)V

    :cond_2
    return v0
.end method

.method public unlinkDeath()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
