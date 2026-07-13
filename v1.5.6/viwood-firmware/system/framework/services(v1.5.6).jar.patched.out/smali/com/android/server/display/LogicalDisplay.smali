.class public final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field public static final EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;


# instance fields
.field public mAlwaysRotateDisplayDeviceEnabled:Z

.field public final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field public mCanHostTasks:Z

.field public mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDevicePosition:I

.field public mDirty:Z

.field public mDisplayGroupId:I

.field public mDisplayGroupName:Ljava/lang/String;

.field public final mDisplayId:I

.field public mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

.field public mDisplayOffsetX:I

.field public mDisplayOffsetY:I

.field public final mDisplayPosition:Landroid/graphics/Point;

.field public mDisplayScalingDisabled:Z

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mHasContent:Z

.field public final mInfo:Lcom/android/server/display/DisplayInfoProxy;

.field public final mIsAnisotropyCorrectionEnabled:Z

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public final mLayerStack:I

.field public mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

.field public mLeadDisplayId:I

.field public mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

.field public mPowerThrottlingDataId:Ljava/lang/String;

.field public mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mRequestedColorMode:I

.field public mRequestedMinimalPostProcessing:Z

.field public final mSyncedResolutionSwitchEnabled:Z

.field public final mTempDisplayRect:Landroid/graphics/Rect;

.field public final mTempFrameRateOverride:Landroid/util/SparseArray;

.field public final mTempLayerStackRect:Landroid/graphics/Rect;

.field public mThermalBrightnessThrottlingDataId:Ljava/lang/String;

.field public mThermalRefreshRateThrottling:Landroid/util/SparseArray;

.field public mUserDisabledHdrTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    sput-object v0, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    return-void
.end method

.method public constructor <init>(IILcom/android/server/display/DisplayDevice;ZZZ)V
    .locals 4

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v1, -0x1

    .line 89
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 91
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 105
    new-instance v2, Lcom/android/server/display/DisplayInfoProxy;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/display/DisplayInfoProxy;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v2, 0x0

    .line 118
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 120
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v3}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 130
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 141
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 142
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 177
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 181
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 204
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 242
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 243
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 244
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 245
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 246
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    const/4 p2, 0x1

    .line 247
    iput-boolean p2, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 248
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 249
    const-string p3, "default"

    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 250
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 251
    iput-object p3, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 252
    iput-boolean p4, p0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    .line 253
    iput-boolean p5, p0, Lcom/android/server/display/LogicalDisplay;->mAlwaysRotateDisplayDeviceEnabled:Z

    .line 254
    iput-boolean p6, p0, Lcom/android/server/display/LogicalDisplay;->mSyncedResolutionSwitchEnabled:Z

    if-nez p1, :cond_0

    move v2, p2

    .line 255
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    return-void
.end method

.method public static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .locals 1

    .line 634
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    .line 635
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_0

    .line 637
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 639
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method


# virtual methods
.method public canHostTasksLocked()Z
    .locals 0

    .line 950
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    return p0
.end method

.method public clearPendingFrameRateOverrideUids()V
    .locals 1

    .line 321
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-void
.end method

.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz p3, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    .line 674
    :cond_0
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_0
    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;II)V

    .line 679
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    .line 678
    :goto_1
    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/DisplayDevice;->setDisplayFlagsLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 684
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne v2, v3, :cond_2

    .line 685
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 686
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_2

    .line 689
    :cond_2
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v3}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 691
    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 694
    :goto_2
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setAutoLowLatencyModeLocked(Z)V

    .line 695
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setGameContentTypeLocked(Z)V

    .line 698
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 699
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v6

    .line 704
    iget-object v7, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v8, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v7, v5, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 714
    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v8, 0x2

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    iget-boolean v7, v0, Lcom/android/server/display/LogicalDisplay;->mAlwaysRotateDisplayDeviceEnabled:Z

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v5

    goto :goto_4

    .line 716
    :cond_4
    :goto_3
    iget v7, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 720
    :goto_4
    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v7, v9

    rem-int/lit8 v7, v7, 0x4

    if-eq v7, v4, :cond_5

    const/4 v9, 0x3

    if-ne v7, v9, :cond_6

    :cond_5
    move v5, v4

    :cond_6
    if-eqz v5, :cond_7

    .line 729
    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_5

    :cond_7
    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_5
    if-eqz v5, :cond_8

    .line 730
    iget v10, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_6

    :cond_8
    iget v10, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 732
    :goto_6
    invoke-static {v6}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v11

    .line 733
    invoke-static {v11, v7}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    .line 735
    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v9, v12

    .line 736
    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int/2addr v10, v12

    .line 738
    iget v12, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 739
    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 741
    iget-boolean v14, v0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    if-eqz v14, :cond_c

    iget v14, v6, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v14, v8, :cond_c

    iget v14, v6, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    const/4 v15, 0x0

    cmpl-float v16, v14, v15

    if-lez v16, :cond_c

    move/from16 p3, v15

    iget v15, v6, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpl-float v16, v15, p3

    if-lez v16, :cond_c

    const v16, 0x3f833333    # 1.025f

    mul-float v17, v15, v16

    cmpl-float v17, v14, v17

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    if-lez v17, :cond_a

    div-float/2addr v15, v14

    if-eqz v5, :cond_9

    int-to-float v5, v12

    mul-float/2addr v5, v15

    goto :goto_8

    :cond_9
    int-to-float v5, v13

    mul-float/2addr v5, v15

    goto :goto_7

    :cond_a
    mul-float v16, v16, v14

    cmpg-float v16, v16, v15

    if-gez v16, :cond_c

    div-float/2addr v14, v15

    if-eqz v5, :cond_b

    int-to-float v5, v13

    mul-float/2addr v5, v14

    :goto_7
    float-to-double v13, v5

    add-double v13, v13, v18

    double-to-int v13, v13

    goto :goto_9

    :cond_b
    int-to-float v5, v12

    mul-float/2addr v5, v14

    :goto_8
    float-to-double v14, v5

    add-double v14, v14, v18

    double-to-int v12, v14

    .line 771
    :cond_c
    :goto_9
    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-nez v3, :cond_f

    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_d

    goto :goto_a

    :cond_d
    mul-int v3, v9, v13

    mul-int v5, v10, v12

    if-ge v3, v5, :cond_e

    .line 778
    div-int v13, v3, v12

    move v12, v9

    goto :goto_a

    .line 781
    :cond_e
    div-int v12, v5, v13

    move v13, v10

    :cond_f
    :goto_a
    sub-int/2addr v10, v13

    .line 784
    div-int/2addr v10, v8

    sub-int/2addr v9, v12

    .line 785
    div-int/2addr v9, v8

    .line 786
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int/2addr v12, v9

    add-int/2addr v13, v10

    invoke-virtual {v3, v9, v10, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 790
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v5, v11, Landroid/graphics/Rect;->left:I

    iget v9, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    if-nez v7, :cond_10

    .line 793
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_b

    :cond_10
    if-ne v7, v4, :cond_11

    .line 795
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_b

    :cond_11
    if-ne v7, v8, :cond_12

    .line 797
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v4, v4

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_b

    .line 799
    :cond_12
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v4, v4

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 802
    :goto_b
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Point;->set(II)V

    .line 804
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mSyncedResolutionSwitchEnabled:Z

    if-nez v3, :cond_13

    iget v3, v6, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_14

    .line 805
    :cond_13
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDevice;->configureDisplaySizeLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 807
    :cond_14
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v7, v3, v0}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 808
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDevice;->configureSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const-string v2, ")"

    if-eqz v1, :cond_0

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1147
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1148
    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsInTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesiredDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayScalingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFrameRateOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingFrameRateOverrideUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayGroupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalBrightnessThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLeadDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayoutLimitedRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalRefreshRateThrottling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPowerThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-object p0
.end method

.method public getDevicePositionLocked()I
    .locals 0

    .line 265
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    return p0
.end method

.method public getDisplayGroupNameLocked()Ljava/lang/String;
    .locals 0

    .line 1133
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayIdLocked()I
    .locals 0

    .line 274
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return p0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v3, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/utils/DisplayInfoOverrides;->copyDisplayInfoFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;)V

    .line 298
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 300
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayOffloadSessionLocked()Lcom/android/server/display/DisplayOffloadSessionImpl;
    .locals 0

    .line 1141
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    return-object p0
.end method

.method public getDisplayOffsetXLocked()I
    .locals 0

    .line 882
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return p0
.end method

.method public getDisplayOffsetYLocked()I
    .locals 0

    .line 889
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return p0
.end method

.method public getDisplayPosition()Landroid/graphics/Point;
    .locals 1

    .line 650
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    invoke-direct {v0, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {p0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLeadDisplayIdLocked()I
    .locals 0

    .line 1119
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    return p0
.end method

.method public getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public getPendingFrameRateOverrideUids()Landroid/util/ArraySet;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getPowerThrottlingDataIdLocked()Ljava/lang/String;
    .locals 0

    .line 1099
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object p0
.end method

.method public getRequestedColorModeLocked()I
    .locals 0

    .line 875
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return p0
.end method

.method public getRequestedMinimalPostProcessingLocked()Z
    .locals 0

    .line 860
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return p0
.end method

.method public hasContentLocked()Z
    .locals 0

    .line 822
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return p0
.end method

.method public isDirtyLocked()Z
    .locals 0

    .line 370
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    return p0
.end method

.method public isDisplayScalingDisabled()Z
    .locals 0

    .line 905
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return p0
.end method

.method public isEnabledLocked()Z
    .locals 0

    .line 1040
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    return p0
.end method

.method public isInTransitionLocked()Z
    .locals 0

    .line 1061
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    return p0
.end method

.method public isValidLocked()Z
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCanHostTasksLocked(Z)Z
    .locals 2

    .line 960
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplay;->validateCanHostTasksLocked(Z)Z

    move-result p1

    .line 961
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v1, v0, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-ne v1, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 965
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    .line 966
    iput-boolean p1, v0, Landroid/view/DisplayInfo;->canHostTasks:Z

    .line 967
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-void
.end method

.method public setDevicePositionLocked(I)V
    .locals 1

    .line 259
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-eq v0, p1, :cond_0

    .line 260
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_0
    return-void
.end method

.method public setDisplayGroupNameLocked(Ljava/lang/String;)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 340
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v2, :cond_0

    .line 341
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 342
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    .line 344
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 346
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    .line 349
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz p1, :cond_2

    .line 350
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 351
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setDisplayOffloadSessionLocked(Lcom/android/server/display/DisplayOffloadSessionImpl;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    return-void
.end method

.method public setDisplayOffsetsLocked(II)V
    .locals 0

    .line 896
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 897
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return-void
.end method

.method public setDisplayScalingDisabledLocked(Z)V
    .locals 0

    .line 915
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return-void
.end method

.method public setEnabledLocked(Z)V
    .locals 1

    .line 1049
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 1050
    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 1051
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    :cond_0
    return-void
.end method

.method public setHasContentLocked(Z)V
    .locals 0

    .line 831
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return-void
.end method

.method public setIsForceSdr(Z)Z
    .locals 4

    .line 935
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 941
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v3, v0, Landroid/view/DisplayInfo;->isForceSdr:Z

    if-eq v3, p1, :cond_2

    .line 942
    iput-boolean p1, v0, Landroid/view/DisplayInfo;->isForceSdr:Z

    .line 943
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v2

    :cond_2
    return v1
.end method

.method public setIsInTransitionLocked(Z)V
    .locals 0

    .line 1069
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    return-void
.end method

.method public setLeadDisplayLocked(I)V
    .locals 2

    .line 1113
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 1114
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    :cond_0
    return-void
.end method

.method public setPowerThrottlingDataIdLocked(Ljava/lang/String;)V
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1090
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_0
    return-void
.end method

.method public setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .locals 3

    .line 1023
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1024
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 p1, 0x0

    .line 1027
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1028
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1029
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return-object v0
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 0

    .line 853
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return-void
.end method

.method public setRequestedMinimalPostProcessingLocked(Z)V
    .locals 0

    .line 870
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return-void
.end method

.method public setThermalBrightnessThrottlingDataIdLocked(Ljava/lang/String;)V
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1079
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_0
    return-void
.end method

.method public setUserDisabledHdrTypes([I)V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    if-eq v0, p1, :cond_0

    .line 920
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 921
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-object p1, v0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 922
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    :cond_0
    return-void
.end method

.method public swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1012
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 1013
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1174
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1175
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1176
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDisplayGroupIdLocked(I)V
    .locals 1

    .line 379
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    if-eq p1, v0, :cond_0

    .line 380
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    const/4 p1, 0x1

    .line 381
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_0
    return-void
.end method

.method public final updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 8

    .line 593
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 594
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 596
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 597
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v4, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 598
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 597
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    if-eqz p1, :cond_3

    .line 604
    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 605
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v5, v4, v6

    if-eqz v5, :cond_2

    .line 606
    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 610
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v3, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_3

    .line 607
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v3, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 608
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 607
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 614
    :cond_3
    :goto_4
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 615
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public updateLayoutLimitedRefreshRateLocked(Landroid/view/SurfaceControl$RefreshRateRange;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    const/4 p1, 0x1

    .line 394
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_0
    return-void
.end method

.method public updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V
    .locals 12

    .line 423
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayDeviceRepository;->containsLocked(Lcom/android/server/display/DisplayDevice;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void

    .line 438
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    .line 439
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    .line 440
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 441
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v3, v2, Landroid/view/DisplayInfo;->layerStack:I

    const/4 v3, 0x0

    .line 442
    iput v3, v2, Landroid/view/DisplayInfo;->flags:I

    .line 444
    iput v3, v2, Landroid/view/DisplayInfo;->removeMode:I

    .line 445
    iget v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v5, v4, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 446
    iput v6, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_4
    and-int/lit8 v5, v4, 0x4

    const/4 v7, 0x2

    if-eqz v5, :cond_5

    .line 449
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v5, v7

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_5
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_6

    .line 452
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 454
    iput v6, v2, Landroid/view/DisplayInfo;->removeMode:I

    :cond_6
    and-int/lit16 v5, v4, 0x400

    if-eqz v5, :cond_7

    .line 457
    iput v6, v2, Landroid/view/DisplayInfo;->removeMode:I

    :cond_7
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_8

    .line 460
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_8
    and-int/lit16 v5, v4, 0x100

    if-eqz v5, :cond_9

    .line 463
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_9
    and-int/lit16 v5, v4, 0x200

    if-eqz v5, :cond_a

    .line 466
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_a
    and-int/lit16 v5, v4, 0x1000

    if-eqz v5, :cond_b

    .line 469
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_b
    and-int/lit16 v5, v4, 0x2000

    if-eqz v5, :cond_c

    .line 472
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_c
    and-int/lit16 v5, v4, 0x4000

    if-eqz v5, :cond_d

    .line 475
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_d
    const v5, 0x8000

    and-int v8, v4, v5

    if-eqz v8, :cond_e

    .line 478
    iget v8, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_e
    and-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_f

    .line 481
    iget v8, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_f
    const/high16 v8, 0x10000

    and-int/2addr v8, v4

    if-eqz v8, :cond_10

    .line 484
    iget v8, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x400

    iput v8, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_10
    const/high16 v8, 0x20000

    and-int/2addr v8, v4

    if-eqz v8, :cond_11

    .line 487
    iget v8, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x800

    iput v8, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_11
    const/high16 v8, 0x80000

    and-int/2addr v8, v4

    if-eqz v8, :cond_12

    .line 490
    iget v8, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_12
    const/high16 v8, 0x100000

    and-int/2addr v4, v8

    if-eqz v4, :cond_13

    .line 493
    iget v4, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-eq v4, v6, :cond_13

    .line 495
    iget v4, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/DisplayInfo;->flags:I

    .line 497
    :cond_13
    invoke-static {p1}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 498
    iget v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 499
    iget v5, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    .line 501
    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    if-eqz v2, :cond_15

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v2, v7, :cond_15

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    const/4 v7, 0x0

    cmpl-float v8, v2, v7

    if-lez v8, :cond_15

    iget v8, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpl-float v7, v8, v7

    if-lez v7, :cond_15

    const v7, 0x3f833333    # 1.025f

    mul-float v9, v8, v7

    cmpl-float v9, v2, v9

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-lez v9, :cond_14

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v8

    float-to-double v7, v5

    add-double/2addr v7, v10

    double-to-int v5, v7

    goto :goto_2

    :cond_14
    mul-float/2addr v7, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_15

    int-to-float v4, v4

    mul-float/2addr v4, v8

    div-float/2addr v4, v2

    float-to-double v7, v4

    add-double/2addr v7, v10

    double-to-int v4, v7

    .line 510
    :cond_15
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v7, v2, Landroid/view/DisplayInfo;->type:I

    .line 511
    iget-object v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v7, v2, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 512
    iget-object v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v7, v2, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 513
    iget-object v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v7, v2, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 514
    iget-object v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v7, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 515
    iput v4, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 516
    iput v5, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 517
    iput v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 518
    iput v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 519
    iput v3, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 520
    iget v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v7, v2, Landroid/view/DisplayInfo;->modeId:I

    .line 521
    iget v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    iput v7, v2, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 522
    iget-boolean v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->hasArrSupport:Z

    iput-boolean v7, v2, Landroid/view/DisplayInfo;->hasArrSupport:Z

    .line 523
    iget-object v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iput-object v7, v2, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 524
    iget-object v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    array-length v8, v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    iput-object v7, v2, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 526
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v7, v2, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 527
    iget v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    iput v7, v2, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 528
    iget-object v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v8, v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/view/Display$Mode;

    iput-object v7, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 530
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-boolean v8, v2, Landroid/view/DisplayInfo;->hasArrSupport:Z

    invoke-virtual {p2, v1, v7, v8}, Lcom/android/server/display/mode/SyntheticModeManager;->createAppSupportedModes(Lcom/android/server/display/DisplayDeviceConfig;[Landroid/view/Display$Mode;Z)[Landroid/view/Display$Mode;

    move-result-object p2

    iput-object p2, v2, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 533
    iget-object p2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v1, p2, Landroid/view/DisplayInfo;->colorMode:I

    .line 534
    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p2, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 537
    iget-object p2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v1, p2, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 538
    iget-boolean v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->isForceSdr:Z

    iput-boolean v1, p2, Landroid/view/DisplayInfo;->isForceSdr:Z

    .line 539
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    iput-object v1, p2, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 540
    iget-boolean v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    if-nez v1, :cond_17

    iget-boolean v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    if-eqz v1, :cond_16

    goto :goto_3

    :cond_16
    move v1, v3

    goto :goto_4

    :cond_17
    :goto_3
    move v1, v6

    :goto_4
    iput-boolean v1, p2, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 542
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v1, p2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 543
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v1, p2, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 544
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v1, p2, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 545
    iget-wide v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v1, p2, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 546
    iget-wide v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v1, p2, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 547
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v1, p2, Landroid/view/DisplayInfo;->state:I

    .line 548
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    iput v1, p2, Landroid/view/DisplayInfo;->committedState:I

    .line 549
    iput v4, p2, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 550
    iput v5, p2, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 551
    iput v4, p2, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 552
    iput v5, p2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 553
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v1, p2, Landroid/view/DisplayInfo;->ownerUid:I

    .line 554
    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v1, p2, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 555
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_18

    move v1, v6

    goto :goto_5

    :cond_18
    move v1, v3

    :goto_5
    if-eqz v1, :cond_19

    move-object v1, v0

    goto :goto_6

    .line 557
    :cond_19
    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_6
    iput-object v1, p2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 558
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v1, p2, Landroid/view/DisplayInfo;->displayId:I

    .line 559
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    iput v1, p2, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 560
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplay;->updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 561
    iget-object p2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    iput v1, p2, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 562
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iput v1, p2, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 563
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iput v1, p2, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 564
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    iput v1, p2, Landroid/view/DisplayInfo;->brightnessDim:F

    .line 565
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    iput v1, p2, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 566
    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v1, p2, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 567
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    iput v1, p2, Landroid/view/DisplayInfo;->installOrientation:I

    .line 568
    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v1, p2, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 570
    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-ne v1, v6, :cond_1a

    .line 576
    iget v1, p2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v1, v1, 0x2008

    .line 577
    iput v1, p2, Landroid/view/DisplayInfo;->flags:I

    .line 578
    iput v6, p2, Landroid/view/DisplayInfo;->removeMode:I

    .line 581
    :cond_1a
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iput-object v1, p2, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 582
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    iput-object v1, p2, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 583
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-object v1, p2, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 584
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    iput-boolean v1, p2, Landroid/view/DisplayInfo;->canHostTasks:Z

    .line 586
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 587
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 588
    iput-boolean v3, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    return-void
.end method

.method public updateThermalRefreshRateThrottling(Landroid/util/SparseArray;)V
    .locals 1

    if-nez p1, :cond_0

    .line 405
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_1
    return-void
.end method

.method public final validateCanHostTasksLocked(Z)Z
    .locals 3

    .line 981
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->shouldOnlyMirror()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 991
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDevicePositionLocked()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v2, v1

    .line 992
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 993
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return p1

    :cond_4
    :goto_0
    return v1
.end method
