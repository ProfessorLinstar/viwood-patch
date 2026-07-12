.class public Lcom/android/server/wm/AppCompatAspectRatioPolicy;
.super Ljava/lang/Object;
.source "AppCompatAspectRatioPolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatOverrides;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 64
    iput-object p2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 65
    iput-object p3, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 66
    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;-><init>(Lcom/android/server/wm/AppCompatAspectRatioPolicy-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    return-void
.end method


# virtual methods
.method public final applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z
    .locals 8

    .line 280
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v0

    .line 281
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 283
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result v3

    .line 284
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v1

    if-gez v6, :cond_0

    cmpg-float v6, v3, v1

    if-gez v6, :cond_0

    cmpg-float v6, p4, v1

    if-ltz v6, :cond_e

    .line 286
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 289
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/AppCompatUtils;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_e

    if-eqz v4, :cond_1

    .line 292
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_1
    sget-object v4, Landroid/window/DesktopModeFlags;->IGNORE_ASPECT_RATIO_RESTRICTIONS_FOR_RESIZEABLE_FREEFORM_ACTIVITIES:Landroid/window/DesktopModeFlags;

    .line 301
    invoke-virtual {v4}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 303
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 304
    invoke-static {v2}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_6

    .line 309
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 310
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 311
    invoke-static {p2}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v6

    cmpg-float v7, p4, v1

    if-gez v7, :cond_3

    move p4, v6

    :cond_3
    cmpl-float v7, v0, v1

    if-ltz v7, :cond_4

    cmpl-float v7, p4, v0

    if-lez v7, :cond_4

    goto :goto_0

    :cond_4
    cmpl-float v0, v3, v1

    if-ltz v0, :cond_5

    cmpg-float v0, p4, v3

    if-gez v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, p4

    :goto_0
    sub-float p4, v6, v0

    const v1, 0x3ba3d70a    # 0.005f

    cmpl-float p4, p4, v1

    const/4 v3, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    if-lez p4, :cond_7

    if-ge v2, v4, :cond_6

    int-to-float p0, v2

    mul-float/2addr p0, v0

    :goto_1
    add-float/2addr p0, v7

    float-to-int p0, p0

    move p4, p0

    move p0, v2

    goto :goto_5

    :cond_6
    int-to-float p0, v4

    mul-float/2addr p0, v0

    :goto_2
    add-float/2addr p0, v7

    float-to-int p0, p0

    :goto_3
    move p4, v4

    goto :goto_5

    :cond_7
    sub-float p4, v0, v6

    cmpl-float p4, p4, v1

    if-lez p4, :cond_a

    .line 338
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    if-eq p0, v3, :cond_9

    const/4 p4, 0x2

    if-eq p0, p4, :cond_8

    if-ge v2, v4, :cond_8

    goto :goto_4

    :cond_8
    int-to-float p0, v2

    div-float/2addr p0, v0

    goto :goto_1

    :cond_9
    :goto_4
    int-to-float p0, v4

    div-float/2addr p0, v0

    goto :goto_2

    :cond_a
    move p0, v2

    goto :goto_3

    :goto_5
    if-gt v2, p0, :cond_b

    if-gt v4, p4, :cond_b

    return v5

    .line 382
    :cond_b
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    .line 384
    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-lt p0, v1, :cond_c

    .line 385
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .line 386
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 388
    :cond_c
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v1

    .line 390
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-lt p4, p2, :cond_d

    .line 391
    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 392
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 394
    :cond_d
    invoke-virtual {p1, v0, v1, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return v3

    :cond_e
    :goto_6
    return v5
.end method

.method public applyAspectRatioForLetterbox(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Z)V

    return-void
.end method

.method public applyDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;)F

    move-result p1

    .line 96
    iget-object p2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {p0, p3, p4, p5, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Z)V

    return-void
.end method

.method public final getDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;)F
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 80
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getFixedOrientationLetterboxAspectRatio(Landroid/content/res/Configuration;)F

    move-result v0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isDefaultMultiWindowLetterboxAspectRatioDesired(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f8147ae    # 1.01f

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    return v0

    .line 89
    :cond_1
    invoke-static {p2}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getLetterboxedContainerBounds()Landroid/graphics/Rect;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->getLetterboxedContainerBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMaxAspectRatio()F
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedMaxAspectRatio()F

    move-result p0

    return p0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    .line 184
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getMinAspectRatio()F
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedMinAspectRatio()F

    move-result p0

    return p0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 125
    invoke-static {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getCameraCompatMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result p0

    .line 127
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    .line 126
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 131
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserMinAspectRatioOverride()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatio()F

    move-result p0

    return p0

    .line 135
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldOverrideMinAspectRatio()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 136
    invoke-static {v2}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldOverrideMinAspectRatioForCamera(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 137
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1

    :cond_5
    const-wide/32 v2, 0xc2368d6

    .line 144
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 146
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v2

    .line 145
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 147
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0

    :cond_6
    const-wide/32 v2, 0xd0d1070

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 151
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isParentFullscreenPortrait()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 154
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0

    :cond_7
    const-wide/32 v2, 0xc6fb886

    .line 157
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 158
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result p0

    .line 159
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    .line 158
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_8
    const-wide/32 v2, 0xabf9183

    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_9

    const p0, 0x3fe38e39

    .line 164
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    .line 163
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_9
    const-wide/32 v2, 0xabf91bd

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_a

    const/high16 p0, 0x3fc00000    # 1.5f

    .line 169
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    .line 168
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_a
    const-wide/32 v2, 0x14ce0124

    .line 172
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_b

    const p0, 0x3faaaaab

    .line 174
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    .line 173
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 176
    :cond_b
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0
.end method

.method public final getOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object p0

    return-object p0
.end method

.method public hasFixedAspectRatio()Z
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result p0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isAspectRatioApplied()Z
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fgetmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;)Z

    move-result p0

    return p0
.end method

.method public final isDefaultMultiWindowLetterboxAspectRatioDesired(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 404
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 408
    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    .line 409
    invoke-static {p1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isLetterboxedForAspectRatioOnly()Z
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->isLetterboxedForAspectRatioOnly()Z

    move-result p0

    return p0
.end method

.method public isLetterboxedForFixedOrientationAndAspectRatio()Z
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result p0

    return p0
.end method

.method public final isParentFullscreenPortrait()Z
    .locals 2

    .line 266
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->reset()V

    return-void
.end method

.method public resolveAspectRatioRestrictionIfNeeded(Landroid/content/res/Configuration;)V
    .locals 5

    .line 236
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v2, v1, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 243
    iget-object v1, v1, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    .line 244
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 247
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 248
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v2, v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatioForLetterbox(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 251
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 254
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    .line 259
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 261
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->setLetterboxBoundsForAspectRatio(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLetterboxBoundsForAspectRatio(Landroid/graphics/Rect;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmLetterboxBoundsForAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLetterboxBoundsForFixedOrientationAndAspectRatio(Landroid/graphics/Rect;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmLetterboxBoundsForFixedOrientationAndAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V

    return-void
.end method
