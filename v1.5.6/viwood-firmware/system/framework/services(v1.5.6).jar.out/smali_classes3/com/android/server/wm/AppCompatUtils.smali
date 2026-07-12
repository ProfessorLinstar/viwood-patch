.class public abstract Lcom/android/server/wm/AppCompatUtils;
.super Ljava/lang/Object;
.source "AppCompatUtils.java"


# direct methods
.method public static synthetic $r8$lambda$L9SqUNqcwkBnFgT--g2ID_uX7xA(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getScreenResolvedBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1

    .line 279
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->getExpandedTaskbarOrNull(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 282
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public static asLazy(Ljava/util/function/BooleanSupplier;)Ljava/util/function/BooleanSupplier;
    .locals 1

    .line 57
    new-instance v0, Lcom/android/server/wm/AppCompatUtils$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppCompatUtils$1;-><init>(Ljava/util/function/BooleanSupplier;)V

    return-object v0
.end method

.method public static clearAppCompatTaskInfo(Landroid/app/AppCompatTaskInfo;)V
    .locals 2

    const/4 v0, -0x1

    .line 300
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 301
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 302
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 303
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 304
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    .line 306
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    .line 308
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->clearTopActivityFlags()V

    return-void
.end method

.method public static computeAspectRatio(Landroid/graphics/Rect;)F
    .locals 2

    .line 76
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static fillAppCompatTaskInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    .line 138
    iget-object v0, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    .line 139
    invoke-static {v0}, Lcom/android/server/wm/AppCompatUtils;->clearAppCompatTaskInfo(Landroid/app/AppCompatTaskInfo;)V

    if-nez p2, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 145
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object v1

    .line 146
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, p0, :cond_1

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 147
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-ne v5, p0, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    .line 149
    :goto_1
    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setTopActivityInSizeCompat(Z)V

    .line 151
    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 152
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatConfiguration;->isTranslucentLetterboxingEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setTopActivityInSizeCompat(Z)V

    :cond_3
    if-eqz v2, :cond_4

    .line 157
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 158
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isEligibleForLetterboxEducation()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    .line 157
    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/AppCompatTaskInfo;->setEligibleForLetterboxEducation(Z)V

    .line 160
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 161
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->isLetterboxEducationEnabled()Z

    move-result v2

    .line 160
    invoke-virtual {v0, v2}, Landroid/app/AppCompatTaskInfo;->setLetterboxEducationEnabled(Z)V

    .line 164
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 165
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->isRestartMenuEnabledForDisplayMove()Z

    move-result v2

    .line 164
    invoke-virtual {v0, v2}, Landroid/app/AppCompatTaskInfo;->setRestartMenuEnabledForDisplayMove(Z)V

    .line 167
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 168
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserFullscreenOverride()Z

    move-result v5

    .line 169
    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setUserFullscreenOverrideEnabled(Z)V

    .line 172
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isSystemOverrideToFullscreenEnabled()Z

    move-result v5

    .line 171
    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setSystemFullscreenOverrideEnabled(Z)V

    .line 174
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isFromDoubleTap()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setIsFromLetterboxDoubleTap(Z)V

    .line 176
    iget-object v5, v0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-static {p2}, Lcom/android/server/wm/AppCompatUtils;->getAppBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 177
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v5

    .line 178
    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setTopActivityLetterboxed(Z)V

    if-eqz v5, :cond_8

    .line 180
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 181
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 182
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 184
    iput-object v5, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    .line 188
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isLetterboxDoubleTapEducationEnabled()Z

    move-result v5

    .line 187
    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    .line 189
    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 190
    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityPillarboxShaped()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 191
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->allowHorizontalReachabilityForThinLetterbox()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 195
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getLetterboxPositionForHorizontalReachability()I

    move-result v1

    iput v1, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    goto :goto_3

    .line 197
    :cond_5
    invoke-virtual {v0, v4}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    goto :goto_3

    .line 200
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->allowVerticalReachabilityForThinLetterbox()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 203
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getLetterboxPositionForVerticalReachability()I

    move-result v1

    iput v1, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    goto :goto_3

    .line 205
    :cond_7
    invoke-virtual {v0, v4}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    .line 211
    :cond_8
    :goto_3
    iget-boolean p1, p1, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    if-nez p1, :cond_9

    .line 212
    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result p1

    if-nez p1, :cond_9

    .line 213
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldEnableUserAspectRatioSettings()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    move v3, v4

    .line 214
    :goto_4
    invoke-virtual {v0, v3}, Landroid/app/AppCompatTaskInfo;->setEligibleForUserAspectRatioButton(Z)V

    .line 215
    iget-object p1, v0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 216
    invoke-static {p2}, Lcom/android/server/wm/AppCompatCameraPolicy;->getCameraCompatFreeformMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    iput v1, p1, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    .line 217
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 218
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getDesktopAspectRatioPolicy()Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->hasMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result p0

    .line 217
    invoke-virtual {v0, p0}, Landroid/app/AppCompatTaskInfo;->setHasMinAspectRatioOverride(Z)V

    .line 219
    iget-boolean p0, p2, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    invoke-virtual {v0, p0}, Landroid/app/AppCompatTaskInfo;->setOptOutEdgeToEdge(Z)V

    return-void
.end method

.method public static getAppBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/android/server/wm/TransparentPolicy;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 127
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 128
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getExpandedTaskbarOrNull(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsSource;
    .locals 4

    .line 257
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 259
    invoke-virtual {p0, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    .line 261
    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLetterboxReasonString(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;)Ljava/lang/String;
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string p0, "SIZE_COMPAT_MODE"

    return-object p0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 235
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const-string p0, "FIXED_ORIENTATION"

    return-object p0

    .line 239
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    const-string p0, "DISPLAY_CUTOUT"

    return-object p0

    .line 242
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForAspectRatioOnly()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 243
    const-string p0, "ASPECT_RATIO"

    return-object p0

    .line 245
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->isLetterboxedForSafeRegionOnlyAllowed()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 247
    const-string p0, "SAFE_REGION"

    return-object p0

    .line 249
    :cond_4
    const-string p0, "UNKNOWN_REASON"

    return-object p0
.end method

.method public static isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->isDisplayIgnoreActivitySizeRestrictions(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDisplayIgnoreActivitySizeRestrictions(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isDisplayIgnoreActivitySizeRestrictions()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInDesktopMode(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 296
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInVrUiMode(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 89
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static offsetBounds(Landroid/content/res/Configuration;II)V
    .locals 1

    .line 287
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 288
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method
