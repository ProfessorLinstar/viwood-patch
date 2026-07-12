.class public final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;


# static fields
.field public static final BRIGHTNESS_RANGE_BOUNDARIES:[F

.field public static final BRIGHTNESS_RANGE_INDEX:[I

.field public static final DEBUG:Z


# instance fields
.field public final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public mBootCompleted:Z

.field public final mBrightnessBucketsInDozeConfig:Z

.field public final mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

.field public mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mBrightnessRampDecreaseMaxTimeIdleMillis:J

.field public mBrightnessRampDecreaseMaxTimeMillis:J

.field public mBrightnessRampIncreaseMaxTimeIdleMillis:J

.field public mBrightnessRampIncreaseMaxTimeMillis:J

.field public mBrightnessRampRateFastDecrease:F

.field public mBrightnessRampRateFastIncrease:F

.field public mBrightnessRampRateSlowDecrease:F

.field public mBrightnessRampRateSlowDecreaseIdle:F

.field public mBrightnessRampRateSlowIncrease:F

.field public mBrightnessRampRateSlowIncreaseIdle:F

.field public final mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

.field final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

.field public final mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public final mCleanListener:Ljava/lang/Runnable;

.field public final mClock:Lcom/android/server/display/DisplayPowerController$Clock;

.field public final mColorFadeEnabled:Z

.field public final mColorFadeFadesConfig:Z

.field public mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field public mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayBlanksAfterDozeConfig:Z

.field public final mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

.field public final mDisplayBrightnessFollowers:Landroid/util/SparseArray;

.field public mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

.field public final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field public mDisplayReadyLocked:Z

.field public final mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

.field public mDisplayStatsId:I

.field public final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field public final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field public mDozeScaleFactor:F

.field public mDozing:Z

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field public mIdleStylusTimeoutMillisConfig:J

.field public mInitialAutoBrightness:F

.field public final mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

.field public mIsDisplayInternal:Z

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public mIsRbcActive:Z

.field public mIsWearBedtimeModeEnabled:Z

.field public final mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mLastStatsBrightness:F

.field public mLastStylusUsageEventTime:J

.field public mLeadDisplayId:I

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLock:Ljava/lang/Object;

.field public final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field public mNitsRange:[F

.field public final mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field public mPendingOverrideDozeScreenStateLocked:I

.field public mPendingRequestChangedLocked:Z

.field public mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPendingScreenOff:Z

.field public mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field public mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field public mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

.field public mPendingUpdatePowerStateLocked:Z

.field public mPhysicalDisplayName:Ljava/lang/String;

.field public mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPowerState:Lcom/android/server/display/DisplayPowerState;

.field public final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field public final mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mReportedScreenStateToPolicy:I

.field public mScreenBrightnessDozeConfig:F

.field public mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

.field public mScreenOffBlockStartRealTime:J

.field public mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

.field public mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

.field public mScreenOnBlockByDisplayOffloadStartRealTime:J

.field public mScreenOnBlockStartRealTime:J

.field public mScreenTurningOnWasBlockedByDisplayOffload:Z

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field public mSkipRampState:I

.field public final mSkipScreenOnBrightnessRamp:Z

.field public mStopped:Z

.field public final mTag:Ljava/lang/String;

.field public final mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mUniqueDisplayId:Ljava/lang/String;

.field public mUseSoftwareAutoBrightnessConfig:Z

.field public final mWakelockController:Lcom/android/server/display/WakelockController;

.field public final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static synthetic $r8$lambda$3lWZJ4BpIHcX_GeenBdRfMVq_oU(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public static synthetic $r8$lambda$5RphC-f5q7JuBZP_zbC4n0d1BnM(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$dump$10(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8rUGEn0dNmrOJcwRnq2VJzM2pjc(Lcom/android/server/display/DisplayPowerController;)V
    .locals 4

    const/high16 v0, 0x7fc00000    # Float.NaN

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2626
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$O6mpZthfxOx0lhcqL34r3oprwCs(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$blockScreenOnByDisplayOffload$7(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PyqwBbVTZ4w53dakFwc1n1ZoghQ(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$overrideDozeScreenState$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SuWf1yk5lu2qnPpoUMKnLNPfmmM(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$VkeH_dpkq8ekwizFlDrhaPmB5N8(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vtc1Po4a0DGkWz5GRpdfH5REh7Q(Lcom/android/server/display/DisplayPowerController;ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/display/DisplayPowerController;->lambda$onDisplayChanged$4(ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X0kcyT-jGCo5DAjSMwT2VnJSrCE(Lcom/android/server/display/DisplayPowerController;)V
    .locals 4

    const/high16 v0, 0x7fc00000    # Float.NaN

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2616
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZFPhLbQvTzph4eOkWY2hWLOLrk8(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$gOarXu2d8jDgQ1-guoA7hSPD1rA(Lcom/android/server/display/DisplayPowerController;FF)F
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->lambda$createHbmControllerLocked$6(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iVTSAZlXXYTnQ1GVDYvaOw8zfV4(Lcom/android/server/display/DisplayPowerController;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$initialize$5(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutomaticBrightnessStrategy(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessTracker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$Clock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/DisplayBrightnessController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayOffloadSession(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdleStylusTimeoutMillisConfig(Lcom/android/server/display/DisplayPowerController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWearBedtimeModeEnabled(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingScreenOffUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingScreenOnUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWearBedtimeModeEnabled(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyReduceBrightColorsSplineAdjustment(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupHandlerThreadAfterStop(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->cleanupHandlerThreadAfterStop()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBrightnessModeChange(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnSwitchUser(Lcom/android/server/display/DisplayPowerController;IIF)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleOnSwitchUser(IIF)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRbcChanged(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleRbcChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogHbmBrightnessStats(Lcom/android/server/display/DisplayPowerController;FI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->logHbmBrightnessStats(FI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportStats(Lcom/android/server/display/DisplayPowerController;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAnimatorRampSpeeds(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDwbcLoggingEnabled(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDwbcLoggingEnabled(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDwbcOverride(Lcom/android/server/display/DisplayPowerController;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDwbcOverride(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDwbcStrongMode(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDwbcStrongMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUpAutoBrightness(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munblockScreenOff(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munblockScreenOn(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munblockScreenOnByDisplayOffload(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 138
    const-string v0, "DisplayPowerController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    const/16 v0, 0x26

    .line 192
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    .line 200
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
        0x42200000    # 40.0f
        0x42480000    # 50.0f
        0x42700000    # 60.0f
        0x428c0000    # 70.0f
        0x42a00000    # 80.0f
        0x42b40000    # 90.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x43960000    # 300.0f
        0x43c80000    # 400.0f
        0x43fa0000    # 500.0f
        0x44160000    # 600.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x44610000    # 900.0f
        0x447a0000    # 1000.0f
        0x44960000    # 1200.0f
        0x44af0000    # 1400.0f
        0x44c80000    # 1600.0f
        0x44e10000    # 1800.0f
        0x44fa0000    # 2000.0f
        0x450ca000    # 2250.0f
        0x451c4000    # 2500.0f
        0x452be000    # 2750.0f
        0x453b8000    # 3000.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p5

    .line 518
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 270
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 292
    new-instance v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 374
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 387
    new-instance v2, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v2}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 389
    new-instance v2, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v2}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x0

    .line 401
    iput v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 432
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v4, Lcom/android/server/display/brightness/BrightnessEvent;

    const/16 v5, 0x14

    invoke-direct {v2, v4, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    const/4 v11, 0x0

    .line 451
    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 485
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    const-wide/16 v4, -0x1

    .line 502
    iput-wide v4, v1, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    const-wide/16 v4, 0x0

    .line 505
    iput-wide v4, v1, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    .line 1258
    new-instance v2, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1277
    new-instance v2, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 2475
    new-instance v2, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 519
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v2, p13

    .line 521
    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    if-eqz p2, :cond_0

    move-object/from16 v4, p2

    goto :goto_0

    .line 522
    :cond_0
    new-instance v4, Lcom/android/server/display/DisplayPowerController$Injector;

    invoke-direct {v4}, Lcom/android/server/display/DisplayPowerController$Injector;-><init>()V

    :goto_0
    iput-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 523
    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerController$Injector;->getClock()Lcom/android/server/display/DisplayPowerController$Clock;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    move-object/from16 v13, p7

    .line 524
    iput-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 525
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v5

    iput v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 526
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 527
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v19

    .line 528
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v14

    .line 529
    iput-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 530
    new-instance v15, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v15, v1, v6}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 531
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 532
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->getIdleStylusTimeoutMillis()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v1, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    .line 533
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 534
    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 535
    iget v6, v14, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v11

    :goto_1
    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    move-object/from16 v6, p3

    .line 536
    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayPowerController$Injector;->getWakelockController(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)Lcom/android/server/display/WakelockController;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    move/from16 v21, v5

    move-object v5, v6

    .line 537
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    move v9, v7

    .line 538
    invoke-virtual {v15}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    new-instance v8, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;

    invoke-direct {v8, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v10, p5

    move v0, v9

    move/from16 v9, v21

    .line 537
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/display/DisplayPowerController$Injector;->getDisplayPowerProximityStateController(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;)Lcom/android/server/display/DisplayPowerProximityStateController;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 540
    new-instance v6, Lcom/android/server/display/state/DisplayStateController;

    const v7, 0x1110247

    .line 542
    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/server/display/state/DisplayStateController;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;Z)V

    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DisplayPowerController["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 545
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 546
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iput v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 547
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    .line 549
    new-instance v5, Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v5, v9}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 550
    new-instance v5, Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v5, v9}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 552
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBatteryStatsEnabledForAllDisplays()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 553
    invoke-static {v14}, Lcom/android/server/display/DisplayPowerController;->isDisplaySupportedForBatteryStats(Lcom/android/server/display/DisplayDeviceInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 554
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_2

    :cond_2
    if-nez v9, :cond_3

    .line 556
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_2

    .line 558
    :cond_3
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 561
    :goto_2
    new-instance v5, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-direct {v5, v1, v15}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 562
    const-class v7, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move-object/from16 v7, p6

    .line 563
    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 564
    iput-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v7, p8

    .line 565
    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    move-object/from16 v7, p10

    .line 566
    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 568
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "bedtime_mode"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v0, :cond_4

    move v7, v0

    goto :goto_3

    :cond_4
    move v7, v11

    :goto_3
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    .line 570
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 571
    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v10, -0x1

    .line 570
    invoke-virtual {v7, v8, v11, v5, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 575
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 576
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultDozeBrightness()F

    move-result v5

    .line 575
    invoke-static {v5}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v5

    iput v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 577
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    const v5, 0x1110248

    .line 578
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    const v5, 0x1130007

    .line 580
    invoke-virtual {v12, v5, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    move-object/from16 v17, v15

    .line 583
    new-instance v15, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;

    invoke-direct {v15, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p11

    .line 592
    invoke-virtual {v1, v0, v15}, Lcom/android/server/display/DisplayPowerController;->createHbmControllerLocked(Lcom/android/server/display/HighBrightnessModeMetadata;Ljava/lang/Runnable;)Lcom/android/server/display/HighBrightnessModeController;

    move-result-object v0

    .line 595
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    move-object/from16 v18, v2

    move-object v13, v4

    move-object/from16 v16, v5

    move-object/from16 v20, v14

    move-object v14, v0

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/display/DisplayPowerController$Injector;->getBrightnessRangeController(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)Lcom/android/server/display/BrightnessRangeController;

    move-result-object v0

    move-object/from16 v22, v13

    move-object/from16 v14, v17

    move-object/from16 v13, v20

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 599
    new-instance v2, Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 601
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->brightnessDefault:F

    new-instance v8, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    invoke-direct {v8, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move/from16 v21, v9

    new-instance v9, Landroid/os/HandlerExecutor;

    invoke-direct {v9, v14}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const/4 v4, 0x0

    move-object/from16 v7, p9

    move-object/from16 v10, p13

    move-object v11, v6

    move/from16 v5, v21

    move v6, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/display/brightness/DisplayBrightnessController;-><init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;IFLcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    move-object v0, v2

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 606
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 608
    new-instance v4, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;

    invoke-direct {v4, v15}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    new-instance v5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 612
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/display/LogicalDisplay;->getPowerThrottlingDataIdLocked()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v6, v13, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v7, v13, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move-object/from16 v13, v17

    move-object/from16 v17, v3

    move-object v3, v13

    move-object v15, v2

    move-object v13, v5

    move/from16 v18, v6

    move-object/from16 v20, v19

    move/from16 v19, v7

    invoke-direct/range {v13 .. v21}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;IILandroid/os/IBinder;I)V

    .line 615
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v9

    move-object/from16 v6, p1

    move-object/from16 v8, p5

    move-object/from16 v7, p13

    move-object/from16 v2, v22

    .line 607
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/display/DisplayPowerController$Injector;->getBrightnessClamperController(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    move-result-object v4

    move-object v14, v3

    move-object v3, v6

    iput-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 617
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(F)Z

    .line 619
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    if-nez v21, :cond_5

    .line 625
    :try_start_0
    invoke-virtual {v2, v14, v8, v12}, Lcom/android/server/display/DisplayPowerController$Injector;->getDisplayWhiteBalanceController(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 627
    :try_start_1
    new-instance v2, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-direct {v2, v3, v14}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 628
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z

    .line 629
    invoke-virtual {v6, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v23, v6

    move-object v6, v2

    move-object/from16 v2, v23

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v23, v6

    move-object v6, v2

    move-object/from16 v2, v23

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v6

    move-object v6, v11

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v11

    move-object v6, v2

    .line 631
    :goto_4
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to set up display white-balance: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    move-object v2, v11

    move-object v6, v2

    .line 634
    :goto_5
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 635
    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 637
    invoke-virtual {v1, v12}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 639
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_7

    .line 640
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v0, :cond_6

    .line 642
    new-instance v2, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v2, v1}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setReduceBrightColorsListener(Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 657
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    :cond_6
    :goto_6
    move-object/from16 v2, p4

    goto :goto_7

    .line 661
    :cond_7
    iput-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    goto :goto_6

    .line 664
    :goto_7
    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    .line 669
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const v0, 0x1110034

    .line 670
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    const v0, 0x1110146

    .line 673
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const v0, 0x1110147

    .line 676
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    move/from16 v2, p12

    .line 679
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    return-void
.end method

.method public static isDisplaySupportedForBatteryStats(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .locals 2

    .line 2792
    iget p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2774
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2772
    :cond_0
    const-string p0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object p0

    .line 2770
    :cond_1
    const-string p0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object p0

    .line 2768
    :cond_2
    const-string p0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object p0
.end method

.method public static skipRampStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2787
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2785
    :cond_0
    const-string p0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object p0

    .line 2783
    :cond_1
    const-string p0, "RAMP_STATE_SKIP_INITIAL"

    return-object p0

    .line 2781
    :cond_2
    const-string p0, "RAMP_STATE_SKIP_NONE"

    return-object p0
.end method


# virtual methods
.method public addDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerController;)V
    .locals 3

    .line 2607
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2608
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2609
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 2610
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final animateScreenBrightness(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 2298
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZ)V

    return-void
.end method

.method public final animateScreenBrightness(FFFZ)V
    .locals 3

    .line 2303
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sdrTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->animateTo(FFFZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2309
    const-string p2, "TargetScreenBrightness"

    float-to-int p3, p1

    const-wide/32 v0, 0x20000

    invoke-static {v0, v1, p2, p3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2311
    const-string p2, "debug.tracing.screen_brightness"

    .line 2312
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    .line 2315
    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 2317
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set a system property: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " value="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    invoke-virtual {p4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2317
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    :cond_1
    return-void
.end method

.method public final animateScreenStateChange(IIZ)V
    .locals 6

    .line 2328
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2329
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eq p1, v2, :cond_1

    goto/16 :goto_2

    .line 2334
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2337
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2338
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2339
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2342
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2343
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v1

    .line 2342
    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2344
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 2345
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_4
    if-eq p1, v3, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2352
    :goto_1
    invoke-virtual {p0, v3, p2, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 2358
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_7

    if-eq p1, v3, :cond_7

    .line 2359
    invoke-virtual {p0, v3, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2360
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2361
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_9

    .line 2368
    invoke-virtual {p0, v2, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_2

    .line 2384
    :cond_8
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2385
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    :cond_9
    const/4 v4, 0x3

    if-ne p1, v4, :cond_c

    .line 2392
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2393
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-ne p1, v2, :cond_a

    goto :goto_2

    .line 2398
    :cond_a
    invoke-virtual {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_2

    .line 2403
    :cond_b
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2404
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    :cond_c
    const/4 v5, 0x4

    if-ne p1, v5, :cond_10

    .line 2409
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2410
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_d

    goto :goto_2

    .line 2416
    :cond_d
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_f

    .line 2417
    invoke-virtual {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    .line 2420
    :cond_e
    invoke-virtual {p0, v5, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2424
    :cond_f
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2425
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    :cond_10
    const/4 v4, 0x6

    if-ne p1, v4, :cond_14

    .line 2430
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2431
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v4, :cond_11

    goto :goto_2

    .line 2437
    :cond_11
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v4, :cond_13

    .line 2438
    invoke-virtual {p0, v2, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result p1

    if-nez p1, :cond_12

    :goto_2
    return-void

    .line 2441
    :cond_12
    invoke-virtual {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2445
    :cond_13
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2446
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    .line 2449
    :cond_14
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2450
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_15

    .line 2451
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2454
    :cond_15
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_16

    .line 2457
    invoke-virtual {p0, v3, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2458
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2459
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    return-void

    :cond_16
    if-eqz p3, :cond_18

    .line 2460
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2462
    iget-boolean p3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz p3, :cond_17

    goto :goto_3

    :cond_17
    move v2, v3

    .line 2461
    :goto_3
    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2464
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v3, :cond_18

    .line 2466
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 2470
    :cond_18
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method

.method public final applyReduceBrightColorsSplineAdjustment()V
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 684
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public final blockScreenOff()V
    .locals 4

    .line 2103
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_0

    .line 2104
    const-string v0, "Screen off blocked"

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2105
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 2107
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v0, "Blocking screen off"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final blockScreenOn()V
    .locals 4

    .line 2085
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 2086
    const-string v0, "Screen on blocked"

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2087
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2088
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 2089
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v0, "Blocking screen on until initial contents have been drawn."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final blockScreenOnByDisplayOffload(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 8

    .line 2121
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2124
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    const-wide/32 v0, 0x20000

    .line 2126
    const-string v2, "Screen on blocked by displayoffload"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    .line 2130
    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    .line 2132
    invoke-interface {p1, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->blockScreenOn(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2133
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    .line 2135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    sub-long/2addr v4, v6

    .line 2136
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried blocking screen on for offloading but failed. So, end trace after "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    .line 2142
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string p1, "Blocking screen on for offloading."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final cancelUnblockScreenOnByDisplayOffload()V
    .locals 1

    .line 2163
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2166
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez p0, :cond_1

    :goto_0
    return-void

    .line 2170
    :cond_1
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->cancelBlockScreenOn()V

    return-void
.end method

.method public final clampScreenBrightness(F)F
    .locals 1

    .line 2290
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2293
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMin()F

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result p0

    .line 2293
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final cleanupHandlerThreadAfterStop()V
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->cleanup()V

    .line 1289
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessRangeController;->stop()V

    .line 1290
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->stop()V

    .line 1291
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1294
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {v0}, Lcom/android/server/display/WakelockController;->releaseAll()V

    .line 1296
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1299
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    .line 1301
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_1

    .line 1302
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->stop()V

    .line 1303
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_2

    .line 1308
    invoke-virtual {v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->stop()V

    .line 1311
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 1312
    invoke-virtual {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    :cond_3
    return-void
.end method

.method public final clearDisplayBrightnessFollowersLocked()V
    .locals 6

    const/4 v0, 0x0

    .line 2624
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2625
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 2626
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v3, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 2628
    invoke-interface {v1}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v4

    .line 2626
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2630
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final convertBrightnessReasonToStatsEnum(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x2

    return p0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createHbmControllerLocked(Lcom/android/server/display/HighBrightnessModeMetadata;Ljava/lang/Runnable;)Lcom/android/server/display/HighBrightnessModeController;
    .locals 16

    move-object/from16 v0, p0

    .line 2071
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    .line 2072
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    .line 2073
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_0

    .line 2075
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v1

    :goto_0
    move-object v11, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2076
    :goto_1
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 2077
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    new-instance v12, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    invoke-direct {v12, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/display/DisplayPowerController$Injector;->getHighBrightnessModeController(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)Lcom/android/server/display/HighBrightnessModeController;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 2634
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2635
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2636
    const-string v1, "Display Power Controller:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    const-string v1, "-------------------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLeadDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayBrightnessFollowers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2645
    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2650
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2652
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2653
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsDisplayInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2660
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    .line 2661
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.adjustedBrightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmTransitionPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMaxReason ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessReason ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2676
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2680
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p0

    .line 2676
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 2650
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final dumpBrightnessEvents(Ljava/io/PrintWriter;)V
    .locals 4

    .line 2802
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2804
    const-string p0, "No Automatic Brightness Adjustments"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2808
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automatic Brightness Adjustments Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Events: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2809
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/brightness/BrightnessEvent;

    const/4 v1, 0x0

    .line 2810
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3

    .line 2684
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2685
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2696
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2695
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsRbcActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2698
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2699
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->dump(Ljava/io/PrintWriter;)V

    .line 2701
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v1, :cond_0

    .line 2702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2703
    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2702
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2706
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 2707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2708
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2707
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2710
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    .line 2711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 2712
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2711
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2715
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2716
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v1, :cond_3

    .line 2717
    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2720
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2721
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    if-eqz v1, :cond_4

    .line 2722
    invoke-virtual {v1, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2725
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2726
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    if-eqz v1, :cond_5

    .line 2727
    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->dump(Ljava/io/PrintWriter;)V

    .line 2730
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2731
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    if-eqz v0, :cond_6

    .line 2732
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessRangeController;->dump(Ljava/io/PrintWriter;)V

    .line 2735
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2736
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_7

    .line 2737
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2738
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpBrightnessEvents(Ljava/io/PrintWriter;)V

    .line 2740
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpRbcEvents(Ljava/io/PrintWriter;)V

    .line 2742
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2743
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v0, :cond_8

    .line 2744
    invoke-virtual {v0, p1}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->dump(Ljava/io/PrintWriter;)V

    .line 2747
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2748
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_9

    .line 2749
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    .line 2750
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    .line 2753
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2754
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    if-eqz v0, :cond_a

    .line 2755
    invoke-virtual {v0, p1}, Lcom/android/server/display/WakelockController;->dumpLocal(Ljava/io/PrintWriter;)V

    .line 2758
    :cond_a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2759
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    if-eqz p0, :cond_b

    .line 2760
    invoke-virtual {p0, p1}, Lcom/android/server/display/state/DisplayStateController;->dump(Ljava/io/PrintWriter;)V

    :cond_b
    return-void
.end method

.method public final dumpRbcEvents(Ljava/io/PrintWriter;)V
    .locals 4

    .line 2816
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2818
    const-string p0, "No Reduce Bright Colors Adjustments"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2822
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reduce Bright Colors Adjustments Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Events: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2823
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/brightness/BrightnessEvent;

    const/4 v1, 0x0

    .line 2824
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 763
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessLevels(I)[F
    .locals 4

    .line 1977
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1980
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevels(II)[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessLuxLevels(I)[F
    .locals 4

    .line 1985
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1988
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevelsLux(II)[F

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 719
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .locals 11

    .line 1992
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    .line 1993
    :try_start_0
    new-instance v2, Landroid/hardware/display/BrightnessInfo;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v3, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v4, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v5, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v6, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v7, v0, Landroid/util/MutableInt;->value:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v8, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v9, v0, Landroid/util/MutableInt;->value:I

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    iget p0, p0, Landroid/util/MutableInt;->value:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    :goto_0
    move v10, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v2 .. v10}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFIZ)V

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2003
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    .line 866
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 2539
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    return p0
.end method

.method public getDozeBrightnessForOffload()F
    .locals 1

    .line 2519
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v0

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getLeadDisplayId()I
    .locals 0

    .line 2543
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    return p0
.end method

.method public getScreenBrightnessSetting()F
    .locals 0

    .line 2515
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result p0

    return p0
.end method

.method public final handleBrightnessModeChange()V
    .locals 4

    .line 2501
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2502
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    .line 2501
    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2505
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setUseAutoBrightness(Z)V

    if-nez v0, :cond_1

    .line 2510
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->saveBrightnessIfNeeded()V

    :cond_1
    return-void
.end method

.method public final handleOnSwitchUser(IIF)V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching user newUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userSerial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 736
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->getPreset()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 741
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    .line 742
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    .line 745
    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/android/server/display/DisplayPowerController;->setBrightness(FI)V

    .line 748
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p1, p3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setAndNotifyCurrentScreenBrightness(F)V

    .line 750
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_2

    .line 751
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 753
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->onUserSwitch()V

    .line 754
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public final handleRbcChanged()V
    .locals 4

    .line 688
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_0

    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 693
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 694
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsAdjustedBrightnessNits(F)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    .line 697
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->recalculateSplines(Z[F)V

    return-void
.end method

.method public final handleSettingsChange()V
    .locals 2

    .line 2493
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2495
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v1

    .line 2494
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setPendingScreenBrightness(F)V

    .line 2496
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updatePendingAutoBrightnessAdjustments()V

    .line 2497
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public ignoreProximitySensorUntilChanged()V
    .locals 0

    .line 1947
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->ignoreProximitySensorUntilChanged()V

    return-void
.end method

.method public final initialize(I)V
    .locals 5

    const/4 v0, 0x2

    .line 1003
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 1004
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/server/display/ColorFade;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-direct {v3, v4}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 1003
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/display/DisplayPowerController$Injector;->getDisplayPowerState(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;II)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1006
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1007
    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    .line 1009
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1010
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1012
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x64

    .line 1014
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1015
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1018
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/server/display/DisplayPowerController$Injector;->getDualRampAnimator(Lcom/android/server/display/DisplayPowerState;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)Lcom/android/server/display/RampAnimator$DualRampAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 1021
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1022
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    .line 1021
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 1023
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {p1, v3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 1025
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    .line 1026
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 1029
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1030
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    .line 1029
    invoke-virtual {p1, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result p1

    .line 1031
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3

    .line 1032
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 1035
    :cond_3
    new-instance p1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 1039
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1040
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->registerBrightnessSettingChangeListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 1042
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_auto_brightness_adj"

    .line 1043
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    const/4 v3, -0x1

    .line 1042
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1045
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_brightness_mode"

    .line 1046
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1045
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1048
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1049
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_brightness_for_als"

    .line 1050
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1049
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1053
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public isProximitySensorAvailable()Z
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorAvailable()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$blockScreenOnByDisplayOffload$7(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 0

    .line 2131
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->onDisplayOffloadUnblockScreenOn(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    return-void
.end method

.method public final synthetic lambda$createHbmControllerLocked$6(FF)F
    .locals 0

    .line 2080
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FF)F

    move-result p0

    return p0
.end method

.method public final synthetic lambda$dump$10(Ljava/io/PrintWriter;)V
    .locals 0

    .line 2680
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final synthetic lambda$initialize$5(F)V
    .locals 3

    .line 1036
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1037
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final synthetic lambda$new$0()V
    .locals 0

    .line 539
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method public final synthetic lambda$new$1()V
    .locals 0

    .line 584
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 585
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 587
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->update()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$new$2()V
    .locals 0

    .line 602
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    return-void
.end method

.method public final synthetic lambda$onDisplayChanged$4(ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 905
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 912
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 914
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 915
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    move p1, v1

    .line 918
    :goto_1
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eq p2, p3, :cond_3

    .line 920
    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 921
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 922
    iput-object p5, p0, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    .line 923
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 924
    iput-object p6, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 925
    invoke-virtual {p6}, Lcom/android/server/display/DisplayDeviceConfig;->getIdleStylusTimeoutMillis()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    .line 926
    invoke-virtual {p0, p7, p8, p9}, Lcom/android/server/display/DisplayPowerController;->loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;)V

    .line 927
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p1, p6}, Lcom/android/server/display/DisplayPowerProximityStateController;->notifyDisplayDeviceChanged(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 932
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->resetScreenState()V

    goto :goto_2

    :cond_3
    move v1, p1

    .line 935
    :goto_2
    iput-boolean p10, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 937
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    new-instance p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    move-object p9, p7

    iget p7, p8, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget p8, p8, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget p10, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    move-object p3, p4

    move-object p4, p11

    move-object p5, p12

    invoke-direct/range {p2 .. p10}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;IILandroid/os/IBinder;I)V

    invoke-virtual {p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    if-eqz v1, :cond_4

    .line 943
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    :cond_4
    :goto_3
    return-void
.end method

.method public final synthetic lambda$overrideDozeScreenState$3(I)V
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingOverrideDozeScreenStateLocked:I

    .line 840
    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/state/DisplayStateController;->overrideDozeScreenState(II)V

    .line 841
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 843
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isOffloadDozeOverrideHoldsWakelockEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 844
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 841
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final loadAmbientLightSensor()V
    .locals 3

    .line 2278
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2280
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2281
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v2

    .line 2280
    invoke-static {v1, v2, v0}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public final loadBrightnessRampRates()V
    .locals 2

    .line 1201
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 1202
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    .line 1203
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    .line 1204
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    .line 1205
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1206
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowDecreaseIdle()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    .line 1207
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1208
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowIncreaseIdle()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    .line 1209
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1210
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampDecreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 1211
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1212
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampIncreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    .line 1213
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1214
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampDecreaseMaxIdleMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    .line 1215
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1216
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampIncreaseMaxIdleMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    return-void
.end method

.method public final loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;)V
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 977
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultDozeBrightness()F

    move-result v0

    .line 976
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 978
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 979
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 980
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 981
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->reloadReduceBrightColours()V

    const/4 v0, 0x0

    .line 982
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 984
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p3, p1, p2, p0}, Lcom/android/server/display/BrightnessRangeController;->loadFromConfig(Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public final loadNitsRange(Landroid/content/res/Resources;)V
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    return-void

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v1, "Screen brightness nits configuration is unavailable; falling back"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10700c0

    .line 1225
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1224
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    return-void
.end method

.method public final loadScreenOffBrightnessSensor()V
    .locals 3

    .line 2285
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2286
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v1

    const/4 v2, 0x0

    .line 2285
    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public final logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;FLcom/android/server/display/DisplayBrightnessState;)V
    .locals 32

    move-object/from16 v0, p0

    .line 2951
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v1

    .line 2952
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v2

    .line 2955
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMax()F

    move-result v3

    cmpl-float v3, p2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move/from16 v20, v5

    goto :goto_0

    :cond_0
    move/from16 v20, v4

    .line 2956
    :goto_0
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2957
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v8

    .line 2958
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isLowPowerModeSet()Z

    move-result v3

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPowerFactor()F

    move-result v3

    move v12, v3

    goto :goto_1

    :cond_1
    move v12, v6

    .line 2959
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getRbcStrength()I

    move-result v3

    :goto_2
    move v13, v3

    goto :goto_3

    :cond_2
    const/4 v3, -0x1

    goto :goto_2

    .line 2961
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v3

    if-nez v3, :cond_3

    move v14, v6

    goto :goto_4

    .line 2962
    :cond_3
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMax()F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v3

    move v14, v3

    .line 2965
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getThermalMax()F

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    :goto_5
    move v15, v6

    goto :goto_6

    .line 2966
    :cond_4
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getThermalMax()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v6

    goto :goto_5

    .line 2967
    :goto_6
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    if-eqz v3, :cond_e

    .line 2968
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2970
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getInitialBrightness()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v7

    .line 2972
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getLux()F

    move-result v9

    .line 2973
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPhysicalDisplayId()Ljava/lang/String;

    move-result-object v10

    .line 2974
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->wasShortTermModelActive()Z

    move-result v11

    .line 2979
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isAutomaticBrightnessEnabled()Z

    move-result v16

    .line 2981
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->convertBrightnessReasonToStatsEnum(I)I

    move-result v18

    .line 2982
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerController;->nitsToRangeIndex(F)I

    move-result v19

    .line 2984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v0

    if-ne v0, v5, :cond_5

    move/from16 v21, v5

    goto :goto_7

    :cond_5
    move/from16 v21, v4

    .line 2985
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    move/from16 v22, v5

    goto :goto_8

    :cond_6
    move/from16 v22, v4

    :goto_8
    and-int/lit8 v0, v1, 0x2

    if-lez v0, :cond_7

    move/from16 v23, v5

    goto :goto_9

    :cond_7
    move/from16 v23, v4

    .line 2987
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result v24

    and-int/lit8 v0, v1, 0x1

    if-lez v0, :cond_8

    move/from16 v25, v5

    goto :goto_a

    :cond_8
    move/from16 v25, v4

    .line 2990
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v26

    and-int/lit8 v0, v2, 0x2

    if-lez v0, :cond_9

    move/from16 v27, v5

    goto :goto_b

    :cond_9
    move/from16 v27, v4

    :goto_b
    and-int/lit8 v0, v2, 0x4

    if-lez v0, :cond_a

    move/from16 v28, v5

    goto :goto_c

    :cond_a
    move/from16 v28, v4

    :goto_c
    and-int/lit8 v0, v2, 0x8

    if-lez v0, :cond_b

    move/from16 v29, v5

    goto :goto_d

    :cond_b
    move/from16 v29, v4

    .line 2994
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getAutoBrightnessMode()I

    move-result v0

    if-ne v0, v5, :cond_c

    move/from16 v30, v5

    goto :goto_e

    :cond_c
    move/from16 v30, v4

    :goto_e
    and-int/lit8 v0, v2, 0x20

    if-lez v0, :cond_d

    move/from16 v31, v5

    goto :goto_f

    :cond_d
    move/from16 v31, v4

    :goto_f
    const/16 v6, 0x1ee

    const/16 v17, 0x1

    .line 2968
    invoke-static/range {v6 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->write(IFFFLjava/lang/String;ZFIFFZIIIZZZZIZZZZZZZ)V

    :cond_e
    return-void
.end method

.method public final logDisplayPolicyChanged(I)V
    .locals 1

    .line 2486
    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x6a0

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x6

    .line 2487
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2488
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 2489
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final logHbmBrightnessStats(FI)V
    .locals 1

    .line 2893
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    monitor-enter p0

    const/16 v0, 0x1a1

    .line 2894
    :try_start_0
    invoke-static {v0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    .line 2896
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final nitsToRangeIndex(F)I
    .locals 2

    const/4 p0, 0x0

    .line 2902
    :goto_0
    sget-object v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 2903
    aget v0, v0, p0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 2904
    sget-object p1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    aget p0, p1, p0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x26

    return p0
.end method

.method public final noteScreenBrightness(F)V
    .locals 1

    .line 2845
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_1

    .line 2848
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBrightnessIntRangeUserPerceptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2849
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntSetting(Landroid/content/Context;F)I

    move-result p1

    goto :goto_0

    .line 2850
    :cond_0
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    .line 2851
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v0, p0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final noteScreenState(II)V
    .locals 2

    const/16 v0, 0x24d

    .line 2832
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 2834
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 2836
    :try_start_0
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final notifyBrightnessTrackerChanged(FZZZZZ)V
    .locals 10

    .line 2568
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2569
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v2

    if-nez p5, :cond_4

    .line 2576
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_4

    .line 2578
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p4, :cond_4

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz p1, :cond_4

    if-eqz p6, :cond_4

    const/4 p1, 0x0

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_2

    .line 2586
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_1

    .line 2587
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p2, 0x0

    :cond_2
    move v3, p2

    .line 2596
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz p2, :cond_3

    .line 2597
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    :goto_0
    move v4, p1

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2599
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2601
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2602
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->getLastSensorValues()[F

    move-result-object v8

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2603
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getLastSensorTimestamps()[J

    move-result-object v9

    move v5, p3

    .line 2599
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZLjava/lang/String;[F[J)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onBootCompleted()V
    .locals 4

    .line 2007
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2008
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;I)V
    .locals 15

    move/from16 v0, p2

    .line 881
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 882
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    if-nez v5, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Device is null in DisplayPowerController for display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 885
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 884
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 889
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    .line 890
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v7

    .line 891
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v8

    .line 892
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v9

    .line 893
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v10

    .line 894
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v3

    .line 895
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v4

    .line 896
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 897
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    move v12, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 899
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 900
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v13, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 901
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 902
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPowerThrottlingDataIdLocked()Ljava/lang/String;

    move-result-object v14

    .line 904
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 945
    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    .line 904
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onDisplayOffloadUnblockScreenOn(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 3

    .line 2146
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2148
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public onSwitchUser(IIF)V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 724
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public overrideDozeScreenState(II)V
    .locals 3

    .line 826
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New offload doze override: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-eqz v0, :cond_2

    .line 828
    invoke-static {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isOffloadDozeOverrideHoldsWakelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingOverrideDozeScreenStateLocked:I

    .line 836
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 847
    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 837
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p0

    .line 836
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz p0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    :cond_0
    return-void
.end method

.method public postBrightnessChangeRunnable()V
    .locals 2

    .line 2064
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final readyToUpdateDisplayState()Z
    .locals 1

    .line 3007
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

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

.method public final reloadReduceBrightColours()V
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    :cond_0
    return-void
.end method

.method public removeDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerController;)V
    .locals 3

    .line 2614
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2615
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 2616
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v2, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    .line 2618
    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide p0

    .line 2616
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2619
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reportStats(F)V
    .locals 5

    .line 2859
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2864
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    .line 2865
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    if-nez v1, :cond_1

    .line 2866
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 2868
    :cond_1
    iget v1, v1, Landroid/util/MutableFloat;->value:F

    .line 2869
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2872
    :goto_0
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v1, v4, v1

    if-lez v1, :cond_3

    move v2, v3

    :cond_3
    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 2875
    :cond_5
    :goto_2
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 2876
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eq v0, v2, :cond_6

    .line 2879
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->logHbmBrightnessStats(FI)V

    return-void

    .line 2882
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2883
    iput v3, v0, Landroid/os/Message;->what:I

    .line 2884
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2885
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2886
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    .line 2869
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 3

    .line 792
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPowerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", waitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 799
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 802
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 803
    invoke-virtual {v1, p2}, Lcom/android/server/display/DisplayPowerProximityStateController;->setPendingWaitForNegativeProximityLocked(Z)Z

    move-result p2

    .line 805
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_2

    .line 806
    new-instance p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    :goto_0
    move p2, v2

    goto :goto_1

    .line 808
    :cond_2
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 809
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    const/4 p1, 0x0

    .line 814
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 815
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez p1, :cond_4

    .line 816
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 817
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 821
    :cond_4
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return p0

    .line 822
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final saveBrightnessInfo(F)Z
    .locals 1

    const/4 v0, 0x0

    .line 2012
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z

    move-result p0

    return p0
.end method

.method public final saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z
    .locals 6

    .line 2021
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    .line 2022
    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 2023
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v1

    :cond_1
    const/4 v3, 0x0

    if-eqz p3, :cond_2

    .line 2025
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-eqz p3, :cond_3

    .line 2027
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p3

    goto :goto_2

    .line 2028
    :cond_3
    new-instance p3, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {p3, v3}, Lcom/android/server/display/brightness/BrightnessReason;-><init>(I)V

    .line 2029
    :goto_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2030
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMin()F

    move-result v3

    .line 2029
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2031
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2032
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v3

    .line 2031
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2035
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v3, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 2036
    invoke-virtual {v3, v5, p1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result p1

    .line 2038
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v3, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 2039
    invoke-virtual {v3, v5, p2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2041
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v3, p2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 2042
    invoke-virtual {p2, v3, v1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2044
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, p2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 2045
    invoke-virtual {p2, v1, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2047
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, p2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2049
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getHighBrightnessMode()I

    move-result v2

    .line 2048
    invoke-virtual {p2, v1, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2050
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, p2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2052
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getTransitionPoint()F

    move-result v2

    .line 2051
    invoke-virtual {p2, v1, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2053
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, p2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 2054
    invoke-virtual {p2, v1, v4}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result p2

    or-int/2addr p1, p2

    .line 2056
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    .line 2058
    invoke-virtual {p3}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result p3

    .line 2057
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result p0

    or-int/2addr p0, p1

    .line 2059
    monitor-exit v0

    return p0

    .line 2060
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z
    .locals 0

    .line 2016
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    move-result p0

    return p0
.end method

.method public final sendOnStateChangedWithWakelock()V
    .locals 2

    .line 2478
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2481
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->getOnStateChangedRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final sendUpdatePowerState()V
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 990
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendUpdatePowerStateLocked()V
    .locals 4

    .line 995
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 996
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 997
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 998
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)V
    .locals 1

    .line 3233
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0xf

    .line 3234
    iput v0, p0, Landroid/os/Message;->what:I

    .line 3235
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 3236
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setAnimatorRampSpeeds(Z)V
    .locals 4

    .line 1244
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-nez v0, :cond_0

    return-void

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAdaptiveTone1Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1248
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    return-void

    .line 1252
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    return-void
.end method

.method public setAutoBrightnessLoggingEnabled(Z)V
    .locals 0

    .line 3215
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_0

    .line 3216
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public setAutomaticScreenBrightnessMode(I)V
    .locals 3

    .line 1237
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    .line 1238
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1239
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1240
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public setBrightness(F)V
    .locals 1

    .line 2526
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result p1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2527
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result p0

    .line 2526
    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    return-void
.end method

.method public setBrightness(FI)V
    .locals 1

    .line 2534
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result p1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2535
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result p0

    .line 2534
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FIF)V

    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 2

    .line 1952
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1954
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setBrightnessFromOffload(F)V
    .locals 3

    .line 1970
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1971
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x11

    .line 1970
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1972
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public setBrightnessOverrideRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;)V
    .locals 3

    .line 853
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 854
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {p0}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public setBrightnessToFollow(FFFZ)V
    .locals 1

    .line 2548
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0, p3}, Lcom/android/server/display/BrightnessRangeController;->onAmbientLuxChange(F)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    .line 2550
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p2, p1, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(FZ)V

    goto :goto_0

    .line 2552
    :cond_0
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p3, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromNits(F)F

    move-result p2

    .line 2553
    invoke-static {p2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2554
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p1, p2, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(FZ)V

    goto :goto_0

    .line 2557
    :cond_1
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p2, p1, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(FZ)V

    .line 2561
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public setDisplayOffloadSession(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-ne p1, v0, :cond_0

    return-void

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 862
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    return-void
.end method

.method public setDisplayWhiteBalanceLoggingEnabled(Z)V
    .locals 1

    .line 3226
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x10

    .line 3227
    iput v0, p0, Landroid/os/Message;->what:I

    .line 3228
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 3229
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setDwbcLoggingEnabled(I)V
    .locals 2

    .line 1931
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1933
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    .line 1934
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    :cond_1
    return-void
.end method

.method public final setDwbcOverride(F)V
    .locals 1

    .line 1913
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    .line 1914
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    :cond_0
    return-void
.end method

.method public final setDwbcStrongMode(I)V
    .locals 1

    .line 1924
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1926
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setStrongModeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final setReportedScreenState(I)V
    .locals 3

    const-wide/32 v0, 0x20000

    .line 2270
    const-string v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2271
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2273
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    :cond_0
    return-void
.end method

.method public final setScreenState(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 2174
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    move-result p0

    return p0
.end method

.method public final setScreenState(IIZ)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    .line 2180
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    if-eq v5, p1, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 2184
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    if-nez v6, :cond_3

    .line 2185
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayPowerController;->blockScreenOnByDisplayOffload(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    goto :goto_3

    :cond_3
    if-nez v4, :cond_5

    .line 2186
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    if-eqz v4, :cond_5

    .line 2188
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isOffloadSessionCancelBlockScreenOnEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2189
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->cancelUnblockScreenOnByDisplayOffload()V

    .line 2191
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 2192
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    :cond_5
    :goto_3
    const/4 v4, 0x3

    const/4 v6, -0x1

    if-nez v5, :cond_6

    .line 2195
    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v7, v6, :cond_a

    :cond_6
    if-eqz v2, :cond_9

    .line 2198
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v7}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2199
    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eq v7, v3, :cond_8

    if-ne v7, v6, :cond_7

    goto :goto_4

    .line 2204
    :cond_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v3, :cond_9

    return v0

    .line 2201
    :cond_8
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2202
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 2203
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v3, v7, v8}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    :cond_9
    if-nez p3, :cond_a

    if-eqz v5, :cond_a

    .line 2210
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->readyToUpdateDisplayState()Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez p3, :cond_a

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez p3, :cond_a

    const-wide/32 v7, 0x20000

    .line 2213
    const-string p3, "ScreenState"

    invoke-static {v7, v8, p3, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2215
    const-string p3, "debug.tracing.screen_state"

    .line 2216
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2219
    :try_start_0
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v5

    .line 2221
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set a system property: key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " value="

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2222
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2221
    invoke-static {v7, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :goto_5
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/display/DisplayPowerState;->setScreenState(II)V

    .line 2227
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    :cond_a
    if-eqz v2, :cond_b

    .line 2237
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 2238
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result p1

    if-nez p1, :cond_b

    .line 2239
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2241
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-boolean p3, p0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    invoke-interface {p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(IZ)V

    goto :goto_6

    :cond_b
    if-nez v2, :cond_c

    .line 2242
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne p1, v4, :cond_c

    .line 2247
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 2248
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-boolean p3, p0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    invoke-interface {p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(IZ)V

    .line 2249
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    :cond_c
    :goto_6
    if-nez v2, :cond_f

    .line 2251
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz p1, :cond_d

    if-ne p1, v6, :cond_f

    .line 2254
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2255
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_e

    .line 2256
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_7

    .line 2258
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2260
    :goto_7
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 2261
    const-string p1, "DisplayPowerController"

    const-string p2, "Window Manager Policy screenTurningOn complete"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    :cond_f
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez p1, :cond_10

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez p0, :cond_10

    move v0, v1

    :cond_10
    return v0
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 2

    .line 1964
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1965
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 1964
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1966
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTemporaryBrightness(F)V
    .locals 2

    .line 1958
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1959
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1958
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1960
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 34

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    .line 1057
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->isAutoBrightnessAvailable()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1063
    :cond_0
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1065
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 1066
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/display/DisplayPowerController$Injector;->getDefaultModeBrightnessMapper(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    const/4 v3, 0x0

    .line 1068
    invoke-virtual {v6, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1071
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111017c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1074
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v7, 0x1

    .line 1075
    invoke-static {v0, v4, v7, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1079
    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1084
    :cond_1
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v7, 0x2

    .line 1085
    invoke-static {v0, v4, v7, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    .line 1087
    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 1088
    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1091
    :cond_2
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1092
    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAutoBrightnessModeBedtimeWearEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1093
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v7, 0x3

    .line 1094
    invoke-static {v0, v4, v7, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1097
    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1103
    :cond_3
    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_4

    .line 1104
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->getUserLux()F

    move-result v4

    .line 1105
    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController;->getUserNits()F

    move-result v5

    move/from16 v31, v4

    move/from16 v32, v5

    goto :goto_0

    :cond_4
    const/high16 v4, -0x40800000    # -1.0f

    move/from16 v31, v4

    move/from16 v32, v31

    :goto_0
    if-eqz v1, :cond_b

    .line 1110
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1111
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v22

    .line 1114
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1115
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v23

    .line 1118
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1119
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v24

    .line 1122
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1123
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v25

    .line 1125
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1126
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLightDebounce()J

    move-result-wide v13

    .line 1127
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1128
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessDarkeningLightDebounce()J

    move-result-wide v15

    .line 1129
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1130
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLightDebounceIdle()J

    move-result-wide v17

    .line 1131
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1132
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessDarkeningLightDebounceIdle()J

    move-result-wide v19

    .line 1133
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    .line 1136
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1138
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 1140
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    move v12, v11

    goto :goto_1

    :cond_5
    if-le v0, v11, :cond_6

    .line 1145
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v12, v0

    .line 1150
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController;->loadAmbientLightSensor()V

    .line 1153
    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_7

    iget v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v3, :cond_7

    .line 1154
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v3}, Lcom/android/server/display/BrightnessTracker;->setLightSensor(Landroid/hardware/Sensor;)V

    .line 1157
    :cond_7
    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_8

    .line 1158
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    :cond_8
    move-object v0, v1

    .line 1160
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    iget v10, v2, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v9, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    move-object/from16 p1, v0

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    move-object/from16 v28, v0

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1169
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonShort()I

    move-result v29

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1170
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonLong()I

    move-result v30

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    move-object/from16 v26, v8

    const/4 v8, 0x0

    move-object/from16 v27, v9

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    .line 1160
    invoke-virtual/range {v1 .. v33}, Lcom/android/server/display/DisplayPowerController$Injector;->getAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/util/SparseArray;IFFFIIJJJJZLcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController;IIFFLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v8

    iput-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1171
    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v9, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v10, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v11, v2, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-boolean v13, v2, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iget v14, v2, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    move-object v12, v0

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setUpAutoBrightness(Lcom/android/server/display/AutomaticBrightnessController;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V

    .line 1174
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v3, Lcom/android/server/display/brightness/BrightnessEvent;

    const/16 v4, 0x64

    invoke-direct {v1, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 1176
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1177
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v1, :cond_9

    .line 1178
    invoke-virtual {v1}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->stop()V

    const/4 v1, 0x0

    .line 1179
    iput-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 1181
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController;->loadScreenOffBrightnessSensor()V

    .line 1182
    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1183
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getScreenOffBrightnessSensorValueToLux()[I

    move-result-object v12

    .line 1184
    iget-object v9, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_a

    if-eqz v12, :cond_a

    .line 1185
    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v10, v2, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v11, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;

    invoke-direct {v11}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;-><init>()V

    move-object v13, v0

    .line 1186
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/display/DisplayPowerController$Injector;->getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    :cond_a
    :goto_2
    return-void

    .line 1196
    :cond_b
    iput-boolean v3, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    return-void
.end method

.method public stop()V
    .locals 5

    .line 955
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 956
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->clearDisplayBrightnessFollowersLocked()V

    const/4 v1, 0x1

    .line 958
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 959
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 960
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v3}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 962
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_0

    .line 963
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 966
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->stop()V

    .line 968
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 969
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stylusGestureStarted(J)V
    .locals 5

    const-wide/32 v0, 0xf4240

    .line 3011
    div-long/2addr p1, v0

    .line 3012
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 3014
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3016
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0x13

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 3017
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3018
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    return-void

    :catchall_0
    move-exception p0

    .line 3017
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unblockScreenOff()V
    .locals 4

    .line 2112
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2113
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2115
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen off after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    const-string p0, "Screen off blocked"

    const/4 v0, 0x0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final unblockScreenOn()V
    .locals 4

    .line 2094
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2095
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2096
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2097
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen on after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const-string p0, "Screen on blocked"

    const/4 v0, 0x0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final unblockScreenOnByDisplayOffload()V
    .locals 4

    .line 2152
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2155
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    .line 2156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    sub-long/2addr v0, v2

    .line 2157
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen on for offloading after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    const-string p0, "Screen on blocked by displayoffload"

    const/4 v0, 0x0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .line 1939
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public final updatePowerState()V
    .locals 3

    .line 1318
    const-string v0, "DisplayPowerController#updatePowerState"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerStateInternal()V

    .line 1321
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final updatePowerStateInternal()V
    .locals 33

    move-object/from16 v0, p0

    .line 1329
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1330
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    .line 1332
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1333
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v2, :cond_0

    .line 1334
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3a

    :cond_0
    const/4 v7, 0x0

    .line 1336
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1337
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v2, :cond_1

    .line 1338
    monitor-exit v1

    return-void

    .line 1341
    :cond_1
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v8, 0x1

    if-nez v3, :cond_2

    .line 1342
    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v2, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1343
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 1344
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move v2, v8

    const/4 v9, 0x3

    goto :goto_1

    .line 1349
    :cond_2
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v5, :cond_3

    .line 1350
    iget v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1351
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1352
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 1353
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1354
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    :goto_0
    move v9, v5

    move v2, v7

    goto :goto_1

    .line 1356
    :cond_3
    iget v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    goto :goto_0

    .line 1359
    :goto_1
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1361
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 1362
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 1366
    invoke-virtual {v1, v5, v6, v11}, Lcom/android/server/display/state/DisplayStateController;->updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Landroid/util/Pair;

    move-result-object v11

    .line 1367
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v2, :cond_5

    .line 1371
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->readyToUpdateDisplayState()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v7

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->initialize(I)V

    .line 1377
    :cond_5
    iget-object v2, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1378
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 1379
    invoke-virtual {v5}, Lcom/android/server/display/state/DisplayStateController;->shouldPerformScreenOffTransition()Z

    move-result v5

    .line 1377
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIZ)V

    .line 1380
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v13

    .line 1385
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1387
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    if-nez v2, :cond_6

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v1, v8, :cond_7

    :cond_6
    invoke-static {v13}, Landroid/view/Display;->isDozeState(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v1, v8

    goto :goto_3

    :cond_8
    move v1, v7

    goto :goto_3

    :cond_9
    invoke-static {v13}, Landroid/view/Display;->isDozeState(I)Z

    move-result v1

    .line 1388
    :goto_3
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    iget-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    .line 1389
    invoke-virtual {v2, v5, v13, v6, v12}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v2

    .line 1394
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v5

    .line 1395
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v6

    .line 1396
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1397
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->isSlowChange()Z

    move-result v21

    .line 1399
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getCustomAnimationRate()F

    move-result v12

    .line 1400
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessAdjustmentFlag()I

    move-result v22

    .line 1401
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1402
    invoke-virtual {v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getIsUserSetScreenBrightnessUpdated()Z

    move-result v19

    .line 1403
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 1404
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 1407
    :cond_a
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1408
    invoke-virtual {v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozing()Z

    move-result v14

    .line 1410
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v15}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v15

    const/4 v4, -0x1

    if-nez v15, :cond_d

    .line 1413
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v15, :cond_d

    .line 1415
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v16

    if-eqz v16, :cond_c

    iget-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v7, :cond_b

    if-ne v7, v8, :cond_c

    if-nez v14, :cond_c

    :cond_b
    iget v7, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    if-ne v7, v4, :cond_c

    move v7, v8

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v15, v7}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 1424
    :cond_d
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1425
    invoke-virtual {v7}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isShortTermModelActive()Z

    move-result v7

    .line 1426
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->isUserInitiatedChange()Z

    move-result v15

    .line 1428
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v4

    const/4 v8, 0x2

    if-nez v4, :cond_13

    .line 1430
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_e

    .line 1431
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz v1, :cond_f

    .line 1435
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v15, 0x0

    invoke-virtual {v4, v8, v15}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    :cond_e
    :goto_5
    move v4, v12

    goto :goto_6

    :cond_f
    const/4 v15, 0x0

    .line 1437
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAutoBrightnessModeBedtimeWearEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    if-eqz v4, :cond_10

    .line 1439
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v8, 0x3

    invoke-virtual {v4, v8, v15}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    goto :goto_5

    .line 1442
    :cond_10
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v4, v15, v15}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    goto :goto_5

    .line 1447
    :goto_6
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1448
    invoke-virtual {v8}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v15

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v26, v1

    iget v1, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1450
    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getLastUserSetScreenBrightness()F

    move-result v18

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    move/from16 v20, v1

    move/from16 v17, v8

    .line 1447
    invoke-virtual/range {v12 .. v20}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessState(IZIIZFZZ)V

    move/from16 v17, v13

    .line 1455
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1456
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz v19, :cond_12

    :cond_11
    const/4 v1, 0x1

    goto :goto_7

    :cond_12
    const/4 v1, 0x0

    goto :goto_7

    :cond_13
    move/from16 v26, v1

    move v4, v12

    move/from16 v17, v13

    move v1, v15

    .line 1461
    :goto_7
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    goto :goto_8

    .line 1463
    :cond_14
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessDisabledDueToDisplayOff()Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v8, 0x3

    goto :goto_8

    :cond_15
    const/4 v8, 0x2

    .line 1467
    :goto_8
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v12, v8}, Lcom/android/server/display/BrightnessRangeController;->setAutoBrightnessEnabled(I)V

    .line 1470
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->shouldUpdateScreenBrightnessSetting()Z

    move-result v8

    .line 1471
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v12}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v12

    .line 1473
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v13}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v13

    const/high16 v18, -0x40800000    # -1.0f

    const/4 v14, 0x4

    if-nez v13, :cond_19

    .line 1475
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_17

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1476
    invoke-virtual {v13}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v13

    const/16 v15, 0xb

    if-ne v13, v15, :cond_16

    goto :goto_9

    .line 1507
    :cond_16
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    goto :goto_a

    .line 1477
    :cond_17
    :goto_9
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 1478
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v5, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result v5

    .line 1480
    invoke-static {v5}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v13

    if-nez v13, :cond_1a

    cmpl-float v13, v5, v18

    if-nez v13, :cond_18

    goto :goto_b

    .line 1501
    :cond_18
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 1503
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v5

    :cond_19
    :goto_a
    move v13, v8

    move/from16 v8, v21

    goto :goto_e

    .line 1482
    :cond_1a
    :goto_b
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1483
    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessController;->getRawAutomaticScreenBrightness()F

    move-result v6

    .line 1487
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1489
    invoke-virtual {v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    move-result v8

    if-nez v8, :cond_1b

    const/16 v21, 0x1

    goto :goto_c

    :cond_1b
    const/16 v21, 0x0

    .line 1490
    :goto_c
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1492
    invoke-virtual {v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentReasonsFlags()I

    move-result v22

    cmpl-float v8, v12, v5

    if-eqz v8, :cond_1c

    const/4 v8, 0x1

    goto :goto_d

    :cond_1c
    const/4 v8, 0x0

    .line 1494
    :goto_d
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 1495
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v13, v14}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 1496
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v13, :cond_1d

    const/4 v15, 0x0

    .line 1497
    invoke-virtual {v13, v15}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    :cond_1d
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 1499
    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayPowerController;->setBrightnessFromOffload(F)V

    goto :goto_a

    .line 1511
    :goto_e
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_1e

    .line 1512
    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v5

    :cond_1e
    if-eqz v26, :cond_23

    .line 1515
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_1f

    .line 1516
    invoke-virtual {v2}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v14

    const-string v14, "FallbackBrightnessStrategy"

    .line 1517
    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    goto :goto_f

    :cond_1f
    move/from16 v16, v14

    .line 1518
    :goto_f
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v13}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result v13

    if-eqz v13, :cond_21

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-eqz v13, :cond_21

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v13, :cond_20

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1520
    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v13

    if-nez v13, :cond_21

    .line 1525
    :cond_20
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getDozeBrightnessForOffload()F

    move-result v6

    .line 1526
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v5

    .line 1527
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 1528
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1529
    invoke-virtual {v13}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v14

    or-int/lit8 v14, v14, 0x4

    .line 1528
    invoke-virtual {v13, v14}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    goto :goto_10

    .line 1530
    :cond_21
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result v13

    if-nez v13, :cond_22

    .line 1532
    iget v6, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 1533
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v5

    .line 1534
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    :cond_22
    :goto_10
    const/4 v13, 0x0

    goto :goto_11

    :cond_23
    move/from16 v16, v14

    .line 1539
    :cond_24
    :goto_11
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v14}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v14

    if-nez v14, :cond_27

    .line 1542
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_27

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1543
    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v14

    if-eqz v14, :cond_27

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v14, :cond_27

    .line 1546
    invoke-virtual {v14}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    move-result v5

    .line 1548
    invoke-static {v5}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1549
    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v6

    .line 1550
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1551
    invoke-virtual {v13}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v13

    cmpl-float v13, v13, v6

    if-eqz v13, :cond_25

    const/4 v13, 0x1

    goto :goto_12

    :cond_25
    const/4 v13, 0x0

    .line 1553
    :goto_12
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v15, 0x9

    invoke-virtual {v14, v15}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    move/from16 v32, v6

    move v6, v5

    move/from16 v5, v32

    goto :goto_13

    :cond_26
    move v6, v5

    .line 1560
    :cond_27
    :goto_13
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_29

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v14}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v14

    if-nez v14, :cond_29

    .line 1562
    invoke-virtual {v0, v12}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v5

    cmpl-float v6, v5, v12

    if-eqz v6, :cond_28

    const/4 v13, 0x1

    .line 1569
    :cond_28
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    move v15, v5

    move v5, v12

    :goto_14
    move v6, v13

    goto :goto_15

    :cond_29
    move v15, v5

    move v5, v6

    goto :goto_14

    .line 1572
    :goto_15
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v12, :cond_2a

    const/4 v12, 0x0

    goto :goto_16

    .line 1573
    :cond_2a
    invoke-virtual {v12}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v12

    :goto_16
    const/4 v14, 0x0

    .line 1574
    :goto_17
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v14, v13, :cond_2b

    .line 1575
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/display/DisplayPowerController;

    move/from16 v21, v1

    .line 1576
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1577
    invoke-virtual {v1, v5}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    move-result v1

    .line 1576
    invoke-virtual {v13, v5, v1, v12, v8}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v21

    goto :goto_17

    :cond_2b
    move/from16 v21, v1

    .line 1589
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object v13, v2

    move/from16 v1, v16

    move/from16 v16, v8

    const/4 v8, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->clamp(Lcom/android/server/display/DisplayBrightnessState;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZI)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v12

    move-object v14, v13

    move/from16 v13, v17

    .line 1592
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v2

    .line 1593
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->isSlowChange()Z

    move-result v3

    .line 1596
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getCustomAnimationRate()F

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1597
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v8

    invoke-virtual {v15, v8}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    if-eqz v6, :cond_2c

    .line 1605
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1607
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v8

    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v15

    .line 1606
    invoke-static {v5, v8, v15}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1608
    invoke-virtual {v15}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v15

    .line 1609
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v1

    .line 1608
    invoke-static {v15, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1605
    invoke-virtual {v6, v8, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateScreenBrightnessSetting(FF)V

    .line 1617
    :cond_2c
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v1, v2, v5, v12}, Lcom/android/server/display/BrightnessRangeController;->onBrightnessChanged(FFLcom/android/server/display/DisplayBrightnessState;)V

    .line 1623
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1624
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v8, 0x7

    if-eq v1, v8, :cond_2e

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1626
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_18

    :cond_2d
    move v6, v5

    const/4 v5, 0x0

    goto :goto_19

    :cond_2e
    :goto_18
    move v6, v5

    const/4 v5, 0x1

    .line 1628
    :goto_19
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v1, :cond_4b

    .line 1629
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v1, :cond_32

    const/4 v1, 0x2

    if-ne v13, v1, :cond_31

    .line 1631
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    const/high16 v23, 0x3f800000    # 1.0f

    if-nez v1, :cond_2f

    iget-boolean v15, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v15, :cond_2f

    .line 1632
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    const/4 v15, 0x1

    .line 1633
    iput v15, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    const/4 v1, 0x2

    goto :goto_1a

    :cond_2f
    const/4 v15, 0x1

    if-ne v1, v15, :cond_30

    .line 1634
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_30

    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1636
    invoke-static {v2, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x2

    .line 1638
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_1a

    :cond_30
    const/4 v1, 0x2

    .line 1639
    iget v15, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v15, v1, :cond_33

    const/4 v15, 0x0

    .line 1640
    iput v15, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_1a

    :cond_31
    const/4 v15, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    .line 1643
    iput v15, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_1a

    :cond_32
    const/4 v1, 0x2

    const/high16 v23, 0x3f800000    # 1.0f

    :cond_33
    :goto_1a
    if-ne v13, v1, :cond_34

    .line 1647
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v1, :cond_35

    :cond_34
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 1649
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->shouldSkipRampBecauseOfProximityChangeToNegative()Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_35
    const/4 v1, 0x1

    goto :goto_1b

    :cond_36
    const/4 v1, 0x0

    .line 1654
    :goto_1b
    invoke-static {v13}, Landroid/view/Display;->isDozeState(I)Z

    move-result v15

    if-eqz v15, :cond_37

    iget-boolean v15, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v15, :cond_37

    const/4 v15, 0x1

    goto :goto_1c

    :cond_37
    const/4 v15, 0x0

    .line 1657
    :goto_1c
    iget-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v8, :cond_38

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1658
    invoke-virtual {v8}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v8

    cmpl-float v8, v8, v23

    if-nez v8, :cond_38

    const/4 v8, 0x1

    :goto_1d
    move/from16 v27, v1

    goto :goto_1e

    :cond_38
    const/4 v8, 0x0

    goto :goto_1d

    .line 1667
    :goto_1e
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v1

    .line 1674
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v28

    cmpl-float v28, v28, v18

    if-eqz v28, :cond_39

    .line 1678
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v28

    move/from16 v29, v3

    move/from16 v3, v28

    move/from16 v28, v2

    goto :goto_1f

    :cond_39
    move/from16 v28, v2

    .line 1679
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getHighBrightnessMode()I

    move-result v2

    move/from16 v29, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3a

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1681
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v2

    const/16 v25, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3a

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1682
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v2

    and-int/2addr v2, v3

    if-nez v2, :cond_3a

    .line 1686
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getHdrBrightnessValue()F

    move-result v2

    .line 1687
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1688
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessRangeController;->getHdrTransitionRate()F

    move-result v3

    .line 1687
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1689
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v30, v2

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    move/from16 v3, v30

    goto :goto_1f

    :cond_3a
    const/4 v2, 0x4

    move v3, v1

    .line 1694
    :goto_1f
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v30, v4

    iget v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v31, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v2, :cond_3b

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3b

    const/4 v4, 0x6

    if-ne v2, v4, :cond_3c

    :cond_3b
    move/from16 v2, v18

    const/16 v29, 0x0

    goto :goto_20

    :cond_3c
    move/from16 v2, v30

    .line 1702
    :goto_20
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v4

    .line 1703
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getSdrScreenBrightness()F

    move-result v5

    .line 1705
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v16

    if-eqz v16, :cond_42

    cmpl-float v4, v3, v4

    if-nez v4, :cond_3d

    cmpl-float v16, v1, v5

    if-eqz v16, :cond_42

    :cond_3d
    if-nez v27, :cond_3f

    if-nez v15, :cond_3f

    if-eqz v8, :cond_3f

    if-eqz v31, :cond_3e

    goto :goto_21

    :cond_3e
    const/4 v8, 0x0

    goto :goto_22

    :cond_3f
    :goto_21
    const/4 v8, 0x1

    .line 1710
    :goto_22
    invoke-static {v1, v5}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v5

    .line 1712
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v15}, Lcom/android/server/display/feature/DisplayManagerFlags;->isFastHdrTransitionsEnabled()Z

    move-result v15

    if-eqz v15, :cond_40

    if-nez v8, :cond_40

    if-eqz v5, :cond_40

    const/16 v29, 0x0

    :cond_40
    if-eqz v8, :cond_41

    const/4 v8, 0x0

    .line 1722
    invoke-virtual {v0, v3, v1, v8}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFF)V

    goto :goto_23

    :cond_41
    const/4 v8, 0x0

    cmpl-float v5, v2, v8

    if-lez v5, :cond_43

    const/4 v15, 0x1

    .line 1725
    invoke-virtual {v0, v3, v1, v2, v15}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZ)V

    :cond_42
    :goto_23
    const/4 v8, 0x0

    goto :goto_27

    :cond_43
    if-lez v4, :cond_44

    const/4 v2, 0x1

    goto :goto_24

    :cond_44
    const/4 v2, 0x0

    .line 1729
    :goto_24
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_45

    .line 1730
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x1

    goto :goto_25

    :cond_45
    const/4 v4, 0x0

    :goto_25
    if-eqz v2, :cond_47

    if-eqz v29, :cond_47

    if-eqz v4, :cond_46

    .line 1732
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    goto :goto_26

    .line 1733
    :cond_46
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    goto :goto_26

    :cond_47
    if-eqz v2, :cond_48

    if-nez v29, :cond_48

    .line 1735
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    goto :goto_26

    :cond_48
    if-nez v2, :cond_4a

    if-eqz v29, :cond_4a

    if-eqz v4, :cond_49

    .line 1737
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    goto :goto_26

    .line 1738
    :cond_49
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    goto :goto_26

    .line 1740
    :cond_4a
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 1742
    :goto_26
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFF)V

    move v8, v2

    .line 1746
    :goto_27
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1747
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v4

    move v1, v6

    .line 1748
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v6

    move v15, v1

    move/from16 v16, v8

    move/from16 v2, v21

    move/from16 v1, v28

    move/from16 v5, v31

    const/16 v24, -0x1

    move v8, v3

    move v3, v7

    move/from16 v7, v22

    .line 1746
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessTrackerChanged(FZZZZZ)V

    .line 1752
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v2

    invoke-virtual {v0, v2, v8, v12}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v2

    move/from16 v5, v16

    :goto_28
    move/from16 v4, v29

    goto :goto_29

    :cond_4b
    move v1, v2

    move/from16 v29, v3

    move/from16 v31, v5

    move v15, v6

    move v3, v7

    move/from16 v7, v22

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, -0x1

    .line 1755
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v2

    invoke-virtual {v0, v2, v12}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v2

    const/4 v5, 0x0

    goto :goto_28

    :goto_29
    if-eqz v2, :cond_4c

    if-nez v31, :cond_4c

    .line 1760
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 1764
    :cond_4c
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v6}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    if-eqz v7, :cond_4d

    goto :goto_2a

    .line 1769
    :cond_4d
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_4f

    if-eqz v19, :cond_4f

    .line 1771
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Brightness ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "] manual adjustment."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1765
    :cond_4e
    :goto_2a
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Brightness ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "] reason changing to: \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1766
    invoke-virtual {v8, v7}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\', previous reason: \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\'."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1765
    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v6}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1778
    :cond_4f
    :goto_2b
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    move v6, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/android/server/display/brightness/BrightnessEvent;->setTime(J)V

    .line 1779
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/BrightnessEvent;->setBrightness(F)V

    .line 1780
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1781
    invoke-virtual {v8, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v8

    .line 1780
    invoke-virtual {v2, v8}, Lcom/android/server/display/brightness/BrightnessEvent;->setNits(F)V

    .line 1782
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v2

    .line 1783
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v8

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1785
    invoke-virtual {v12}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v9

    move/from16 v16, v6

    move/from16 v18, v10

    move/from16 v10, v23

    const/4 v6, 0x0

    .line 1784
    invoke-static {v6, v10, v9, v8, v1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v1

    .line 1787
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v6, :cond_50

    .line 1788
    invoke-virtual {v6}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsActivatedForEvenDimmer()Z

    move-result v6

    if-eqz v6, :cond_50

    const/4 v6, 0x1

    goto :goto_2c

    :cond_50
    const/4 v6, 0x0

    .line 1789
    :goto_2c
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    const/high16 v9, 0x447a0000    # 1000.0f

    .line 1790
    invoke-static {v1}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v1

    mul-float/2addr v1, v9

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v1, v9

    .line 1789
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v1}, Lcom/android/server/display/brightness/BrightnessEvent;->setPercent(F)V

    .line 1792
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v15}, Lcom/android/server/display/brightness/BrightnessEvent;->setUnclampedBrightness(F)V

    .line 1793
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayId(Ljava/lang/String;)V

    .line 1794
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayName(Ljava/lang/String;)V

    .line 1795
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v13}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayState(I)V

    .line 1796
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v8, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayStateReason(I)V

    .line 1797
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v1, v8}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayPolicy(I)V

    .line 1798
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1, v8}, Lcom/android/server/display/brightness/BrightnessEvent;->setReason(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 1799
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMax(F)V

    .line 1800
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getHighBrightnessMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMode(I)V

    .line 1801
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v2

    .line 1802
    iget-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    or-int/2addr v2, v8

    .line 1803
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v8, :cond_51

    const/16 v8, 0x20

    goto :goto_2d

    :cond_51
    const/4 v8, 0x0

    :goto_2d
    or-int/2addr v2, v8

    if-eqz v6, :cond_52

    const/16 v6, 0x40

    goto :goto_2e

    :cond_52
    const/4 v6, 0x0

    :goto_2e
    or-int/2addr v2, v6

    .line 1801
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    .line 1805
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v2, :cond_53

    .line 1806
    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsStrength()I

    move-result v2

    goto :goto_2f

    :cond_53
    move/from16 v2, v24

    .line 1805
    :goto_2f
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setRbcStrength(I)V

    .line 1807
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPowerFactor(F)V

    .line 1808
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setWasShortTermModelActive(Z)Z

    .line 1809
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1810
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v2

    .line 1809
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayBrightnessStrategyName(Ljava/lang/String;)V

    .line 1811
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1812
    invoke-virtual {v14}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v2

    .line 1811
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setAutomaticBrightnessEnabled(Z)V

    .line 1813
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setSlowChange(Z)V

    .line 1814
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v5}, Lcom/android/server/display/brightness/BrightnessEvent;->setRampSpeed(F)V

    .line 1817
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1818
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_54

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1819
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    if-ne v1, v2, :cond_54

    const/4 v1, 0x1

    goto :goto_30

    :cond_54
    const/4 v1, 0x0

    .line 1822
    :goto_30
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1823
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessEvent;->isRbcEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_55

    const/4 v2, 0x1

    goto :goto_31

    :cond_55
    const/4 v2, 0x0

    .line 1825
    :goto_31
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v3, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z

    move-result v3

    if-nez v3, :cond_56

    if-eqz v1, :cond_57

    :cond_56
    if-eqz v7, :cond_5c

    .line 1827
    :cond_57
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setInitialBrightness(F)V

    .line 1828
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 1829
    new-instance v1, Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 1832
    invoke-virtual {v1, v7}, Lcom/android/server/display/brightness/BrightnessEvent;->setAdjustmentFlags(I)V

    .line 1833
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v3

    if-eqz v19, :cond_58

    const/16 v4, 0x8

    goto :goto_32

    :cond_58
    const/4 v4, 0x0

    :goto_32
    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    .line 1835
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v19, :cond_59

    .line 1838
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_5a

    .line 1839
    :cond_59
    invoke-virtual {v0, v1, v15, v12}, Lcom/android/server/display/DisplayPowerController;->logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;FLcom/android/server/display/DisplayBrightnessState;)V

    .line 1841
    :cond_5a
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v3, :cond_5b

    .line 1842
    invoke-virtual {v3, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_5b
    if-eqz v2, :cond_5c

    .line 1845
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 1851
    :cond_5c
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v1, :cond_5d

    const/4 v1, 0x2

    if-ne v13, v1, :cond_5e

    .line 1852
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1853
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1854
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    :cond_5d
    const/4 v15, 0x0

    goto :goto_33

    .line 1856
    :cond_5e
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1864
    :goto_33
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v1, :cond_60

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Ljava/lang/Runnable;

    if-nez v1, :cond_60

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v1, :cond_5f

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1866
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 1867
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_60

    :cond_5f
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1868
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v1, 0x1

    goto :goto_34

    :cond_60
    move v1, v15

    :goto_34
    if-eqz v1, :cond_61

    .line 1869
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 1870
    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_61

    const/4 v2, 0x1

    goto :goto_35

    :cond_61
    move v2, v15

    :goto_35
    if-eqz v1, :cond_62

    const/4 v5, 0x1

    if-eq v13, v5, :cond_62

    .line 1873
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v5, :cond_62

    const/4 v3, 0x2

    .line 1875
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1876
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn(I)V

    :cond_62
    if-nez v2, :cond_63

    .line 1881
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    :cond_63
    if-eqz v1, :cond_66

    if-nez v18, :cond_66

    .line 1887
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1888
    :try_start_1
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_64

    const/4 v5, 0x1

    .line 1889
    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1891
    sget-boolean v3, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_65

    .line 1892
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v4, "Display ready!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :catchall_1
    move-exception v0

    goto :goto_37

    :cond_64
    const/4 v5, 0x1

    .line 1895
    :cond_65
    :goto_36
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1896
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_38

    .line 1895
    :goto_37
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_66
    const/4 v5, 0x1

    :goto_38
    if-eqz v2, :cond_67

    .line 1901
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    :cond_67
    const/4 v1, 0x2

    if-eq v13, v1, :cond_68

    move v7, v5

    goto :goto_39

    :cond_68
    move v7, v15

    .line 1905
    :goto_39
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 1907
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v6, v16

    if-eq v6, v1, :cond_69

    .line 1908
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    :cond_69
    return-void

    .line 1362
    :goto_3a
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public updateWhiteBalance()V
    .locals 0

    .line 3222
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method
