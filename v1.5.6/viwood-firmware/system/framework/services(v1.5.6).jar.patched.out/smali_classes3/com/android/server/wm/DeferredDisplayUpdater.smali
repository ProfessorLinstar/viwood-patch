.class public Lcom/android/server/wm/DeferredDisplayUpdater;
.super Ljava/lang/Object;
.source "DeferredDisplayUpdater.java"


# static fields
.field static final DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mLastDisplayInfo:Landroid/view/DisplayInfo;

.field public mLastWmDisplayInfo:Landroid/view/DisplayInfo;

.field public final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mOutputDisplayInfo:Landroid/view/DisplayInfo;

.field public final mScreenUnblockTimeoutRunnable:Ljava/lang/Runnable;

.field public mScreenUnblocker:Landroid/os/Message;

.field public mShouldWaitForTransitionWhenScreenOn:Z


# direct methods
.method public static synthetic $r8$lambda$--t3mf11gpWn1Uw3-b-B1MpXHHQ(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V
    .locals 1

    .line 64
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 66
    iget-boolean v0, p1, Landroid/view/DisplayInfo;->canHostTasks:Z

    iput-boolean v0, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    .line 69
    sget-object v0, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;->setFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CHPXMqT23O4nJOObP4bPI3REhts(Lcom/android/server/wm/DeferredDisplayUpdater;Landroid/view/DisplayInfo;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DeferredDisplayUpdater;->lambda$updateDisplayInfo$2(Landroid/view/DisplayInfo;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D0ELwfiuq9oc1hihTzVJZBd7ViI(Lcom/android/server/wm/DeferredDisplayUpdater;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->continueScreenUnblocking()V

    return-void
.end method

.method public static synthetic $r8$lambda$MvfO9JOt_Q3AS3XjgHDwFBPeCFo(Lcom/android/server/wm/DeferredDisplayUpdater;ZLjava/lang/Runnable;Lcom/android/server/wm/Transition;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DeferredDisplayUpdater;->lambda$requestDisplayChangeTransition$3(ZLjava/lang/Runnable;Lcom/android/server/wm/Transition;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VN74qy4h8i8d2Gvzo67y7zTLuLY(Lcom/android/server/wm/DeferredDisplayUpdater;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DeferredDisplayUpdater;->lambda$onDisplayUpdated$4(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wDFFq-H-LkC1KuXNimg4MoHXCCI(Lcom/android/server/wm/DeferredDisplayUpdater;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->lambda$new$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/DeferredDisplayUpdater;->DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 98
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    .line 108
    new-instance v1, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;)V

    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Ljava/lang/Runnable;

    .line 114
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 115
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public static calculateDisplayInfoDiff(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)I
    .locals 6

    .line 396
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 399
    :cond_1
    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    iget v2, p1, Landroid/view/DisplayInfo;->layerStack:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v2, p1, Landroid/view/DisplayInfo;->flags:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    iget v2, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    iget v2, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v2, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 404
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->modeId:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    iget v2, p1, Landroid/view/DisplayInfo;->renderFrameRate:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->hasArrSupport:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->hasArrSupport:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v2, p1, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 408
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 409
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 412
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 413
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    iget v2, p1, Landroid/view/DisplayInfo;->colorMode:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 415
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v2, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 416
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iget-object v2, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 417
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    if-ne v0, v2, :cond_2

    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v4, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v4, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    iget v2, p1, Landroid/view/DisplayInfo;->state:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->committedState:I

    iget v2, p1, Landroid/view/DisplayInfo;->committedState:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v2, p1, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 424
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    iget v2, p1, Landroid/view/DisplayInfo;->removeMode:I

    if-ne v0, v2, :cond_2

    .line 426
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDim:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessDim:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    iget v2, p1, Landroid/view/DisplayInfo;->installOrientation:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->isForceSdr:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->isForceSdr:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, p1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 433
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    iget v2, p1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 434
    invoke-static {v0, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    iget-object v2, p1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 435
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 437
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x2

    .line 443
    :cond_3
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->appWidth:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    iget v2, p1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 454
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v2, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 456
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iget-object v2, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 457
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 458
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-object v2, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 459
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    iget-boolean p1, p1, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-eq p0, p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    or-int/lit8 p0, v1, 0x1

    return p0

    :cond_6
    :goto_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final applyLatestDisplayInfo()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v3, Lcom/android/server/wm/DeferredDisplayUpdater;->DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/utils/DisplayInfoOverrides;->copyDisplayInfoFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public final continueScreenUnblocking()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 359
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    .line 360
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    if-nez v1, :cond_0

    .line 362
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 364
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-wide/16 v1, 0x20

    .line 365
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    const-string v1, "Screen unblock: wait for transition"

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_1
    const/4 v1, 0x0

    .line 368
    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    .line 369
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final finishDisplayUpdate(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 304
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 307
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->setAllReady()V

    return-void
.end method

.method public final getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 4

    .line 257
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    .line 261
    new-instance v2, Landroid/window/TransitionRequestInfo$DisplayChange;

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-direct {v2, p0}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    .line 263
    invoke-virtual {v2, p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 264
    invoke-virtual {v2, v0}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 265
    invoke-virtual {v2, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 266
    invoke-virtual {v2, v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    return-object v2
.end method

.method public final getCurrentDisplayInfo()Landroid/view/DisplayInfo;
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 251
    new-instance v0, Landroid/view/DisplayInfo;

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v0, p0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    return-object v0
.end method

.method public final isPhysicalDisplayUpdated(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p2, p2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public final synthetic lambda$new$1()V
    .locals 2

    .line 109
    const-string v0, "DeferredDisplayUpdater"

    const-string v1, "Timeout waiting for the display switch transition to start"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->continueScreenUnblocking()V

    return-void
.end method

.method public final synthetic lambda$onDisplayUpdated$4(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 294
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DeferredDisplayUpdater;->finishDisplayUpdate(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;)V

    return-void
.end method

.method public final synthetic lambda$requestDisplayChangeTransition$3(ZLjava/lang/Runnable;Lcom/android/server/wm/Transition;Z)V
    .locals 4

    .line 200
    new-instance p4, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/4 v2, 0x0

    invoke-direct {p4, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    if-eqz p1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 205
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 207
    invoke-virtual {v3, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " uses blast for display switch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeferredDisplayUpdater"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 210
    iput v2, v1, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 216
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    if-eqz p1, :cond_1

    .line 219
    invoke-virtual {p0, p3, v0, p4}, Lcom/android/server/wm/DeferredDisplayUpdater;->onDisplayUpdated(Lcom/android/server/wm/Transition;ILandroid/graphics/Rect;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {p0, v0, p4}, Lcom/android/server/wm/DeferredDisplayUpdater;->getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p1

    .line 223
    iget-object p2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, p4, p1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 230
    throw p1
.end method

.method public final synthetic lambda$updateDisplayInfo$2(Landroid/view/DisplayInfo;Ljava/lang/Runnable;)V
    .locals 5

    .line 167
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v0, v0

    iget v2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x7a92e92c10c2334fL    # 2.7461642514136956E282

    const/4 v3, 0x5

    invoke-static {v4, v1, v2, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    .line 175
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onDisplayContentDisplayPropertiesPostChanged()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    :cond_0
    return-void
.end method

.method public onDisplaySwitching(Z)V
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    return-void
.end method

.method public final onDisplayUpdated(Lcom/android/server/wm/Transition;ILandroid/graphics/Rect;)V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 283
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DeferredDisplayUpdater;->getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p3

    const/4 v1, 0x1

    .line 284
    invoke-virtual {p3, v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 286
    new-instance v1, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Transition;->addTransactionCompletedListener(Ljava/lang/Runnable;)V

    .line 287
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, p3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 290
    iget-object p3, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p3

    .line 292
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    new-instance v3, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;Lcom/android/server/wm/Transition;)V

    .line 293
    invoke-virtual {v1, p2, v0, p3, v3}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 297
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/DeferredDisplayUpdater;->finishDisplayUpdate(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;)V

    :cond_0
    return-void
.end method

.method public final requestDisplayChangeTransition(ZLjava/lang/Runnable;)V
    .locals 5

    .line 193
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v1, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 197
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    .line 199
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v2, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;ZLjava/lang/Runnable;Lcom/android/server/wm/Transition;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    return-void
.end method

.method public updateDisplayInfo(Ljava/lang/Runnable;)V
    .locals 10

    .line 127
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->getCurrentDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    invoke-static {v1, v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->calculateDisplayInfoDiff(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->isPhysicalDisplayUpdated(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)Z

    move-result v2

    .line 133
    iput-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v3, -0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eq v1, v3, :cond_5

    .line 139
    iget-object v3, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 140
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 141
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v3, v1, 0x2

    if-lez v3, :cond_2

    .line 154
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v6, v3

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v8, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, -0x1ef6e555996fc930L    # -2.7573599476281914E159

    invoke-static {v3, v7, v8, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    :cond_2
    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_4

    .line 162
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v5, v1

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v7, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v5, -0x5f08404952fac35bL    # -7.255132065554498E-150

    invoke-static {v1, v5, v6, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 166
    :cond_3
    new-instance v1, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;Landroid/view/DisplayInfo;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/DeferredDisplayUpdater;->requestDisplayChangeTransition(ZLjava/lang/Runnable;)V

    return-void

    .line 180
    :cond_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 142
    :cond_5
    :goto_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_6

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v1, v1

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v5, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v5, -0x671af71b919bc78bL    # -9.442125845787946E-189

    invoke-static {v3, v5, v6, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 146
    :cond_6
    iput-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    .line 148
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public waitForTransition(Landroid/os/Message;)Z
    .locals 2

    .line 338
    iget-boolean v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 341
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    const-wide/16 v0, 0x20

    .line 342
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const-string v0, "Screen unblock: wait for transition"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {v0, p1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method
