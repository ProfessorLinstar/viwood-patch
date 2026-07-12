.class public Lcom/android/server/wm/DimmerAnimationHelper;
.super Ljava/lang/Object;
.source "DimmerAnimationHelper.java"


# instance fields
.field public mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

.field public final mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

.field public final mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

.field public mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

.field public final mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

.field public final mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method public static synthetic $r8$lambda$-4RXDsMsps1xuQdh2yjXk8VxS7M(Lcom/android/server/wm/DimmerAnimationHelper;Lcom/android/server/wm/Dimmer$DimState;FILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DimmerAnimationHelper;->lambda$startAnimation$0(Lcom/android/server/wm/Dimmer$DimState;FILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-direct {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 94
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-direct {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 102
    iput-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    .line 103
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    return-void
.end method

.method public static getDimDuration(Lcom/android/server/wm/WindowContainer;)J
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    .line 304
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result p0

    if-nez v0, :cond_0

    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr p0, v0

    float-to-long v0, p0

    return-wide v0

    .line 306
    :cond_0
    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getRequestedAnimationSpec(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;
    .locals 7

    .line 230
    invoke-static {p0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 231
    invoke-static {p0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 232
    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper;->getDimDuration(Lcom/android/server/wm/WindowContainer;)J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v3

    sub-float/2addr v3, v0

    .line 233
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 235
    new-instance v4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    new-instance v5, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 236
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 237
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;-><init>(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;J)V

    .line 240
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 p1, 0x1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x107bda7fb260c74eL

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return-object v4
.end method

.method public static setBounds(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 266
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 268
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    .line 273
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    if-eqz v4, :cond_4

    .line 276
    iget-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isDimmingOnParentTask()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, v1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 278
    iget-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 279
    iget p1, v1, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v5, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    iget-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 286
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 287
    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    iget p1, v5, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p2, p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public applyChanges(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Dimmer$DimState;)V
    .locals 7

    .line 136
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>(Lcom/android/server/wm/DimmerAnimationHelper$Change;)V

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->copyFrom(Lcom/android/server/wm/DimmerAnimationHelper$Change;)V

    .line 139
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const-string v2, "WindowManager"

    if-nez v1, :cond_0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a dimming container. Have you forgotten to call adjustRelativeLayer?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {p0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "does not have a surface"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    .line 150
    :cond_1
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Dimming surface "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has already been released! Can not apply changes."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_2
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Dimmer$DimState;->ensureVisible(Landroid/view/SurfaceControl$Transaction;)V

    .line 158
    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eq v2, v4, :cond_4

    .line 161
    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 157
    :cond_4
    invoke-virtual {p0, p2, v1, v3, p1}, Lcom/android/server/wm/DimmerAnimationHelper;->reparent(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/android/server/wm/DimmerAnimationHelper;->setBounds(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->hasSameVisualProperties(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 167
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v1

    const-string v2, "new target values"

    invoke-static {v1, v2}, Lcom/android/server/wm/EventLogTags;->writeWmDimCancelAnim(ILjava/lang/String;)V

    .line 168
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->stopCurrentAnimation(Landroid/view/SurfaceControl;)V

    .line 170
    iget-boolean v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 173
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->hasSameDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    invoke-virtual {p2}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 182
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)V

    return-void

    .line 175
    :cond_6
    :goto_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_7

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v0

    float-to-double v3, v0

    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result v0

    int-to-long v5, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, 0x346ea5c6c622399aL    # 3.905950942569482E-56

    const/16 v5, 0x18

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 179
    :cond_7
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DimmerAnimationHelper;->setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V

    .line 180
    iput-boolean v2, p2, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    return-void

    .line 184
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result p0

    if-nez p0, :cond_9

    .line 187
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    :cond_9
    return-void
.end method

.method public final synthetic lambda$startAnimation$0(Lcom/android/server/wm/Dimmer$DimState;FILcom/android/server/wm/AnimationAdapter;)V
    .locals 1

    .line 204
    iget-object p3, p1, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    iget-object p3, p3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p3

    .line 205
    :try_start_0
    iget-object p4, p1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p4}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result p4

    invoke-static {p4}, Lcom/android/server/wm/EventLogTags;->writeWmDimFinishAnim(I)V

    .line 206
    iget-object p4, p1, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 207
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    .line 208
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/DimmerAnimationHelper;->setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result p2

    if-nez p2, :cond_0

    .line 210
    invoke-virtual {p1, p4}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 212
    iget-object p1, p1, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    .line 215
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 216
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public reparent(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 251
    iget-object p0, p1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {p4, p0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const/4 p1, -0x1

    .line 257
    invoke-virtual {p4, p0, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 260
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tried to change parent of dim "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " after remove"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "WindowManager"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 291
    iget-object p1, p1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 294
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {p0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tried to change look of dim "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " after remove"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setExitParameters()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DimmerAnimationHelper;->setRequestedRelativeParent(Lcom/android/server/wm/WindowState;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->setRequestedAppearance(FI)V

    return-void
.end method

.method public setRequestedAppearance(FI)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;F)V

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {p0, p2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;I)V

    return-void
.end method

.method public setRequestedGeometryParent(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {p0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/WindowContainer;)V

    :cond_0
    return-void
.end method

.method public setRequestedRelativeParent(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {p0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)V
    .locals 5

    .line 194
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x5838e9a5f346c47cL

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 195
    :cond_0
    invoke-static {p3, p4}, Lcom/android/server/wm/DimmerAnimationHelper;->getRequestedAnimationSpec(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0, p3, v1}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;->get(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)Lcom/android/server/wm/AnimationAdapter;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    .line 199
    invoke-static {p4}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result p3

    .line 200
    iget-object v0, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    invoke-static {p4}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result p4

    int-to-float p4, p4

    invoke-static {v0, p3, p4}, Lcom/android/server/wm/EventLogTags;->writeWmDimAnimate(IFF)V

    .line 202
    iget-object p4, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    iget-object v0, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    new-instance v1, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DimmerAnimationHelper;Lcom/android/server/wm/Dimmer$DimState;F)V

    const/4 p0, 0x4

    invoke-interface {p4, v0, p1, p0, v1}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-void
.end method

.method public stopCurrentAnimation(Landroid/view/SurfaceControl;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->inheritPropertiesFromAnimation(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    .line 225
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    return-void
.end method
