.class public Lcom/android/server/wm/CameraStateMonitor$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraStateMonitor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CameraStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CameraStateMonitor;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-static {v0}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$fgetmWmService(Lcom/android/server/wm/CameraStateMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-static {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$mnotifyCameraClosedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V

    .line 99
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

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-static {v0}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$fgetmWmService(Lcom/android/server/wm/CameraStateMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$mnotifyCameraOpenedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
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
