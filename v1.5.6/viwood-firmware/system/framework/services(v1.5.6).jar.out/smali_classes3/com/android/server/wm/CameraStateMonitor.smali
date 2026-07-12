.class public Lcom/android/server/wm/CameraStateMonitor;
.super Ljava/lang/Object;
.source "CameraStateMonitor.java"


# instance fields
.field public final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public final mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

.field public final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mCameraStateListeners:Ljava/util/ArrayList;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mHandler:Landroid/os/Handler;

.field public mIsRunning:Z

.field public final mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

.field public final mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$Sx_Pw105YKRcPHfVXUbFh0gANaw(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->lambda$scheduleRemoveCameraId$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V8nUmQymT5WLbcPRpXx3WqcGirI(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->lambda$notifyCameraOpenedWithDelay$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$grNRDeY7_yfA2jFaLh_oaaHYMjA(Ljava/lang/String;Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 280
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 282
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmWmService(Lcom/android/server/wm/CameraStateMonitor;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyCameraClosedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->notifyCameraClosedWithDelay(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyCameraOpenedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->notifyCameraOpenedWithDelay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/os/Handler;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    invoke-direct {v0}, Lcom/android/server/wm/CameraIdPackageNameBiMapping;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lcom/android/server/wm/CameraStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CameraStateMonitor$1;-><init>(Lcom/android/server/wm/CameraStateMonitor;)V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 106
    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 108
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 109
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method


# virtual methods
.method public addCameraStateListener(Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final checkCanCloseForAllListeners(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 249
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;

    invoke-interface {v2, p1}, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;->canCameraBeClosed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public dispose()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_0
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mIsRunning:Z

    return-void
.end method

.method public final findUniqueActivityWithPackageName(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 286
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    const-string v2, "WindowManager"

    if-eqz p0, :cond_1

    .line 287
    const-string p0, "Cannot find camera activity."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 291
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_2

    .line 292
    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0

    .line 297
    :cond_2
    const-string p0, "Cannot determine which activity opened camera."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->getCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " CameraIdPackageNameBiMapping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    .line 304
    invoke-virtual {p0}, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCameraWithIdRunningForActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 0

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mIsRunning:Z

    return p0
.end method

.method public final synthetic lambda$notifyCameraOpenedWithDelay$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->notifyCameraOpenedInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$scheduleRemoveCameraId$1(Ljava/lang/String;)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->removeCameraId(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyCameraClosedWithDelay(Ljava/lang/String;)V
    .locals 5

    .line 190
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x346191b45817c013L    # -1.8654051817180032E56

    invoke-static {v4, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->scheduleRemoveCameraId(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyCameraOpenedInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 163
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p2}, Lcom/android/server/wm/CameraStateMonitor;->findUniqueActivityWithPackageName(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->notifyListenersCameraOpened(Lcom/android/server/wm/ActivityRecord;)V

    .line 173
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 170
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 173
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyCameraOpenedWithDelay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x70a1ee89665f30c5L    # 3.5634456542814795E234

    invoke-static {v5, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final notifyListenersCameraClosed()V
    .locals 2

    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;

    invoke-interface {v1}, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;->onCameraClosed()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyListenersCameraOpened(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    const/4 v0, 0x0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;

    .line 179
    invoke-interface {v1, p1}, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;->onCameraOpened(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeCameraId(Ljava/lang/String;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 232
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->checkCanCloseForAllListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->removeCameraId(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/server/wm/CameraStateMonitor;->notifyListenersCameraClosed()V

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->rescheduleRemoveCameraActivity(Ljava/lang/String;)V

    .line 242
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeCameraStateListener(Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rescheduleRemoveCameraActivity(Ljava/lang/String;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->scheduleRemoveCameraId(Ljava/lang/String;)V

    return-void
.end method

.method public final scheduleRemoveCameraId(Ljava/lang/String;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startListeningToCameraState()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/CameraStateMonitor;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_0
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mIsRunning:Z

    return-void
.end method
