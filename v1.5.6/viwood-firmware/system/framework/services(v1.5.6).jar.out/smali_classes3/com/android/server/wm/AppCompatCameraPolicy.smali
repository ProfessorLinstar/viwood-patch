.class public Lcom/android/server/wm/AppCompatCameraPolicy;
.super Ljava/lang/Object;
.source "AppCompatCameraPolicy.java"


# instance fields
.field final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field public final mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

.field final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field public final mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatTreatmentEnabledAtBuildTime()Z

    move-result v0

    .line 55
    sget-object v1, Landroid/window/DesktopModeFlags;->ENABLE_CAMERA_COMPAT_SIMULATE_REQUESTED_ORIENTATION:Landroid/window/DesktopModeFlags;

    .line 56
    invoke-virtual {v1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v1}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 69
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    .line 70
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 71
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    return-void

    .line 59
    :cond_2
    :goto_1
    new-instance v3, Lcom/android/server/wm/CameraStateMonitor;

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p2, v4}, Lcom/android/server/wm/CameraStateMonitor;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 60
    new-instance v4, Lcom/android/server/wm/ActivityRefresher;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v4, p1, v5}, Lcom/android/server/wm/ActivityRefresher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    if-eqz v0, :cond_3

    .line 62
    new-instance p1, Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-direct {p1, p2, v3, v4}, Lcom/android/server/wm/DisplayRotationCompatPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V

    goto :goto_2

    :cond_3
    move-object p1, v2

    .line 63
    :goto_2
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v1, :cond_4

    .line 65
    new-instance v2, Lcom/android/server/wm/CameraCompatFreeformPolicy;

    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/wm/CameraCompatFreeformPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V

    .line 66
    :cond_4
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    return-void
.end method

.method public static getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCameraCompatFreeformMode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1

    .line 268
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getCameraCompatMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .locals 3

    .line 250
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 259
    :goto_0
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result v1

    .line 262
    :cond_2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static isActivityEligibleForOrientationOverride(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 116
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isActivityEligibleForOrientationOverride(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    .line 228
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 232
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method public static isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    .line 198
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 133
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    .line 96
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/ActivityRefresher;->onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public static onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public static shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 209
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 213
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 184
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 188
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static shouldOverrideMinAspectRatioForCamera(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 279
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideMinAspectRatioForCameraEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->dispose()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->dispose()V

    .line 158
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    if-eqz p0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/server/wm/CameraStateMonitor;->dispose()V

    :cond_2
    return-void
.end method

.method public getOrientation()I
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->getOrientation()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasDisplayRotationCompatPolicy()Z
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onScreenRotationAnimationFinished()V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->onScreenRotationAnimationFinished()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->start()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->start()V

    .line 146
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    if-eqz p0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/server/wm/CameraStateMonitor;->startListeningToCameraState()V

    :cond_2
    return-void
.end method
