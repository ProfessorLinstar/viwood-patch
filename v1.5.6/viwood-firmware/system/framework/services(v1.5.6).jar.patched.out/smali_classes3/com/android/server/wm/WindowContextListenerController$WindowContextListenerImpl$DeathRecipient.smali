.class public Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowContextListenerController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContextListenerController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;-><init>(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fputmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;)V

    .line 390
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$munregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    .line 391
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

.method public linkToDeath()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmClientToken(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmClientToken(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
