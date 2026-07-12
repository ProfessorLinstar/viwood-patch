.class public Lcom/android/server/wm/AppCompatSizeCompatModePolicy;
.super Ljava/lang/Object;
.source "AppCompatSizeCompatModePolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public mInSizeCompatModeForBounds:Z

.field public mSizeCompatBounds:Landroid/graphics/Rect;

.field public mSizeCompatScale:F


# direct methods
.method public static synthetic $r8$lambda$DB1xiXDatdealGYmVyfNK1FWtH8(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)Ljava/lang/Float;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->lambda$updateSizeCompatScale$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HeRz3r9TstDN3ctZMaGIi9JNjrY(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Float;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 155
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getCompatScale()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    iput v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 73
    iput-object p2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    return-void
.end method


# virtual methods
.method public alignToTopIfNeeded(Landroid/graphics/Rect;)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public applyOffsetIfNeeded(Landroid/graphics/Rect;Landroid/content/res/Configuration;II)Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    .line 127
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    .line 128
    invoke-static {p2, p0, p3}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public applySizeCompatScaleIfNeeded(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 3

    .line 142
    iget p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    .line 143
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 144
    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v0

    div-float/2addr v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    int-to-float v0, p1

    div-float/2addr v0, p0

    add-float/2addr v0, v2

    float-to-int p0, v0

    sub-int/2addr p0, p1

    .line 147
    invoke-static {p2, v1, p0}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    :cond_0
    return-void
.end method

.method public final calculateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)F
    .locals 2

    .line 562
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 563
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 564
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 565
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-gt v0, v1, :cond_1

    if-gt p1, p2, :cond_1

    .line 568
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 570
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p3

    .line 569
    invoke-static {p0, p3}, Lcom/android/server/wm/AppCompatUtils;->isInDesktopMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    :goto_0
    int-to-float p0, v1

    int-to-float p3, v0

    div-float/2addr p0, p3

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 571
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final clearOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 177
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    .line 181
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    return-object p0
.end method

.method public clearSizeCompatMode()V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeAttributes()V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 188
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public clearSizeCompatModeAttributes()V
    .locals 3

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    .line 162
    iget v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 163
    iput v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v2, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 169
    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 170
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->clearInheritedAppCompatDisplayInsets()V

    return-void
.end method

.method public clearSizeCompatModeIfNeededOnResolveOverrideConfiguration()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeAttributes()V

    .line 196
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearOverrideConfiguration()Landroid/content/res/Configuration;

    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 200
    iget v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 201
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mSizeCompatScale="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " mSizeCompatBounds="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 100
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    return-object p0
.end method

.method public getAppSizeCompatBoundsIfAvailable(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public getCompatScaleIfAvailable(Ljava/util/function/DoubleSupplier;)F
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    return p0

    .line 109
    :cond_0
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public hasAppCompatDisplayInsetsWithoutInheritance()Z
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSizeCompatBounds()Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inSizeCompatMode()Z
    .locals 3

    .line 407
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->isInSizeCompatModeForBounds()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->shouldCreateAppCompatDisplayInsets()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 412
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 416
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    .line 426
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 430
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p0, :cond_4

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public isInSizeCompatModeForBounds()Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    return p0
.end method

.method public final isInSizeCompatModeForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 8

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 516
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 517
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 518
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 519
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-ne v2, v0, :cond_1

    if-ne p2, p1, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x1

    if-le v2, v0, :cond_2

    if-le p2, p1, :cond_2

    return v3

    :cond_2
    if-lt v2, v0, :cond_5

    if-ge p2, p1, :cond_3

    goto :goto_0

    .line 536
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    const/high16 v7, 0x3f000000    # 0.5f

    if-lez v6, :cond_4

    .line 538
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v7

    .line 539
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v6, p1

    cmpl-float p1, v6, v4

    if-ltz p1, :cond_4

    return v1

    .line 545
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result p0

    cmpl-float p1, p0, v5

    if-lez p1, :cond_5

    .line 550
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v7

    .line 551
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_5

    return v1

    :cond_5
    :goto_0
    return v3
.end method

.method public final synthetic lambda$updateSizeCompatScale$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)Ljava/lang/Float;
    .locals 0

    .line 156
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->calculateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public replaceResolvedBoundsIfNeeded(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/AppCompatDisplayInsets;Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 212
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 213
    iget-object v3, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 219
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 220
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v11

    .line 221
    invoke-virtual {v11}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isAspectRatioApplied()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    move-object v12, v4

    goto :goto_1

    .line 224
    :cond_0
    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_1

    .line 226
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_2
    move-object v13, v3

    goto :goto_3

    .line 227
    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v3, v3, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    goto :goto_2

    .line 229
    :goto_3
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v3

    const/4 v15, 0x0

    if-eqz v3, :cond_2

    const/4 v7, 0x1

    goto :goto_4

    :cond_2
    move v7, v15

    .line 231
    :goto_4
    iget-object v4, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-eqz v5, :cond_3

    .line 232
    iget v4, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    goto :goto_5

    .line 233
    :cond_3
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    :goto_5
    if-eqz v7, :cond_4

    :goto_6
    move v6, v3

    goto :goto_7

    .line 238
    :cond_4
    iget v3, v2, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRequestedOrientation:I

    if-eqz v3, :cond_5

    goto :goto_6

    :cond_5
    move v6, v4

    .line 241
    :goto_7
    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 242
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v5, :cond_7

    .line 243
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_8

    :cond_6
    move v8, v15

    goto :goto_9

    :cond_7
    :goto_8
    const/4 v8, 0x1

    .line 244
    :goto_9
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 245
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v16

    if-nez v8, :cond_8

    if-nez v16, :cond_8

    .line 250
    iget-object v5, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v3}, Landroid/app/WindowConfiguration;->setRotation(I)V

    goto :goto_a

    .line 252
    :cond_8
    iget-object v5, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    const/4 v14, -0x1

    if-eq v5, v14, :cond_9

    goto :goto_b

    :cond_9
    :goto_a
    move v5, v3

    .line 262
    :goto_b
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move v14, v4

    move-object/from16 v4, p3

    .line 264
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppCompatDisplayInsets;->getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    .line 266
    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 268
    iget-boolean v5, v2, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    if-nez v5, :cond_a

    .line 269
    invoke-virtual {v11, v10, v3, v4}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatioForLetterbox(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 276
    :cond_a
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iput-object v2, v5, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 277
    invoke-virtual {v3, v9, v1}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 279
    iget-object v2, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 280
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v5, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 279
    invoke-static {v2, v3, v5}, Lcom/android/server/wm/WindowContainer;->computeScreenLayout(III)I

    move-result v2

    iput v2, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 285
    iget v2, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v2, v3, :cond_b

    .line 286
    iput v14, v9, Landroid/content/res/Configuration;->orientation:I

    .line 308
    :cond_b
    iget-object v2, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 311
    iget v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 312
    invoke-virtual {v0, v2, v13, v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->updateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    if-eqz v16, :cond_c

    move v1, v15

    goto :goto_c

    .line 316
    :cond_c
    iget v1, v13, Landroid/graphics/Rect;->top:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v5

    .line 317
    :goto_c
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    if-eq v1, v5, :cond_d

    const/4 v14, 0x1

    goto :goto_d

    :cond_d
    move v14, v15

    .line 319
    :goto_d
    iget v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_f

    if-eqz v14, :cond_e

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    .line 329
    iput-object v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 320
    :cond_f
    :goto_e
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-nez v5, :cond_10

    .line 321
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 323
    :cond_10
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 324
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v15, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 325
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 327
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 331
    :goto_f
    iget v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_11

    .line 332
    iget-object v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v3, v15}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 338
    :cond_11
    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 339
    iget v3, v12, Landroid/graphics/Rect;->left:I

    goto :goto_10

    :cond_12
    iget v3, v13, Landroid/graphics/Rect;->left:I

    :goto_10
    if-eqz v1, :cond_13

    .line 340
    iget v1, v12, Landroid/graphics/Rect;->top:I

    goto :goto_11

    :cond_13
    iget v1, v13, Landroid/graphics/Rect;->top:I

    :goto_11
    if-nez v3, :cond_14

    if-eqz v1, :cond_16

    .line 343
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 344
    iget-object v4, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 347
    :cond_15
    iget v4, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 348
    iget v4, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    .line 349
    invoke-static {v9, v3, v1}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    .line 352
    :cond_16
    invoke-virtual {v0, v2, v13}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->isInSizeCompatModeForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    return-void
.end method

.method public shouldCreateAppCompatDisplayInsets()Z
    .locals 4

    .line 444
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->supportsSizeChanges()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 464
    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 467
    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v3, :cond_3

    .line 468
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 475
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v0

    .line 476
    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v3

    if-nez v3, :cond_4

    .line 477
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->hasFixedAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 484
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    return v2
.end method

.method public supportsSizeChanges()I
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->shouldOverrideForceNonResizeApp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 497
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 501
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->shouldOverrideForceResizeApp()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public updateAppCompatDisplayInsets()V
    .locals 5

    .line 358
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 359
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 372
    iget v2, v1, Landroid/content/res/Configuration;->colorMode:I

    iput v2, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 373
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 384
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 385
    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 389
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 388
    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 393
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getLetterboxedContainerBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 396
    new-instance v1, Lcom/android/server/wm/AppCompatDisplayInsets;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v4, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/android/server/wm/AppCompatDisplayInsets;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V

    iput-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;-><init>()V

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    return-void
.end method
