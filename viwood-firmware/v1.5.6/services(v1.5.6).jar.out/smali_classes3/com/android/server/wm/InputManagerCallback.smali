.class public final Lcom/android/server/wm/InputManagerCallback;
.super Ljava/lang/Object;
.source "InputManagerCallback.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field public mInputDevicesReady:Z

.field public final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field public mInputDispatchEnabled:Z

.field public mInputDispatchFrozen:Z

.field public mInputFreezeReason:Ljava/lang/String;

.field public mLastInputConfigurationSources:Landroid/util/SparseIntArray;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$ThltoToBcsDX3ERz41-pSRxb0qc(Lcom/android/server/wm/InputManagerCallback;Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputManagerCallback;->lambda$notifyPointerLocationChanged$0(Lcom/android/server/wm/DisplayPolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public createSurfaceForGestureMonitor(Ljava/lang/String;I)Landroid/view/SurfaceControl;
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 326
    const-string p0, "WindowManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create a gesture monitor on display: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " - DisplayContent not found."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 330
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_1

    .line 332
    const-string p0, "WindowManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create a gesture monitor on display: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " - Input overlay layer is not initialized."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 336
    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 337
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 338
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string p1, "createSurfaceForGestureMonitor"

    .line 339
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 340
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string p1, "InputManagerCallback.createSurfaceForGestureMonitor"

    .line 341
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 342
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 343
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mInputFreezeReason="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getParentSurfaceForPointers(I)Landroid/view/SurfaceControl;
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 312
    const-string p0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get parent surface for pointers on display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - DisplayContent not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 316
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 317
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getPointerDisplayId()I
    .locals 7

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 267
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_4

    .line 268
    iget-object v4, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 269
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->state:I

    if-ne v5, v2, :cond_1

    goto :goto_1

    .line 275
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    .line 276
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :cond_2
    if-nez v3, :cond_3

    .line 280
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 286
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 287
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getPointerLayer()I
    .locals 1

    .line 251
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v0, 0x7e2

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x2710

    add-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result p0

    return p0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IIIJI)I
    .locals 7

    .line 225
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/policy/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(IIIJI)I

    move-result p0

    return p0
.end method

.method public interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public isKeyguardLocked(I)Z
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 350
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$notifyPointerLocationChanged$0(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 5

    .line 130
    const-string v0, "notifyConfigurationChanged"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/InputManagerCallback;->updateLastInputConfigurationSources()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 137
    :try_start_0
    const-string v3, "inputDeviceConfigChanged"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 139
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v3

    .line 144
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 148
    :cond_2
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 148
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 140
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public notifyDropWindow(Landroid/os/IBinder;FF)V
    .locals 2

    .line 303
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 303
    invoke-static {v1, p1, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    .line 297
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 297
    invoke-static {v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyInputChannelBroken(Landroid/os/IBinder;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_1

    .line 95
    const-string p1, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WINDOW DIED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 98
    :cond_1
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

.method public notifyLidSwitchChanged(JZ)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    return-void
.end method

.method public notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V
    .locals 2

    .line 110
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    const-string v1, "Application does not have a focused window"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InputManagerCallback;->timeoutMessage(Ljava/util/OptionalInt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/android/internal/os/TimeoutRecord;->forInputDispatchNoFocusedWindow(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    .line 111
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AnrController;->notifyAppUnresponsive(Landroid/view/InputApplicationHandle;Lcom/android/internal/os/TimeoutRecord;)V

    return-void
.end method

.method public notifyPointerLocationChanged(Z)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 194
    iget-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InputManagerCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 197
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

.method public notifyWindowResponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AnrController;->notifyWindowResponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;)V

    return-void
.end method

.method public notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/InputManagerCallback;->timeoutMessage(Ljava/util/OptionalInt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 117
    invoke-static {p3}, Lcom/android/internal/os/TimeoutRecord;->forInputDispatchWindowUnresponsive(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p3

    .line 119
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;Lcom/android/internal/os/TimeoutRecord;)V

    return-void
.end method

.method public onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .locals 1

    .line 292
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 2

    .line 394
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_1

    .line 395
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting event dispatching to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    .line 400
    invoke-virtual {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    :cond_1
    return-void
.end method

.method public final timeoutMessage(Ljava/util/OptionalInt;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    .line 409
    const-string p0, "Input dispatching timed out."

    goto :goto_0

    .line 410
    :cond_0
    const-string p0, "Input dispatching timed out (%s)."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 411
    :goto_0
    invoke-virtual {p1}, Ljava/util/OptionalInt;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 415
    :cond_1
    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    invoke-static {p1}, Landroid/view/SurfaceControl;->getStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_1
    return-object p0

    .line 419
    :cond_2
    iget-object p2, p1, Landroid/gui/StalledTransactionInfo;->layerName:Ljava/lang/String;

    iget-wide v0, p1, Landroid/gui/StalledTransactionInfo;->bufferId:J

    .line 422
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p1, Landroid/gui/StalledTransactionInfo;->frameNumber:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p2, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 419
    const-string p1, "%s Buffer processing for the associated surface is stuck due to an unsignaled fence (window=%s, bufferId=0x%016X, frameNumber=%s). This potentially indicates a GPU hang."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateInputDispatchModeLw()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    iget-boolean p0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    return-void
.end method

.method public final updateLastInputConfigurationSources()Z
    .locals 12

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 156
    iget-object v2, p0, Lcom/android/server/wm/InputManagerCallback;->mLastInputConfigurationSources:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 158
    :goto_0
    array-length v6, v0

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v0, v7

    .line 159
    invoke-virtual {v8}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 160
    invoke-virtual {v8}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    .line 163
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 165
    invoke-virtual {v8}, Landroid/view/InputDevice;->getSources()I

    move-result v10

    mul-int/lit8 v10, v10, 0x1f

    .line 166
    invoke-virtual {v8}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v11

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x1f

    .line 167
    invoke-virtual {v8}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    move-result v11

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x1f

    .line 168
    invoke-virtual {v8}, Landroid/view/InputDevice;->isExternal()Z

    move-result v11

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x1f

    .line 169
    invoke-virtual {v8}, Landroid/view/InputDevice;->isEnabled()Z

    move-result v8

    add-int/2addr v10, v8

    .line 170
    invoke-virtual {v1, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz v2, :cond_2

    if-nez v5, :cond_2

    .line 172
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    if-eq v8, v10, :cond_2

    move v5, v4

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 178
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eq v0, v2, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    .line 181
    :goto_3
    iput-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mLastInputConfigurationSources:Landroid/util/SparseIntArray;

    return v4
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 358
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 362
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean p0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    monitor-exit v0

    return p0

    .line 363
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
