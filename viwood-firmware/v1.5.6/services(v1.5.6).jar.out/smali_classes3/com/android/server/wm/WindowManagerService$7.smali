.class public Lcom/android/server/wm/WindowManagerService$7;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1371
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .locals 0

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 3

    .line 1379
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1380
    :try_start_0
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1381
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmAnimationsDisabled(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mAllowAnimationsInLowPowerMode:Z

    if-nez v2, :cond_0

    .line 1382
    invoke-static {v1, p1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmAnimationsDisabled(Lcom/android/server/wm/WindowManagerService;Z)V

    .line 1383
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1385
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
