.class public Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;
.super Ljava/lang/Object;
.source "BackNavigationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$fgetmWindowManagerService(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    .line 757
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;->this$1:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorTransition()V

    .line 758
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
