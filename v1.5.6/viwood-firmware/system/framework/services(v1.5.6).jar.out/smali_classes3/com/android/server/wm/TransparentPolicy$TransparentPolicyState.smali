.class public Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;
.super Ljava/lang/Object;
.source "TransparentPolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

.field public mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public mInheritedAppCompatState:I

.field public mInheritedMaxAspectRatio:F

.field public mInheritedMinAspectRatio:F

.field public mInheritedOrientation:I

.field public mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;


# direct methods
.method public static synthetic $r8$lambda$SEP6O4-hPND0DFZooEDdxRo7q_8(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;Lcom/android/server/wm/WindowContainer;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->lambda$start$0(Lcom/android/server/wm/WindowContainer;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$auIh4jw_IQJDhJwPerBOQv79P2Y(Ljava/util/function/Consumer;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 0

    .line 374
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 375
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFirstOpaqueActivity(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInheritedAppCompatDisplayInsets(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)Lcom/android/server/wm/AppCompatDisplayInsets;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInheritedAppCompatState(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInheritedMaxAspectRatio(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInheritedMinAspectRatio(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInheritedOrientation(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedOrientation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mapplyOnOpaqueActivityBelow(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;Ljava/util/function/Consumer;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->applyOnOpaqueActivityBelow(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mclearInheritedAppCompatDisplayInsets(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->clearInheritedAppCompatDisplayInsets()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindOpaqueNotFinishingActivityBelow(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)Ljava/util/Optional;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misRunning(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->reset()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->start(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedOrientation:I

    const/4 v1, 0x0

    .line 240
    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    .line 241
    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    .line 244
    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatState:I

    .line 262
    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final applyOnOpaqueActivityBelow(Ljava/util/function/Consumer;)Z
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    .line 373
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 376
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final clearInheritedAppCompatDisplayInsets()V
    .locals 1

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    return-void
.end method

.method public final findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 362
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final inheritFromOpaque(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    .line 308
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedOrientation:I

    .line 309
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatState:I

    .line 310
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    return-void
.end method

.method public final isPolicyEnabled()Z
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 338
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    .line 345
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 346
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->handlesOrientationChangeFromDescendant(I)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v3

    :cond_4
    :goto_1
    return v1
.end method

.method public final isRunning()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$start$0(Lcom/android/server/wm/WindowContainer;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 4

    .line 275
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p3}, Landroid/content/res/Configuration;->unset()V

    return-object p3

    .line 279
    :cond_0
    invoke-static {p3}, Lcom/android/server/wm/TransparentPolicy;->-$$Nest$smresetTranslucentOverrideConfig(Landroid/content/res/Configuration;)V

    .line 280
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 281
    iget-object v0, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 282
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 283
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 287
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 288
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 289
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p1, p2

    .line 287
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 292
    iget-object p1, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 293
    iget-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->inheritFromOpaque(Lcom/android/server/wm/ActivityRecord;)V

    return-object p3
.end method

.method public final reset()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lcom/android/server/wm/WindowContainerListener;->onRemoved()V

    :cond_0
    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    const/4 v1, 0x0

    .line 318
    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedOrientation:I

    const/4 v2, 0x0

    .line 319
    iput v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    .line 320
    iput v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    .line 321
    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatState:I

    .line 322
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 323
    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/TransparentPolicy;->-$$Nest$fgetmDestroyListeners(Lcom/android/server/wm/TransparentPolicy;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 326
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v2

    .line 325
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    :cond_1
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public final start(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 266
    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    .line 267
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/TransparentPolicy;->-$$Nest$fgetmDestroyListeners(Lcom/android/server/wm/TransparentPolicy;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 269
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v1

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->inheritFromOpaque(Lcom/android/server/wm/ActivityRecord;)V

    .line 271
    iget-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v2, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;Lcom/android/server/wm/WindowContainer;)V

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ConfigurationMerger;)Lcom/android/server/wm/WindowContainerListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    return-void
.end method
