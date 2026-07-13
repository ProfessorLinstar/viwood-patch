.class Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field public final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v1}, Lcom/android/server/wm/TaskOrganizerController;->-$$Nest$fgetmTaskOrganizerStates(Lcom/android/server/wm/TaskOrganizerController;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 88
    invoke-interface {p0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 87
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 92
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
