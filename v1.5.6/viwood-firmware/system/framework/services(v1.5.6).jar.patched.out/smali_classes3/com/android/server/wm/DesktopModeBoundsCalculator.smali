.class public abstract Lcom/android/server/wm/DesktopModeBoundsCalculator;
.super Ljava/lang/Object;
.source "DesktopModeBoundsCalculator.java"


# static fields
.field public static final DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

.field public static final DESKTOP_MODE_LANDSCAPE_APP_PADDING:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-string v0, "persist.wm.debug.desktop_mode_initial_bounds_scale"

    const/16 v1, 0x4b

    .line 51
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    .line 52
    const-string v0, "persist.wm.debug.desktop_mode_landscape_app_padding"

    const/16 v1, 0x19

    .line 53
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_LANDSCAPE_APP_PADDING:I

    return-void
.end method

.method public static calculateIdealSize(Landroid/graphics/Rect;F)Landroid/util/Size;
    .locals 1

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 316
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    .line 317
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public static calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;ZI)Landroid/graphics/Rect;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    .line 139
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 141
    sget v4, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    invoke-static {v3, v4}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateIdealSize(Landroid/graphics/Rect;F)Landroid/util/Size;

    move-result-object v4

    .line 142
    sget-object v5, Landroid/window/DesktopModeFlags;->ENABLE_WINDOWING_DYNAMIC_INITIAL_BOUNDS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v5}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    invoke-static {v4, v3}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v5

    .line 146
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    invoke-static {v4, v3}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 152
    :cond_1
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 153
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getDesktopAspectRatioPolicy()Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    move-result-object v5

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lt v6, v7, :cond_2

    move v6, v9

    goto :goto_0

    :cond_2
    move v6, v8

    .line 156
    :goto_0
    invoke-static {v1, v0, v6}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->getActivityConfigurationOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v1

    if-eq v6, v1, :cond_3

    move v7, v9

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 161
    :goto_1
    invoke-virtual {v5, v0, v7}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->calculateAspectRatio(Lcom/android/server/wm/Task;Z)F

    move-result v10

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    if-eq v6, v9, :cond_7

    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v6, v10, v15

    if-nez v6, :cond_5

    move v10, v14

    .line 171
    :cond_5
    invoke-static {v5, v0}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->canChangeAspectRatio(Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v7, :cond_c

    .line 175
    new-instance v0, Landroid/util/Size;

    div-float/2addr v12, v10

    add-float/2addr v12, v13

    float-to-int v1, v12

    .line 176
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    move-object v4, v0

    goto :goto_2

    .line 183
    :cond_6
    invoke-static {v1, v4, v10, v2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v4

    goto :goto_2

    .line 188
    :cond_7
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget v9, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_LANDSCAPE_APP_PADDING:I

    mul-int/2addr v9, v8

    sub-int/2addr v6, v9

    .line 190
    invoke-static {v5, v0}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->canChangeAspectRatio(Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v7, :cond_c

    cmpl-float v0, v10, v15

    if-nez v0, :cond_8

    sub-float v0, v11, v14

    div-float v10, v11, v0

    .line 197
    :cond_8
    new-instance v4, Landroid/util/Size;

    div-float/2addr v11, v10

    add-float/2addr v11, v13

    float-to-int v0, v11

    invoke-direct {v4, v6, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_2

    :cond_9
    cmpl-float v0, v10, v15

    if-nez v0, :cond_a

    move v10, v14

    :cond_a
    if-eqz v7, :cond_b

    .line 210
    new-instance v0, Landroid/util/Size;

    .line 211
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v0, v6, v4}, Landroid/util/Size;-><init>(II)V

    .line 210
    invoke-static {v1, v0, v10, v2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v4

    goto :goto_2

    .line 216
    :cond_b
    invoke-static {v1, v4, v10, v2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v4

    :cond_c
    :goto_2
    if-eqz p4, :cond_d

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v4, v1, v0}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->respectShellCascading(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 224
    :cond_d
    invoke-static {v4, v3}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static canChangeAspectRatio(Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;Lcom/android/server/wm/Task;)Z
    .locals 1

    .line 234
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->hasMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3ec00000    # 0.375f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 329
    new-instance v2, Landroid/graphics/Rect;

    .line 330
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object v2
.end method

.method public static getActivityConfigurationOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getDesktopAspectRatioPolicy()Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    move-result-object p0

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->shouldApplyUserMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 245
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xe

    if-eq v0, p0, :cond_1

    .line 247
    :cond_0
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 253
    :cond_2
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return p2
.end method

.method public static maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;
    .locals 2

    .line 269
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    .line 270
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    int-to-float p0, v0

    div-float/2addr p0, p2

    float-to-int p0, p0

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p1

    mul-float/2addr p0, p2

    goto :goto_1

    :cond_1
    int-to-float p0, v0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    if-gt p0, p1, :cond_2

    :goto_0
    move p1, p0

    goto :goto_2

    :cond_2
    int-to-float p0, p1

    div-float/2addr p0, p2

    :goto_1
    float-to-int v0, p0

    .line 306
    :goto_2
    new-instance p0, Landroid/util/Size;

    add-int/2addr v0, p3

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public static respectShellCascading(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    .line 343
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 344
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 345
    :goto_1
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    if-ne v4, v5, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    .line 346
    :goto_2
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_3

    move v2, v3

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 349
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 352
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 353
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    add-int/2addr p2, p0

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 358
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 360
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 361
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    add-int/2addr v2, p0

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 367
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 368
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 371
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-direct {p1, v0, v1, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 376
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 377
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 378
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v0, v1, p0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 383
    :cond_7
    invoke-static {p0, p1}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static updateInitialBounds(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Ljava/util/function/Consumer;)V
    .locals 10

    .line 72
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 75
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 76
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 80
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getFlexibleLaunchSize()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    if-eqz v6, :cond_2

    .line 83
    sget-object v3, Landroid/window/DesktopModeFlags;->ENABLE_CASCADING_WINDOWS:Landroid/window/DesktopModeFlags;

    .line 84
    invoke-virtual {v3}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eqz p2, :cond_3

    .line 85
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    iget-boolean v5, p2, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    .line 85
    invoke-static {v0, v3, v5}, Lcom/android/internal/policy/DesktopModeCompatUtils;->shouldExcludeCaptionFromAppBounds(Landroid/content/pm/ActivityInfo;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/SystemBarUtils;->getDesktopViewAppHeaderHeightPx(Landroid/content/Context;)I

    move-result v1

    :cond_3
    move v5, v1

    if-eqz p3, :cond_4

    .line 89
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez v6, :cond_4

    .line 91
    iget-object p0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inherit-from-options="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 93
    :cond_4
    const-string v7, "respecting option bounds cascaded position="

    if-eqz p1, :cond_7

    .line 94
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v8, v0, 0x70

    and-int/lit8 v9, v0, 0x7

    .line 96
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    iget-object p0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    sget p2, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    .line 98
    invoke-static {v2, p2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateIdealSize(Landroid/graphics/Rect;F)Landroid/util/Size;

    move-result-object p2

    .line 97
    invoke-static {v2, p1, p0, p2}, Lcom/android/server/wm/LaunchParamsUtil;->calculateLayoutBounds(Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;Landroid/util/Size;)V

    .line 99
    iget-object p0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v8, v9, p0, v2}, Lcom/android/server/wm/LaunchParamsUtil;->applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 101
    const-string p0, "layout specifies sizes, inheriting size and applying gravity"

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-gtz v8, :cond_6

    if-lez v9, :cond_8

    .line 103
    :cond_6
    iget-object p1, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;ZI)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    iget-object p0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v8, v9, p0, v2}, Lcom/android/server/wm/LaunchParamsUtil;->applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 107
    const-string p0, "layout specifies gravity, applying desired bounds and gravity"

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    .line 112
    iget-object p0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;ZI)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    const-string p0, "layout not specified, applying desired bounds"

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    .line 119
    iget-object p0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget-object p1, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    iget-object p0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v5

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 121
    const-string p0, "excluding caption height from app bounds"

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
