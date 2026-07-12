.class public Lcom/android/server/wm/DisplayRotation$FoldController;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# instance fields
.field public final mActivityBoundsUpdateCallback:Ljava/lang/Runnable;

.field public final mAllowHalfFoldAutoRotationOverride:Z

.field public mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public mDisplaySwitchRotationBlockTimeMs:I

.field public mHalfFoldSavedRotation:I

.field public mHingeAngleRotationBlockTimeMs:I

.field public mHingeAngleSensorEventListener:Landroid/hardware/SensorEventListener;

.field public mInHalfFoldTransition:Z

.field public final mIsDisplayAlwaysSeparatingHinge:Z

.field public mLastDisplaySwitchTime:J

.field public mLastHingeAngleEventTime:J

.field public mMaxHingeAngle:I

.field public final mPauseAutorotationDuringUnfolding:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldDisableRotationSensor:Z

.field public mShouldIgnoreSensorRotation:Z

.field public final mTabletopRotations:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public static synthetic $r8$lambda$9bgUwXUoqn8GF98MKx-Q46Qwu68(Lcom/android/server/wm/DisplayRotation$FoldController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->lambda$onHingeAngleChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ObUw2FMm1SL07uvWjAcUVxeiG3M(Lcom/android/server/wm/DisplayRotation$FoldController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->lambda$onPhysicalDisplayChanged$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceState(Lcom/android/server/wm/DisplayRotation$FoldController;)Lcom/android/server/wm/DeviceStateController$DeviceState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalfFoldSavedRotation(Lcom/android/server/wm/DisplayRotation$FoldController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInHalfFoldTransition(Lcom/android/server/wm/DisplayRotation$FoldController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastDisplaySwitchTime(Lcom/android/server/wm/DisplayRotation$FoldController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastHingeAngleEventTime(Lcom/android/server/wm/DisplayRotation$FoldController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPauseAutorotationDuringUnfolding(Lcom/android/server/wm/DisplayRotation$FoldController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldDisableRotationSensor(Lcom/android/server/wm/DisplayRotation$FoldController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldIgnoreSensorRotation(Lcom/android/server/wm/DisplayRotation$FoldController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .locals 11

    .line 1667
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1648
    iput v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 1650
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-wide/16 v0, 0x0

    .line 1652
    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    .line 1653
    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    const/4 v0, 0x0

    .line 1656
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 1668
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11102b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    .line 1670
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    .line 1671
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_5

    .line 1674
    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_6

    aget v5, v1, v4

    if-eqz v5, :cond_3

    const/16 v6, 0x5a

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2

    const/16 v6, 0xb4

    if-eq v5, v6, :cond_1

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_0

    .line 1689
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v8, 0x4

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_4

    int-to-long v5, v5

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v9, 0x49e6af899df831b2L    # 1.0360993240422253E48

    invoke-static {v8, v9, v10, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1

    .line 1686
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1683
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1680
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1677
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1696
    :cond_5
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x4011086c30af3a2fL    # 4.258225212759995

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1700
    :cond_6
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mIsDisplayAlwaysSeparatingHinge:Z

    .line 1703
    new-instance v0, Lcom/android/server/wm/DisplayRotation$FoldController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DisplayRotation$FoldController$1;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;Lcom/android/server/wm/DisplayRotation;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mActivityBoundsUpdateCallback:Ljava/lang/Runnable;

    .line 1723
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    if-eqz v0, :cond_7

    .line 1727
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    .line 1729
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    .line 1731
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00ff

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mMaxHingeAngle:I

    .line 1733
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->registerSensorManager()V

    :cond_7
    return-void
.end method


# virtual methods
.method public foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceState;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1813
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    int-to-long v8, v2

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmUserRotation(Lcom/android/server/wm/DisplayRotation;)I

    move-result v2

    int-to-long v10, v2

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget v6, v2, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    int-to-long v12, v6

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmLastOrientation(Lcom/android/server/wm/DisplayRotation;)I

    move-result v2

    int-to-long v14, v2

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmRotation(Lcom/android/server/wm/DisplayRotation;)I

    move-result v2

    move-wide/from16 v16, v4

    int-to-long v3, v2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x7ad9da1852873806L    # 6.006603503852751E283

    const/16 v6, 0x1551

    invoke-static {v2, v4, v5, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1819
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v3, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v2, v3, :cond_1

    .line 1820
    iput-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-void

    .line 1823
    :cond_1
    sget-object v3, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    if-eq v2, v3, :cond_2

    .line 1827
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayRotationReversionController;->beforeOverrideApplied(I)V

    .line 1829
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmRotation(Lcom/android/server/wm/DisplayRotation;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 1830
    iput-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 1833
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 1836
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 1837
    iput-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 1839
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 1843
    :goto_0
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mActivityBoundsUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1844
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mActivityBoundsUpdateCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isDeviceInPosture(Lcom/android/server/wm/DeviceStateController$DeviceState;Z)Z
    .locals 3

    .line 1767
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 1770
    :cond_0
    sget-object p1, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    const/4 v2, 0x1

    if-ne v0, p1, :cond_2

    .line 1771
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmRotation(Lcom/android/server/wm/DisplayRotation;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-ne p2, p0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public isSeparatingHinge()Z
    .locals 2

    .line 1781
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mIsDisplayAlwaysSeparatingHinge:Z

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

.method public final synthetic lambda$onHingeAngleChanged$1()V
    .locals 1

    .line 1910
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayRotation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1911
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 1912
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onPhysicalDisplayChanged$0()V
    .locals 1

    .line 1897
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayRotation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1898
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 1899
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayRemoved()V
    .locals 1

    .line 1761
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz p0, :cond_0

    .line 1762
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public onHingeAngleChanged(F)V
    .locals 3

    .line 1904
    iget v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mMaxHingeAngle:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 1905
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    .line 1907
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 1909
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/DisplayRotation$FoldController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayRotation$FoldController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V

    iget p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onPhysicalDisplayChanged()V
    .locals 4

    .line 1881
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    if-nez v0, :cond_0

    return-void

    .line 1883
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    .line 1885
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1891
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    .line 1892
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mupdateOrientationListenerLw(Lcom/android/server/wm/DisplayRotation;)V

    .line 1895
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 1896
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayRotation$FoldController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$FoldController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V

    iget p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public overrideFrozenRotation()Z
    .locals 1

    .line 1787
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final registerSensorManager()V
    .locals 4

    .line 1738
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x24

    .line 1741
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1744
    new-instance v1, Lcom/android/server/wm/DisplayRotation$FoldController$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$FoldController$2;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 1754
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v3, 0x0

    .line 1754
    invoke-virtual {v2, v1, v0, v3, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_0
    return-void
.end method

.method public revertOverriddenRotation()I
    .locals 3

    .line 1804
    iget v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    const/4 v1, -0x1

    .line 1805
    iput v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 1806
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v1

    const/4 v2, 0x2

    .line 1807
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    const/4 v1, 0x0

    .line 1808
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    return v0
.end method

.method public shouldDisableRotationSensor()Z
    .locals 0

    .line 1853
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    return p0
.end method

.method public shouldIgnoreSensorRotation()Z
    .locals 0

    .line 1849
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    return p0
.end method

.method public shouldRevertOverriddenRotation()Z
    .locals 2

    .line 1793
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1797
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->isOverrideActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmUserRotationMode(Lcom/android/server/wm/DisplayRotation;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateSensorRotationBlockIfNeeded()V
    .locals 6

    .line 1857
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    move-result-wide v0

    .line 1858
    iget-wide v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    iget-wide v4, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    sub-long/2addr v0, v4

    iget v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1862
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-eq v0, v1, :cond_3

    .line 1863
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-nez v0, :cond_3

    .line 1867
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    if-eqz v0, :cond_2

    .line 1869
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    .line 1870
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mupdateOrientationListenerLw(Lcom/android/server/wm/DisplayRotation;)V

    return-void

    .line 1874
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_3
    return-void
.end method
