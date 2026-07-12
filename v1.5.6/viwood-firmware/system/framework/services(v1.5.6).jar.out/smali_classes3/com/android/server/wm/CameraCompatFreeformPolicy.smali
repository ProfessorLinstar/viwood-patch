.class public final Lcom/android/server/wm/CameraCompatFreeformPolicy;
.super Ljava/lang/Object;
.source "CameraCompatFreeformPolicy.java"

# interfaces
.implements Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;
.implements Lcom/android/server/wm/ActivityRefresher$Evaluator;


# instance fields
.field public final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field public final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field public mCameraTask:Lcom/android/server/wm/Task;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mIsRunning:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 86
    iput-object p2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 87
    iput-object p3, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    return-void
.end method

.method public static isDisplayRotationPortrait(I)Z
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public canCameraBeClosed(Ljava/lang/String;)Z
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getTopActivityFromCameraTask()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isActivityForCameraIdRefreshing(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v2, -0x1faf14ed0744c1d7L    # -9.073470276292075E155

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public dispose()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraStateMonitor;->removeCameraStateListener(Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->removeEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsRunning:Z

    return-void
.end method

.method public getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 245
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getCameraCompatAspectRatio()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 3

    const/4 v0, 0x1

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    .line 259
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 260
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v2

    if-le v1, v2, :cond_4

    const/4 v1, 0x2

    if-ne p0, v0, :cond_2

    .line 266
    iget p0, p1, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isDisplayRotationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v1

    :cond_2
    if-ne p0, v1, :cond_4

    .line 272
    iget p0, p1, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isDisplayRotationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    return v0
.end method

.method public final getTopActivityFromCameraTask()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 325
    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final haveCameraCompatAttributesChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 6

    .line 124
    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide p0

    const-wide/16 v0, 0x2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/16 v4, 0x80

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    move p0, p2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return p2
.end method

.method public final isActivityForCameraIdRefreshing(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->isCameraWithIdRunningForActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isRefreshRequested()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 224
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldApplyFreeformTreatmentForCameraCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public isInFreeformCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsRunning:Z

    return p0
.end method

.method public isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 2

    .line 309
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    .line 310
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldApplyFreeformTreatmentForCameraCompat()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 317
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p0

    const/4 p2, 0x5

    if-eq p0, p2, :cond_1

    .line 318
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p0

    const/16 p2, 0xe

    if-eq p0, p2, :cond_1

    .line 320
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onCameraClosed()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getTopActivityFromCameraTask()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 173
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->updateAndDispatchCameraConfiguration()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method public onCameraOpened(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->updateAndDispatchCameraConfiguration()V

    return-void
.end method

.method public shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isInFreeformCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideMinAspectRatioForCameraEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 1

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->haveCameraCompatAttributesChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public start()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraStateMonitor;->addCameraStateListener(Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->addEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsRunning:Z

    return-void
.end method

.method public final updateAndDispatchCameraConfiguration()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getTopActivityFromCameraTask()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 185
    iget-object v2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->updateCompatibilityInfo(Lcom/android/server/wm/ActivityRecord;)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    return-void

    .line 189
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public final updateCompatibilityInfo(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 194
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 195
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    .line 197
    invoke-static {p0}, Landroid/app/CameraCompatTaskInfo;->getDisplayRotationFromCameraCompatMode(I)I

    move-result p0

    iput p0, v0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    .line 201
    :try_start_0
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 204
    :catch_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v0, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, -0x22ee5aa881bfcabbL    # -2.101362514846833E140

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
