.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# static fields
.field public static final AI_KEY_LONG_CLICK_TIME:I

.field public static final CHECK_SHOW_QUICKBUTTON_DISABLE_TIME:I

.field public static DEBUG_INPUT:Z

.field public static DEBUG_KEYGUARD:Z

.field public static DEBUG_WAKEUP:Z

.field public static final PASS_CLICK_TIME:I

.field public static final POWER_MULTI_PRESS_TIMEOUT_MILLIS:I

.field public static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field public static localLOGV:Z


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

.field public mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityManagerService:Landroid/app/IActivityManager;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

.field public mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field public volatile mBackKeyHandled:Z

.field public mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

.field public volatile mBootAnimationDismissable:Z

.field public mBootMessageNeedsHiding:Z

.field public mBootMsgDialog:Landroid/app/ProgressDialog;

.field public mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field public mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

.field public mCameraLensCoverState:I

.field public mCarDockIntent:Landroid/content/Intent;

.field public final mCheckLongPress:Ljava/lang/Runnable;

.field public final mCheckPassClicked:Ljava/lang/Runnable;

.field public final mCheckShowQuickbarButtonDisablePopupWindowIfNeed:Ljava/lang/Runnable;

.field public final mConsumedKeysForDevice:Landroid/util/SparseArray;

.field public mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mCustomAiKey:Ljava/lang/String;

.field public mCustomVolumeDownKey:Ljava/lang/String;

.field public mCustomVolumeUpKey:Ljava/lang/String;

.field public mDefaultDisplay:Landroid/view/Display;

.field public mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public final mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

.field public mDeskDockIntent:Landroid/content/Intent;

.field public volatile mDeviceGoingToSleep:Z

.field public volatile mDismissImeOnBackKeyPressed:Z

.field public mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

.field public final mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDockObserverInternal:Lcom/android/server/DockObserverInternal;

.field public mDockReceiver:Landroid/content/BroadcastReceiver;

.field public mDoublePressOnPowerBehavior:I

.field public mDoublePressOnStemPrimaryBehavior:I

.field public mDoubleTapOnHomeBehavior:I

.field public mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field public mEnableBugReportKeyboardShortcut:Z

.field public mEnableCarDockHomeCapture:Z

.field public volatile mEndCallKeyHandled:Z

.field public final mEndCallLongPress:Ljava/lang/Runnable;

.field public mEndcallBehavior:I

.field public mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

.field public mGestureLauncherService:Lcom/android/server/GestureLauncherService;

.field public mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field public mGlobalActionsFactory:Ljava/util/function/Supplier;

.field public mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field public mGoToSleepOnButtonPressTheaterMode:Z

.field public mHDMIObserver:Landroid/os/UEventObserver;

.field public mHandleVolumeKeysInWM:Z

.field public mHandler:Landroid/os/Handler;

.field public mHasFeatureAuto:Z

.field public mHasFeatureHdmiCec:Z

.field public mHasFeatureLeanback:Z

.field public mHasFeatureWatch:Z

.field public mHasSoftInput:Z

.field public mHaveBuiltInKeyboard:Z

.field public mHavePendingMediaKeyRepeatWithWakeLock:Z

.field public mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field public mHomeIntent:Landroid/content/Intent;

.field public mIncallBackBehavior:I

.field public mIncallPowerBehavior:I

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public volatile mIsGoingToSleepDefaultDisplay:Z

.field public mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

.field public mKeyguardBound:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field public final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field public mKeyguardDrawnOnce:Z

.field public mKeyguardDrawnTimeout:I

.field public mKeyguardOccludedChanged:Z

.field public mKidsModeEnabled:Z

.field public mLidKeyboardAccessibility:I

.field public mLidNavigationAccessibility:I

.field public final mLock:Ljava/lang/Object;

.field public mLockAfterDreamingTransitionFinished:Z

.field public mLockNowPending:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockScreenTimeout:I

.field public mLockScreenTimerActive:Z

.field public final mLogDecelerateInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

.field public mLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mLongClicked:Z

.field public mLongPressOnBackBehavior:I

.field public mLongPressOnHomeBehavior:I

.field public mLongPressOnPowerAssistantTimeoutMs:J

.field public mLongPressOnPowerBehavior:I

.field public mLongPressOnStemPrimaryBehavior:I

.field public mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

.field public mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPassClicked:Z

.field public mPendingKeyguardOccluded:Z

.field public volatile mPendingWakeKey:I

.field public final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field public volatile mPictureInPictureVisible:Z

.field public volatile mPowerButtonLaunchGestureTriggered:Z

.field public volatile mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

.field public mPowerButtonSuppressionDelayMillis:I

.field public mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

.field public volatile mPowerKeyHandled:Z

.field public mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPowerVolUpBehavior:I

.field public mPreloadedRecentApps:Z

.field public mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

.field public volatile mRecentsVisible:Z

.field public volatile mRequestedOrSleepingDefaultDisplay:Z

.field public mRingerToggleChord:I

.field public mSafeMode:Z

.field public final mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field public final mScreenOnListeners:Landroid/util/SparseArray;

.field public mSearchKeyBehavior:I

.field public mSearchKeyTargetActivity:Landroid/content/ComponentName;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mSettingsKeyBehavior:I

.field public mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field public mShortPressOnPowerBehavior:I

.field public mShortPressOnSleepBehavior:I

.field public mShortPressOnStemPrimaryBehavior:I

.field public mShortPressOnWindowBehavior:I

.field public mShouldEarlyShortPressOnPower:Z

.field public mShouldEarlyShortPressOnStemPrimary:Z

.field public mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

.field public mSilenceRingerOnSleepKey:Z

.field public mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mStylusButtonsEnabled:Z

.field public mSupportLongPressPowerWhenNonInteractive:Z

.field public mSupportShortPressPowerWhenDefaultDisplayOn:Z

.field public mSystemBooted:Z

.field public mSystemNavigationKeysEnabled:Z

.field public mSystemReady:Z

.field public mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

.field public volatile mTopFocusedDisplayId:I

.field public mTouchQuickBarCenter:Z

.field public mTouchQuickBarLeft:Z

.field public mTouchQuickBarRight:Z

.field public mTriplePressOnPowerBehavior:I

.field public mTriplePressOnStemPrimaryBehavior:I

.field public mUiMode:I

.field public mUiModeManager:Landroid/app/IUiModeManager;

.field public mUseTvRouting:Z

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVeryLongPressOnPowerBehavior:I

.field public mVibrator:Landroid/os/Vibrator;

.field public final mVisibleBackgroundUsersEnabled:Z

.field public mVoiceAccessShortcutController:Lcom/android/server/policy/VoiceAccessShortcutController;

.field public mVrHeadsetHomeIntent:Landroid/content/Intent;

.field public volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field public mWakeGestureEnabledSetting:Z

.field public mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field public mWakeOnAssistKeyPress:Z

.field public mWakeOnBackKeyPress:Z

.field public mWakeOnDpadKeyPress:Z

.field public mWakeUpToLastStateTimeout:J

.field public mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

.field public mWindowManagerDebugger:Lcom/mediatek/server/wm/WindowManagerDebugger;

.field public mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;


# direct methods
.method public static synthetic $r8$lambda$HsdZ1AfL-mrHwMvboPYQ-e8DrWU(Lcom/android/server/policy/PhoneWindowManager;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$powerPress$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nxxt3y6WeKPeZnoQW6vajtugk2M(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->lambda$handleKeyGestureEvent$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QC2bbpvSHd9xWq-lQP6GZkyB6v8(Lcom/android/server/policy/PhoneWindowManager;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$powerPress$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjpFuuMQpoXRPvhwWotLtmxoXSs(Lcom/android/server/policy/PhoneWindowManager;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$powerPress$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$i3CqPQzHWdNR5T-X9ij8ApdRfuo(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$o1IbWpGnvS7oTobWCvMjpoMMPso(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$updateSettings$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$zOAmqHl6NghqBYp38kNumREG3ms(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$interceptKeyBeforeQueueing$6()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityShortcutController(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockAfterDreamingTransitionFinished(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLongClicked(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongClicked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLongPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPassClicked(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPassClicked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldEarlyShortPressOnPower(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSingleKeyGestureDetector(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/SingleKeyGestureDetector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportLongPressPowerWhenNonInteractive(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchQuickBarCenter(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarCenter:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchQuickBarLeft(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarLeft:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchQuickBarRight(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarRight:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTriplePressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowWakeUpPolicy(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/WindowWakeUpPolicy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityTaskManager$RootTaskInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLockAfterDreamingTransitionFinished(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLockNowPending(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLongClicked(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongClicked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPassClicked(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPassClicked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maccessibilityShortcutActivated(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbackKeyPress(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->backKeyPress()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mbackLongPress(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelAccessibilityGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelAccessibilityGestureTv()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelBugreportGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelBugreportGestureTv()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelGlobalActionsAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelGlobalActionsAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelPendingAccessibilityShortcutAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelPendingRingerToggleChordAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelPendingScreenshotChordAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelPreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcollapsePanels(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->collapsePanels()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishWindowsDrawn(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDreamManagerInternal(Lcom/android/server/policy/PhoneWindowManager;)Landroid/service/dreams/DreamManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMaxMultiPressPowerCount(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetMaxMultiPressStemPrimaryCount(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressStemPrimaryCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetResolvedLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetScreenshotChordLongPressDelay(Lcom/android/server/policy/PhoneWindowManager;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mhandleHideBootMessage(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleKeyGestureInKeyGestureController(Lcom/android/server/policy/PhoneWindowManager;IIII)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGestureInKeyGestureController(IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRingerChordGesture(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScreenShot(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleScreenShot(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleShortPressOnHome(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSwitchKeyboardLayout(Lcom/android/server/policy/PhoneWindowManager;IILandroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleSwitchKeyboardLayout(IILandroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManager;ZZ)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleTransitionForKeyguardLw(ZZ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasLongPressOnBackBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasLongPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnStemPrimaryBehavior()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasVeryLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minterceptAccessibilityGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minterceptAccessibilityShortcutChord(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minterceptBugreportGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minterceptRingerToggleChord(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minterceptScreenshotChord(Lcom/android/server/policy/PhoneWindowManager;IJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord(IJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misKeyEventForCurrentUser(Lcom/android/server/policy/PhoneWindowManager;IILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlaunchActivityFromPathString(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchActivityFromPathString(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlaunchAllAppsAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlaunchAssistAction(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;IJI)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyKeyGestureCompleted(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mperformHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpowerLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpowerVeryLongPress(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSystemKeyToStatusBar(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldEnableWakeGestureLp(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshowPictureInPictureMenuInternal(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowRecentApps(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryLongPress(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryPress(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtoggleNotificationPanel(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtoggleRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetWINDOW_TYPES_WHERE_HOME_DOESNT_WORK()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 295
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    .line 296
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 297
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 298
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WAKEUP:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 481
    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v0

    sput v0, Lcom/android/server/policy/PhoneWindowManager;->POWER_MULTI_PRESS_TIMEOUT_MILLIS:I

    const/16 v0, 0x7d3

    const/16 v1, 0x7da

    .line 3537
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 7894
    const-string/jumbo v0, "persist.viwoods.quickbar_click_pass_time"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/PhoneWindowManager;->PASS_CLICK_TIME:I

    .line 7895
    const-string/jumbo v0, "persist.viwoods.ai_quickbar_long_click_time"

    const/16 v1, 0x2bc

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/PhoneWindowManager;->AI_KEY_LONG_CLICK_TIME:I

    .line 7897
    const-string/jumbo v0, "persist.viwoods.check_show_quickbutton_disable_time"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/PhoneWindowManager;->CHECK_SHOW_QUICKBUTTON_DISABLE_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    invoke-static {}, Lcom/mediatek/server/MtkSystemServiceFactory;->getInstance()Lcom/mediatek/server/MtkSystemServiceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServiceFactory;->makeWindowManagerDebugger()Lcom/mediatek/server/wm/WindowManagerDebugger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDebugger:Lcom/mediatek/server/wm/WindowManagerDebugger;

    .line 488
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 491
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    .line 517
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    const/4 v1, 0x1

    .line 551
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 557
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 609
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    const/4 v2, -0x1

    .line 615
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 619
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 646
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 648
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 684
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 739
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 752
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 762
    new-instance v1, Lcom/android/internal/policy/LogDecelerateInterpolator;

    const/16 v3, 0x64

    invoke-direct {v1, v3, v0}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    .line 764
    new-instance v1, Lcom/android/server/policy/DeferredKeyActionExecutor;

    invoke-direct {v1}, Lcom/android/server/policy/DeferredKeyActionExecutor;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 767
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    const/16 v1, 0x320

    .line 769
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 776
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    const/16 v1, 0x3e8

    .line 779
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    .line 781
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    .line 911
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 1029
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 1938
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 2316
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 6267
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 6286
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 6920
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 7025
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 7898
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPassClicked:Z

    .line 7900
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongClicked:Z

    .line 7901
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarCenter:Z

    .line 7902
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarRight:Z

    .line 7903
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarLeft:Z

    .line 7906
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCheckLongPress:Ljava/lang/Runnable;

    .line 7926
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCheckPassClicked:Ljava/lang/Runnable;

    .line 7937
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCheckShowQuickbarButtonDisablePopupWindowIfNeed:Ljava/lang/Runnable;

    return-void
.end method

.method public static awakenDreams()V
    .locals 1

    .line 3501
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3504
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static doublePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 7725
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7723
    :cond_0
    const-string p0, "DOUBLE_PRESS_PRIMARY_LAUNCH_DEFAULT_FITNESS_APP"

    return-object p0

    .line 7721
    :cond_1
    const-string p0, "DOUBLE_PRESS_PRIMARY_SWITCH_RECENT_APP"

    return-object p0

    .line 7719
    :cond_2
    const-string p0, "DOUBLE_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 7587
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7585
    :cond_0
    const-string p0, "DOUBLE_TAP_HOME_PIP_MENU"

    return-object p0

    .line 7583
    :cond_1
    const-string p0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object p0

    .line 7581
    :cond_2
    const-string p0, "DOUBLE_TAP_HOME_NOTHING"

    return-object p0
.end method

.method public static endcallBehaviorToString(I)Ljava/lang/String;
    .locals 2

    .line 7519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 7521
    const-string v1, "home|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 7524
    const-string/jumbo p0, "sleep|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7527
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_2

    .line 7529
    const-string p0, "<nothing>"

    return-object p0

    :cond_2
    const/4 v1, 0x0

    add-int/lit8 p0, p0, -0x1

    .line 7532
    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .line 3525
    const-string v0, "audio"

    .line 3526
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3525
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3528
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .line 3512
    const-string v0, "dreams"

    .line 3513
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3512
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method public static incallBackBehaviorToString(I)Ljava/lang/String;
    .locals 0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    .line 7546
    const-string p0, "hangup"

    return-object p0

    .line 7548
    :cond_0
    const-string p0, "<nothing>"

    return-object p0
.end method

.method public static incallPowerBehaviorToString(I)Ljava/lang/String;
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    .line 7538
    const-string p0, "hangup"

    return-object p0

    .line 7540
    :cond_0
    const-string/jumbo p0, "sleep"

    return-object p0
.end method

.method public static isLongPressToAssistantEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 7765
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    .line 7766
    const-string v1, "clockwork_long_press_to_assistant_enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x3

    .line 7770
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longPressToAssistant = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p0, v2, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidGlobalKey(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/16 v0, 0xdf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static lidBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 7760
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7754
    :cond_0
    const-string p0, "LID_BEHAVIOR_LOCK"

    return-object p0

    .line 7756
    :cond_1
    const-string p0, "LID_BEHAVIOR_SLEEP"

    return-object p0

    .line 7758
    :cond_2
    const-string p0, "LID_BEHAVIOR_NONE"

    return-object p0
.end method

.method public static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 7559
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7557
    :cond_0
    const-string p0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object p0

    .line 7555
    :cond_1
    const-string p0, "LONG_PRESS_BACK_NOTHING"

    return-object p0
.end method

.method public static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 7574
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7572
    :cond_0
    const-string p0, "LONG_PRESS_HOME_NOTIFICATION_PANEL"

    return-object p0

    .line 7570
    :cond_1
    const-string p0, "LONG_PRESS_HOME_ASSIST"

    return-object p0

    .line 7568
    :cond_2
    const-string p0, "LONG_PRESS_HOME_ALL_APPS"

    return-object p0

    .line 7566
    :cond_3
    const-string p0, "LONG_PRESS_HOME_NOTHING"

    return-object p0
.end method

.method public static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 7625
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7623
    :cond_0
    const-string p0, "LONG_PRESS_POWER_ASSISTANT"

    return-object p0

    .line 7621
    :cond_1
    const-string p0, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    return-object p0

    .line 7619
    :cond_2
    const-string p0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object p0

    .line 7617
    :cond_3
    const-string p0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object p0

    .line 7615
    :cond_4
    const-string p0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object p0

    .line 7613
    :cond_5
    const-string p0, "LONG_PRESS_POWER_NOTHING"

    return-object p0
.end method

.method public static longPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 7747
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7745
    :cond_0
    const-string p0, "LONG_PRESS_PRIMARY_LAUNCH_VOICE_ASSISTANT"

    return-object p0

    .line 7743
    :cond_1
    const-string p0, "LONG_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 7677
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7675
    :cond_0
    const-string p0, "MULTI_PRESS_POWER_LAUNCH_TARGET_ACTIVITY"

    return-object p0

    .line 7673
    :cond_1
    const-string p0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object p0

    .line 7671
    :cond_2
    const-string p0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object p0

    .line 7669
    :cond_3
    const-string p0, "MULTI_PRESS_POWER_NOTHING"

    return-object p0
.end method

.method public static powerVolumeUpBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 7662
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7660
    :cond_0
    const-string p0, "POWER_VOLUME_UP_BEHAVIOR_GLOBAL_ACTIONS"

    return-object p0

    .line 7658
    :cond_1
    const-string p0, "POWER_VOLUME_UP_BEHAVIOR_MUTE"

    return-object p0

    .line 7656
    :cond_2
    const-string p0, "POWER_VOLUME_UP_BEHAVIOR_NOTHING"

    return-object p0
.end method

.method public static settingsKeyBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 7638
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7636
    :cond_0
    const-string p0, "SETTINGS_KEY_BEHAVIOR_NOTHING"

    return-object p0

    .line 7634
    :cond_1
    const-string p0, "SETTINGS_KEY_BEHAVIOR_NOTIFICATION_PANEL"

    return-object p0

    .line 7632
    :cond_2
    const-string p0, "SETTINGS_KEY_BEHAVIOR_SETTINGS_ACTIVITY"

    return-object p0
.end method

.method public static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 7606
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7604
    :cond_0
    const-string p0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object p0

    .line 7602
    :cond_1
    const-string p0, "SHORT_PRESS_POWER_GO_HOME"

    return-object p0

    .line 7600
    :cond_2
    const-string p0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object p0

    .line 7598
    :cond_3
    const-string p0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object p0

    .line 7596
    :cond_4
    const-string p0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object p0

    .line 7594
    :cond_5
    const-string p0, "SHORT_PRESS_POWER_NOTHING"

    return-object p0
.end method

.method public static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 7688
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7686
    :cond_0
    const-string p0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object p0

    .line 7684
    :cond_1
    const-string p0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object p0
.end method

.method public static shortPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 7712
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7710
    :cond_0
    const-string p0, "SHORT_PRESS_PRIMARY_LAUNCH_TARGET_ACTIVITY"

    return-object p0

    .line 7708
    :cond_1
    const-string p0, "SHORT_PRESS_PRIMARY_LAUNCH_ALL_APPS"

    return-object p0

    .line 7706
    :cond_2
    const-string p0, "SHORT_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 7699
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7697
    :cond_0
    const-string p0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object p0

    .line 7695
    :cond_1
    const-string p0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object p0
.end method

.method public static triplePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 7736
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7734
    :cond_0
    const-string p0, "TRIPLE_PRESS_PRIMARY_TOGGLE_ACCESSIBILITY"

    return-object p0

    .line 7732
    :cond_1
    const-string p0, "TRIPLE_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 7649
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7647
    :cond_0
    const-string p0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object p0

    .line 7645
    :cond_1
    const-string p0, "VERY_LONG_PRESS_POWER_NOTHING"

    return-object p0
.end method


# virtual methods
.method public final accessibilityShortcutActivated()V
    .locals 0

    .line 1631
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    return-void
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3457
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 3459
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 3460
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 3462
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne p2, v1, :cond_2

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 3464
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3465
    :cond_1
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 3466
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez p2, :cond_2

    .line 3467
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3471
    :cond_2
    iget p2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq p2, v1, :cond_4

    if-ne p3, v1, :cond_3

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 3473
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 3474
    :cond_4
    :goto_1
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    return-void
.end method

.method public applyKeyguardOcclusionChange()I
    .locals 2

    .line 4887
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transition/occluded commit occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " changed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final applyLidSwitchState()V
    .locals 4

    .line 7091
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-nez v0, :cond_2

    .line 7093
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 7096
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    goto :goto_0

    .line 7099
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    .line 7110
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7111
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 7112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V
    .locals 2

    .line 1363
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1368
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1372
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1374
    const-string p0, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t access dream manager dreaming when attempting to start or stop dream from short power press (isScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", awakeWhenDream="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1382
    :cond_1
    invoke-virtual {v0, p1}, Landroid/service/dreams/DreamManagerInternal;->canStartDreaming(Z)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    .line 1383
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 1384
    const-string/jumbo p1, "short press power"

    invoke-virtual {v0, p0, p1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    return-void

    .line 1387
    :cond_2
    const-string p0, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t start dreaming and the device is not dreaming when attempting to start or stop dream from short power press (isScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", awakeWhenDream="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1395
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1398
    :try_start_0
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 1399
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    .line 1400
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->requestDream()V

    return-void

    :catchall_0
    move-exception p0

    .line 1400
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final backKeyPress()Z
    .locals 4

    .line 1088
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v1, "key_back_press"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1090
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1092
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v1, :cond_1

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1096
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1099
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    const/4 p0, 0x0

    return p0

    .line 1103
    :cond_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 1105
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1108
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result p0

    return p0

    .line 1113
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_2

    .line 1114
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return v0
.end method

.method public final backLongPress()V
    .locals 2

    const/4 v0, 0x1

    .line 1619
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1621
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1625
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    return-void
.end method

.method public final bindKeyguard()V
    .locals 2

    .line 6832
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6833
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_0

    .line 6834
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 6836
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 6837
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6838
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    return-void

    .line 6837
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public canDismissBootAnimation()Z
    .locals 1

    .line 6917
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

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

.method public final cancelAccessibilityGestureTv()V
    .locals 1

    .line 4699
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelBugreportGestureTv()V
    .locals 1

    .line 4685
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelGlobalActionsAction()V
    .locals 1

    .line 1972
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelPendingAccessibilityShortcutAction()V
    .locals 1

    .line 1931
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelPendingRingerToggleChordAction()V
    .locals 1

    .line 1935
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelPendingScreenshotChordAction()V
    .locals 1

    .line 1927
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelPreloadRecentApps()V
    .locals 1

    .line 5016
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5017
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 5018
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5020
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    :cond_0
    return-void
.end method

.method public final changeDisplayBrightnessValue(II)V
    .locals 5

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    .line 4535
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result v0

    .line 4537
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result v1

    .line 4539
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result v3

    .line 4541
    invoke-static {v3}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    int-to-float p2, p2

    mul-float/2addr p2, v4

    add-float/2addr v3, p2

    const/4 p2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 4543
    invoke-static {v3, p2, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    .line 4544
    invoke-static {p2}, Lcom/android/internal/display/BrightnessUtils;->convertGammaToLinear(F)F

    move-result p2

    .line 4546
    invoke-static {p2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    .line 4548
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 4550
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x50000

    .line 4551
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4553
    const-string p2, "android.intent.extra.FROM_BRIGHTNESS_KEY"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4554
    sget-object p2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public checkAddPermission(IZLjava/lang/String;[II)I
    .locals 14

    move/from16 v1, p5

    .line 3312
    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v3, -0x8

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 3317
    aput v4, p4, v5

    const/16 v4, 0xbb7

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    const/16 v8, 0x7d0

    if-lt p1, v7, :cond_1

    const/16 v9, 0x63

    if-le p1, v9, :cond_3

    :cond_1
    if-lt p1, v6, :cond_2

    const/16 v9, 0x7cf

    if-le p1, v9, :cond_3

    :cond_2
    if-lt p1, v8, :cond_14

    if-le p1, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    if-lt p1, v8, :cond_13

    if-le p1, v4, :cond_4

    goto/16 :goto_2

    .line 3330
    :cond_4
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v4

    if-nez v4, :cond_8

    if-eq p1, v8, :cond_7

    const/16 v1, 0x7d5

    if-eq p1, v1, :cond_6

    const/16 v1, 0x7db

    if-eq p1, v1, :cond_7

    const/16 v1, 0x7dd

    if-eq p1, v1, :cond_7

    const/16 v1, 0x7e1

    if-eq p1, v1, :cond_7

    const/16 v1, 0x7e3

    if-eq p1, v1, :cond_7

    const/16 v1, 0x7e8

    if-eq p1, v1, :cond_7

    const/16 v1, 0x7f3

    if-eq p1, v1, :cond_7

    const/16 v1, 0x7f5

    if-eq p1, v1, :cond_7

    const/16 v1, 0x7f8

    if-eq p1, v1, :cond_7

    const/16 v1, 0x7f9

    if-eq p1, v1, :cond_7

    packed-switch p1, :pswitch_data_0

    .line 3361
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_5

    return v5

    :cond_5
    return v3

    :pswitch_0
    const/16 p0, 0x8a

    .line 3341
    aput p0, p4, v5

    return v5

    :cond_6
    const/16 p0, 0x2d

    .line 3337
    aput p0, p4, v5

    :cond_7
    :pswitch_1
    return v5

    :cond_8
    const/16 v4, 0x18

    .line 3366
    aput v4, p4, v5

    .line 3368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3370
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v4, v6, :cond_9

    return v5

    .line 3376
    :cond_9
    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3379
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v11, p3

    .line 3376
    :try_start_1
    invoke-virtual {v4, v11, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v11, p3

    :catch_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_11

    const/16 v6, 0x7f6

    if-eq p1, v6, :cond_a

    .line 3384
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1a

    if-lt v0, v6, :cond_a

    goto :goto_1

    .line 3395
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    return v5

    .line 3401
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v1, v10}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->isCallerVirtualDeviceOwner(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 3402
    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->isDisplayTrusted(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    .line 3403
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    return v5

    .line 3411
    :cond_c
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v9, p4, v5

    const/4 v12, 0x0

    const-string v13, "check-add"

    invoke-virtual/range {v8 .. v13}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    if-eq v0, v7, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 3428
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_d

    move v3, v5

    :cond_d
    return v3

    .line 3421
    :cond_e
    iget p0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_f

    return v5

    :cond_f
    return v3

    :cond_10
    return v5

    .line 3391
    :cond_11
    :goto_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    move v3, v5

    :cond_12
    return v3

    :cond_13
    :goto_2
    return v5

    :cond_14
    :goto_3
    const/16 p0, -0xa

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7ee
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final collapsePanels()V
    .locals 3

    .line 7952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7953
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "systemui.settingsfloatview.close"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7954
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public createHomeDockIntent()Landroid/content/Intent;
    .locals 4

    .line 7154
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 7155
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v0, :cond_4

    .line 7156
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 7163
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_4

    .line 7168
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const/4 v2, 0x7

    if-ne v0, v2, :cond_4

    .line 7172
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_4
    :goto_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_5

    return-object v1

    .line 7181
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x10080

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v0, v3, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 7186
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2

    :cond_6
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_7

    .line 7188
    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    const-string v3, "android.dock_home"

    .line 7190
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7191
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7192
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    return-object v1
.end method

.method public final createMappedVolumeKeyEvent(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 13

    const/16 p0, 0x18

    if-eq p2, p0, :cond_0

    const/16 p0, 0x19

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8085
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    .line 8086
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 8087
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 8088
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 8090
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 8091
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    .line 8092
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    .line 8093
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    .line 8094
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p0

    or-int/lit16 v11, p0, 0x400

    .line 8095
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    move v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    return-object v0
.end method

.method public final dismissKeyboardShortcutsMenu()V
    .locals 0

    .line 5063
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5065
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    :cond_0
    return-void
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 2

    .line 6783
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6784
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string v0, "PWM.dismissKeyguardLw"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6787
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 6790
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6792
    const-string p1, "Failed to call callback"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public final dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 3

    .line 6168
    const-string v0, "WindowManager"

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6170
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6171
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6172
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6175
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6174
    :goto_0
    invoke-virtual {v1, p0, p1}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    return-void

    .line 6180
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6181
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    .line 6180
    invoke-interface {v1, p1, v2, p0, v0}, Landroid/media/IAudioService;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error dispatching volume key in handleVolumeKey for event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 6231
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    const/4 v3, 0x1

    .line 6233
    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object p1

    .line 6235
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 6236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchMediaKeyRepeatWithWakeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6239
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6240
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 3

    .line 6201
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 6202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyWithWakeLock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6205
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    .line 6206
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    .line 6207
    const-string v0, "dispatchMediaKeyWithWakeLock: canceled repeat"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6210
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 6211
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6212
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6215
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6217
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 6218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 6219
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6221
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6223
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6224
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 6226
    :cond_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 1

    .line 6244
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6245
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 7392
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mSafeMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 7393
    const-string p3, " mSystemReady="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 7394
    const-string p3, " mSystemBooted="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 7395
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mCameraLensCoverState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7396
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7397
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7398
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 7400
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7401
    const-string p3, "mUiMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7402
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {p3}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7403
    const-string p3, "mEnableCarDockHomeCapture="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 7404
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLidKeyboardAccessibility="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7405
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 7406
    const-string p3, " mLidNavigationAccessibility="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 7407
    const-string p3, " getLidBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result p3

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->lidBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7408
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7409
    const-string p3, "mLongPressOnBackBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7410
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7411
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7412
    const-string p3, "mLongPressOnHomeBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7413
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7414
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7415
    const-string p3, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7416
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7417
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7418
    const-string p3, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7419
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7420
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7421
    const-string p3, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7422
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7423
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7424
    const-string p3, "mSettingsKeyBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7425
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->settingsKeyBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7426
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7427
    const-string p3, "mLongPressOnPowerAssistantTimeoutMs="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7428
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 7429
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7430
    const-string p3, "mVeryLongPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7431
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7432
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7433
    const-string p3, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7434
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7435
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7436
    const-string p3, "mTriplePressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7437
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7438
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7439
    const-string p3, "mSupportShortPressPowerWhenDefaultDisplayOn="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7440
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 7441
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7442
    const-string p3, "mPowerVolUpBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7443
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->powerVolumeUpBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7444
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7445
    const-string p3, "mShortPressOnSleepBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7446
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7447
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7448
    const-string p3, "mShortPressOnWindowBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7449
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7450
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7451
    const-string p3, "mShortPressOnStemPrimaryBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7452
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7454
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7455
    const-string p3, "mDoublePressOnStemPrimaryBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7456
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->doublePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7458
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7459
    const-string p3, "mTriplePressOnStemPrimaryBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7460
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->triplePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7462
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7463
    const-string p3, "mLongPressOnStemPrimaryBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7464
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7466
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7467
    const-string p3, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7468
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 7469
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7470
    const-string p3, "mHasSoftInput="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 7471
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7472
    const-string p3, "mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 7473
    const-string p3, " mIncallPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7474
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7475
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7476
    const-string p3, "mIncallBackBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7477
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7478
    const-string p3, " mEndcallBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7479
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7480
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7482
    const-string p3, "mDisplayHomeButtonHandlers="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 7483
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v1, "  "

    if-ge p3, v0, :cond_0

    .line 7484
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 7485
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 7487
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mKeyguardOccluded="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 7488
    const-string p3, " mKeyguardOccludedChanged="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 7489
    const-string p3, " mPendingKeyguardOccluded="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 7490
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mAllowLockscreenWhenOnDisplays="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7491
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 7492
    const-string p3, " mLockScreenTimeout="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 7493
    const-string p3, " mLockScreenTimerActive="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 7494
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mKidsModeEnabled="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 7496
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7497
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7498
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7499
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7501
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz p3, :cond_1

    .line 7502
    invoke-virtual {p3, p2, p1}, Lcom/android/server/policy/WakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7504
    :cond_1
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz p3, :cond_2

    .line 7505
    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7507
    :cond_2
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p3, :cond_3

    .line 7508
    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7511
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Looper state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7512
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 7514
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 7373
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 7374
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v0

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7375
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v0

    const-wide v1, 0x10e00000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7376
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getCurrentAppOrientation()I

    move-result v0

    const-wide v1, 0x10e00000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7377
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7378
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7379
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 7380
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v0

    const-wide v1, 0x10800000007L

    .line 7379
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000cL

    .line 7381
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000dL

    .line 7382
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000eL

    .line 7383
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7384
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_0

    const-wide v0, 0x10b00000014L

    .line 7385
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7387
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 0

    .line 6723
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_0

    .line 6724
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V
    .locals 4

    .line 6668
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    .line 6669
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6672
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 6673
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 6675
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v2, :cond_0

    .line 6676
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 6677
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    move v3, v0

    .line 6682
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 6686
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    :cond_2
    if-eqz v3, :cond_3

    .line 6691
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->enableScreenIfNeeded()V

    :cond_3
    return-void

    .line 6682
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .line 7085
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 7086
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 v0, 0x1

    .line 7087
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 0

    .line 6731
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_0

    .line 6732
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    :cond_0
    return-void
.end method

.method public final finishKeyguardDrawn()V
    .locals 4

    .line 6485
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishKeyguardDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6489
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6490
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    .line 6491
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6493
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x20

    .line 6497
    const-string/jumbo v2, "waitForAllWindowsDrawn"

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 6499
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    return-void

    .line 6493
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final finishPowerKeyPress()V
    .locals 1

    const/4 v0, 0x0

    .line 1176
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1177
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public final finishScreenTurningOn()V
    .locals 5

    .line 6655
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 6657
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    .line 6658
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->finishScreenTurningOn()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 6661
    :cond_0
    const-string/jumbo v1, "screenTurningOn"

    const/4 v2, 0x0

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v1, 0x1

    .line 6663
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V

    return-void
.end method

.method public final finishWindowsDrawn(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 6638
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    if-eqz p0, :cond_1

    .line 6640
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    return-void

    .line 6645
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->finishWindowsDrawn()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return-void

    .line 6649
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    return-void
.end method

.method public finishedGoingToSleep(II)V
    .locals 4

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6350
    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 6351
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_1

    .line 6352
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished going to sleep... (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " why="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6354
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result p1

    .line 6353
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6352
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6357
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_timeout"

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6359
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 6360
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 6361
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 6365
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6366
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 6367
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 6368
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6369
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 6371
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_2

    .line 6372
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {p1, p2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    .line 6375
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p1, :cond_3

    .line 6376
    invoke-virtual {p1}, Lcom/android/server/policy/DisplayFoldController;->finishedGoingToSleep()V

    .line 6378
    :cond_3
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

    .line 6379
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    return-void

    :catchall_0
    move-exception p0

    .line 6368
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public finishedGoingToSleepGlobal(I)V
    .locals 0

    const/4 p1, 0x0

    .line 6318
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    return-void
.end method

.method public finishedWakingUp(II)V
    .locals 2

    .line 6419
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    .line 6420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished waking up... (groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6422
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result p2

    .line 6421
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6420
    const-string v0, "WindowManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 6429
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_2

    .line 6430
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    .line 6432
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_3

    .line 6433
    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldController;->finishedWakingUp()V

    :cond_3
    :goto_0
    return-void
.end method

.method public finishedWakingUpGlobal(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public getAccessibilityManagerInternal()Lcom/android/server/AccessibilityManagerInternal;
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    if-nez v1, :cond_0

    .line 1079
    const-class v1, Lcom/android/server/AccessibilityManagerInternal;

    .line 1080
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AccessibilityManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1082
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    monitor-exit v0

    return-object p0

    .line 1083
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAccessibilityShortcutTimeout()J
    .locals 6

    .line 1895
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1896
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1898
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1899
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "skip_accessibility_shortcut_dialog_timeout_restriction"

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-static {v3, v5, v4, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    move v4, v2

    :cond_1
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1907
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v0

    return-wide v0

    .line 1906
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
    .locals 1

    .line 3580
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 3581
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getAppLaunchBookmarks()Ljava/util/List;

    move-result-object p0

    .line 3580
    invoke-virtual {v0, p1, p0}, Lcom/android/server/policy/ModifierShortcutManager;->getApplicationLaunchKeyboardShortcuts(ILjava/util/List;)Landroid/view/KeyboardShortcutGroup;

    move-result-object p0

    return-object p0
.end method

.method public getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_0

    .line 1070
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1072
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object p0

    .line 1073
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCustomActivityPathForKey(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x83

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8027
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomAiKey:Ljava/lang/String;

    return-object p0

    .line 8031
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomVolumeDownKey:Ljava/lang/String;

    return-object p0

    .line 8029
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomVolumeUpKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;
    .locals 1

    .line 3285
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-nez v0, :cond_0

    .line 3287
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 3290
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    return-object p0
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .locals 0

    .line 4851
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_0

    .line 4852
    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldController;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 4854
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public final getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .locals 3

    .line 2028
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_2

    .line 2029
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_1

    .line 2036
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2038
    :goto_0
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager-IA;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 2040
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object p0
.end method

.method public final getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1

    .line 6190
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6193
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/hdmi/HdmiControlManager;

    return-object p0
.end method

.method public final getKeyguardDrawnTimeout()J
    .locals 2

    .line 6531
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 6532
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6534
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public final getLidBehavior()I
    .locals 2

    .line 1518
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lid_behavior"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getMaxMultiPressPowerCount()I
    .locals 2

    .line 1530
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1532
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1531
    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    return p0

    .line 1535
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 1538
    :cond_1
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final getMaxMultiPressStemPrimaryCount()I
    .locals 2

    .line 1828
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1832
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {v0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 1837
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v1
.end method

.method public getNotificationService()Landroid/app/NotificationManager;
    .locals 1

    .line 3521
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public final getResolvedLongPressOnPowerBehavior()I
    .locals 2

    .line 1661
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 1667
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1672
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1673
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->isLongPressToAssistantEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 1677
    :cond_2
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return p0
.end method

.method public final getRingerToggleChordDelay()J
    .locals 2

    .line 1923
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final getScreenshotChordLongPressDelay()J
    .locals 4

    .line 1911
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1913
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    move-result-wide v0

    .line 1911
    const-string/jumbo v2, "systemui"

    const-string/jumbo v3, "screenshot_keychord_delay"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1914
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x40200000    # 2.5f

    long-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1059
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 1060
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1061
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1063
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object p0

    .line 1064
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_0

    .line 1050
    const-string/jumbo v1, "statusbar"

    .line 1051
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1050
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1053
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object p0

    .line 1054
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I
    .locals 2

    .line 7859
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7860
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result p0

    return p0

    .line 7862
    :cond_0
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq p1, v1, :cond_1

    .line 7863
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getTaskIdByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const/4 p1, -0x1

    .line 7986
    const-string v0, "WindowManager"

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7990
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v2, 0x12

    const/4 v3, 0x2

    .line 7991
    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7992
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 7996
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 7997
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 7998
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7999
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    .line 8000
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 8001
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 8002
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8003
    :cond_3
    iget p0, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 8004
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTaskIdByName findName = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ,id= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_4
    return p1

    .line 7993
    :cond_5
    :goto_0
    const-string p0, "getTaskIdByeName recentTasks is null or size is 0 !!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 7987
    :cond_6
    :goto_1
    const-string p0, "getTaskIdByeName failed findName is empty."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public getTelecommService()Landroid/telecom/TelecomManager;
    .locals 1

    .line 3517
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public getTopActivityPkgNameByActivityManager()Ljava/lang/String;
    .locals 1

    .line 7961
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 7962
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7964
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7965
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    .line 7967
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    .line 7969
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7973
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final getWallpaperManagerInternal()Lcom/android/server/wallpaper/WallpaperManagerInternal;
    .locals 1

    .line 6539
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-nez v0, :cond_0

    .line 6540
    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 6542
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

    return-object p0
.end method

.method public goHome()Z
    .locals 17

    move-object/from16 v0, p0

    .line 7248
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    const-string v2, "WindowManager"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 7249
    const-string v0, "Not going home because user setup is in progress."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v1, 0x1

    .line 7259
    :try_start_0
    const-string/jumbo v4, "persist.sys.uts-test-mode"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 7261
    const-string v4, "UTS-TEST-MODE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7263
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 7264
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 7265
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 7267
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7268
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7269
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7270
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    const/16 v16, -0x2

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 7268
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    return v3

    .line 7279
    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7280
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7281
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7282
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    const/16 v16, -0x2

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 7280
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_3

    return v3

    :catch_0
    :cond_3
    return v1
.end method

.method public final handleCameraGesture(Landroid/view/KeyEvent;Z)Z
    .locals 2

    .line 5981
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5984
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    .line 5985
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 5986
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    .line 5987
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result p1

    .line 5988
    iget-boolean p2, v0, Landroid/util/MutableBoolean;->value:Z

    if-nez p2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x1

    .line 5994
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    .line 5995
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    if-eqz p2, :cond_2

    .line 5996
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

    .line 5998
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-virtual {p0}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromPowerKeyCameraGesture()Z

    :cond_2
    return p1
.end method

.method public final handleCustomKeyAction(Landroid/view/KeyEvent;Z)Z
    .locals 6

    .line 8131
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 8132
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->shouldHandleAsCustomKey(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 8136
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getCustomActivityPathForKey(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    .line 8138
    const-string v3, "WindowManager"

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x19

    if-ne v0, v2, :cond_2

    .line 8139
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleCustomKeyAction consume empty custom action, keyCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 8143
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCustomKeyAction keyCode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", action="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", keyguardOn="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", screenOn="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8146
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", goingToSleep="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8143
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8148
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->mapToVolumeKeyCode(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 8150
    invoke-virtual {p0, p1, v2}, Lcom/android/server/policy/PhoneWindowManager;->injectCustomVolumeKeyEvent(Landroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    .line 8152
    :cond_3
    const-string/jumbo v2, "refresh"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8153
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-nez p0, :cond_4

    .line 8154
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/os/enote/ENoteSetting;->setGlobalEpdMode(I)V

    :cond_4
    return v4

    .line 8159
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p2, :cond_6

    goto :goto_0

    .line 8165
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_7

    .line 8166
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->interceptLaunchActivity(Ljava/lang/String;)V

    :cond_7
    return v4

    .line 8160
    :cond_8
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignore custom key while keyguard showing, screen off, or going to sleep: keyCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final handleHideBootMessage()V
    .locals 2

    .line 6696
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6697
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 6698
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 6699
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6701
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6703
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 6704
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6705
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 6706
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    :cond_2
    return-void

    .line 6701
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 2

    .line 4638
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    if-nez v0, :cond_0

    .line 4640
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 4641
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4643
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleHomeButton(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final handleKeyGesture(Landroid/view/KeyEvent;ZZ)V
    .locals 2

    .line 5959
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 5960
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->interceptKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5962
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return-void

    .line 5966
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 5967
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleCameraGesture(Landroid/view/KeyEvent;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 5968
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-eqz v0, :cond_1

    .line 5970
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return-void

    .line 5975
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKey(Landroid/view/KeyEvent;ZZ)V

    return-void
.end method

.method public handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .locals 14

    .line 4308
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4309
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4310
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 4311
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDeviceId()I

    move-result v7

    .line 4312
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v5

    .line 4313
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v6

    .line 4314
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getModifierState()I

    move-result v8

    .line 4315
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v9

    .line 4316
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v9, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move v10, v1

    .line 4317
    :goto_2
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v11

    new-instance v12, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;

    invoke-direct {v12}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v11, v12}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4319
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    :cond_3
    const/16 v11, 0x1b

    if-eq v5, v11, :cond_15

    const/16 v11, 0x1c

    if-eq v5, v11, :cond_14

    const/16 v11, 0x1f

    .line 4321
    const-string v12, "WindowManager"

    if-eq v5, v11, :cond_13

    const/16 v11, 0x20

    const/4 v13, 0x0

    if-eq v5, v11, :cond_12

    const/16 v11, 0x38

    if-eq v5, v11, :cond_10

    const/16 v11, 0x39

    if-eq v5, v11, :cond_e

    const/16 v11, 0x3f

    if-eq v5, v11, :cond_d

    const/16 v11, 0x4b

    if-eq v5, v11, :cond_b

    const/16 v11, 0x4c

    if-eq v5, v11, :cond_a

    packed-switch v5, :pswitch_data_0

    const/4 v9, -0x1

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    packed-switch v5, :pswitch_data_4

    .line 4526
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received a key gesture "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " that was not registered by this handler"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    if-eqz v3, :cond_16

    .line 4495
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->closeSystemDialogs()V

    return-void

    :pswitch_1
    if-eqz v3, :cond_16

    .line 4488
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 4489
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    .line 4488
    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4490
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_2
    if-eqz v0, :cond_4

    .line 4482
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv()V

    return-void

    .line 4484
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelBugreportGestureTv()V

    return-void

    :pswitch_3
    if-eqz v0, :cond_5

    .line 4431
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void

    .line 4433
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    return-void

    :pswitch_4
    if-eqz v3, :cond_16

    .line 4388
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 4391
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result p0

    .line 4390
    invoke-interface {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToFullscreen(I)V

    return-void

    :pswitch_5
    if-eqz v3, :cond_16

    .line 4397
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 4400
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result p0

    .line 4399
    invoke-interface {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToDesktop(I)V

    return-void

    .line 4510
    :pswitch_6
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    if-eqz v3, :cond_16

    if-eqz v10, :cond_16

    if-eqz v0, :cond_16

    .line 4511
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    .line 4512
    invoke-virtual {v1, v0}, Lcom/android/server/policy/ModifierShortcutManager;->launchApplication(Landroid/hardware/input/AppLaunchData;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4513
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void

    :pswitch_7
    if-eqz v3, :cond_16

    and-int/lit16 v0, v8, 0xc1

    if-eqz v0, :cond_6

    move v2, v9

    :cond_6
    move-object/from16 v0, p2

    .line 4450
    invoke-virtual {p0, v6, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendSwitchKeyboardLayout(ILandroid/os/IBinder;I)V

    return-void

    :pswitch_8
    if-eqz v3, :cond_16

    if-eqz v10, :cond_16

    .line 4444
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchTargetSearchActivity()V

    return-void

    :pswitch_9
    if-eqz v3, :cond_16

    .line 4437
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v2

    .line 4438
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v0

    aget v0, v0, v1

    const-string v1, "launchAllAppsViaA11y"

    .line 4437
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4439
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void

    :pswitch_a
    if-eqz v3, :cond_16

    const/16 v0, 0xd

    if-ne v5, v0, :cond_7

    goto :goto_3

    :cond_7
    move v2, v9

    .line 4426
    :goto_3
    invoke-virtual {p0, v6, v2}, Lcom/android/server/policy/PhoneWindowManager;->changeDisplayBrightnessValue(II)V

    return-void

    :pswitch_b
    if-eqz v3, :cond_16

    .line 4418
    invoke-virtual {p0, v7}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    return-void

    :pswitch_c
    if-eqz v0, :cond_8

    .line 4458
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v0

    .line 4457
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord(IJ)V

    return-void

    .line 4460
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    return-void

    :pswitch_d
    if-eqz v3, :cond_16

    const-wide/16 v0, 0x0

    .line 4367
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord(IJ)V

    return-void

    :pswitch_e
    if-eqz v3, :cond_16

    .line 4362
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    return-void

    :pswitch_f
    if-eqz v3, :cond_16

    if-eqz v10, :cond_16

    .line 4352
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showSystemSettings()V

    return-void

    :pswitch_10
    if-eqz v3, :cond_16

    if-eqz v10, :cond_16

    .line 4340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    .line 4339
    const-string v6, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    return-void

    :pswitch_11
    if-nez v9, :cond_16

    if-eqz v0, :cond_9

    .line 4330
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    return-void

    :cond_9
    if-eqz v3, :cond_16

    .line 4332
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return-void

    :pswitch_12
    if-eqz v3, :cond_16

    .line 4383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->injectBackGesture(J)V

    return-void

    :pswitch_13
    if-eqz v3, :cond_16

    .line 4324
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void

    :pswitch_14
    if-eqz v3, :cond_16

    .line 4347
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v6}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_a
    if-eqz v3, :cond_16

    .line 4506
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceAccessShortcutController:Lcom/android/server/policy/VoiceAccessShortcutController;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/policy/VoiceAccessShortcutController;->toggleVoiceAccess(I)Z

    return-void

    .line 4517
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getNotificationService()Landroid/app/NotificationManager;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 4519
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    if-eqz v0, :cond_c

    move v1, v2

    :cond_c
    xor-int/lit8 v0, v1, 0x1

    .line 4521
    const-string v1, "Key gesture DND"

    .line 4520
    invoke-virtual {p0, v0, v13, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    return-void

    :cond_d
    if-eqz v3, :cond_16

    .line 4500
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    sget-object v1, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->KEYBOARD:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/policy/TalkbackShortcutController;->toggleTalkback(ILcom/android/server/policy/TalkbackShortcutController$ShortcutSource;)Z

    return-void

    :cond_e
    if-eqz v0, :cond_f

    const/16 v0, 0x2713

    .line 4472
    const-string v1, "KEY_GESTURE_TYPE_GLOBAL_ACTIONS - Global Actions"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 4475
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    return-void

    .line 4477
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelGlobalActionsAction()V

    return-void

    :cond_10
    if-eqz v0, :cond_11

    .line 4465
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    return-void

    .line 4467
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    return-void

    :cond_12
    if-eqz v3, :cond_16

    .line 4357
    invoke-virtual {p0, v13}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-void

    :cond_13
    if-eqz v3, :cond_16

    .line 4371
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    if-eqz v0, :cond_16

    .line 4373
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result v0

    if-nez v0, :cond_16

    .line 4374
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4377
    const-string v0, "Error taking bugreport"

    invoke-static {v12, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_14
    if-eqz v3, :cond_16

    .line 4412
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->moveFocusedTaskToStageSplit(IZ)V

    return-void

    :cond_15
    if-eqz v3, :cond_16

    .line 4406
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->moveFocusedTaskToStageSplit(IZ)V

    :cond_16
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x33
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleKeyGestureInKeyGestureController(IIII)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 3573
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/input/InputManagerInternal;->handleKeyGestureInKeyGestureController(I[III)V

    return-void
.end method

.method public final handleRingerChordGesture()V
    .locals 3

    .line 1038
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_0

    return-void

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    .line 1042
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hush_gesture_used"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1044
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    return-void
.end method

.method public final handleScreenShot(I)V
    .locals 0

    .line 1951
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startScreenCapture()V

    return-void
.end method

.method public final handleShortPressOnHome(I)V
    .locals 2

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2006
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 2011
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2012
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    .line 2013
    const-string/jumbo p1, "short press on home"

    invoke-virtual {v0, p0, p1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    return-void

    .line 2018
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    return-void
.end method

.method public final handleSwitchKeyboardLayout(IILandroid/os/IBinder;)V
    .locals 0

    .line 4817
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4818
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowManagerInternal;->getTargetWindowTokenFromInputToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    .line 4819
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSwitchKeyboardLayoutShortcut(IILandroid/os/IBinder;)V

    return-void
.end method

.method public final handleTransitionForKeyguardLw(ZZ)I
    .locals 2

    if-eqz p2, :cond_0

    .line 4913
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardOcclusionChange()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 4916
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz p1, :cond_1

    const-string p1, "WindowManager"

    const-string v0, "Starting keyguard exit animation"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4917
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(J)V

    :cond_2
    return p2
.end method

.method public final handleUnhandledSystemKey(Landroid/view/KeyEvent;)V
    .locals 3

    .line 4795
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4796
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal keycode provided to handleUnhandledSystemKey: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4799
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4796
    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4802
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 4805
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    :cond_1
    return-void
.end method

.method public final hasLongPressOnBackBehavior()Z
    .locals 0

    .line 1852
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasLongPressOnPowerBehavior()Z
    .locals 0

    .line 1844
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasLongPressOnStemPrimaryBehavior()Z
    .locals 0

    .line 1856
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasStemPrimaryBehavior()Z
    .locals 3

    .line 1865
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1867
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1869
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressStemPrimaryCount()I

    move-result p0

    const/4 v2, 0x1

    if-gt p0, v2, :cond_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method public final hasVeryLongPressOnPowerBehavior()Z
    .locals 0

    .line 1848
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideBootMessages()V
    .locals 1

    .line 6986
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final hideRecentApps(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 5070
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 5071
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5073
    invoke-interface {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    :cond_0
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 0

    .line 6777
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6778
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1

    .line 2405
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V
    .locals 13

    .line 2410
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2411
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getWindowManagerFuncs()Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2412
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2413
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2414
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 2415
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2416
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2417
    const-class v0, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 2418
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 2419
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2420
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2421
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 2422
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2423
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2424
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2425
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2426
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 2427
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 2428
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 2429
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 2430
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getAccessibilityShortcutController(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/accessibility/AccessibilityShortcutController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 2432
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getGlobalActionsFactory()Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Ljava/util/function/Supplier;

    .line 2433
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2434
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2436
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102a8

    .line 2438
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    const v1, 0x11102a6

    .line 2440
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    const v1, 0x11102a7

    .line 2442
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    .line 2445
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2449
    const-string/jumbo v1, "persist.debug.force_burn_in"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    if-eqz v1, :cond_2

    .line 2461
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const/4 v1, -0x8

    const/16 v3, 0x8

    const/4 v4, -0x4

    move v8, v1

    move v10, v8

    move v11, v4

    :goto_1
    move v12, v0

    move v9, v3

    goto :goto_2

    .line 2463
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003e

    .line 2464
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v3, 0x10e003b

    .line 2466
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x10e003f

    .line 2468
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x10e003d

    .line 2470
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x10e003c

    .line 2472
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    move v8, v1

    move v10, v4

    move v11, v5

    goto :goto_1

    .line 2475
    :goto_2
    new-instance v6, Lcom/android/server/policy/BurnInProtectionHelper;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct/range {v6 .. v12}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 2479
    :cond_3
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;Lcom/android/server/policy/PhoneWindowManager-IA;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 2480
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2481
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 2482
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 2483
    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 2484
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/policy/ModifierShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    .line 2485
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 2487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 2488
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2489
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2491
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111016e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 2493
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2494
    const-string v5, "android.intent.category.CAR_DOCK"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2495
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 2498
    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2499
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2501
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 2502
    const-string v1, "android.intent.category.VR_HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2503
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2506
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2507
    const-string v1, "PhoneWindowManager.mBroadcastWakeLock"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2509
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2511
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    .line 2512
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2514
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2517
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 2520
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 2522
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2523
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110262

    .line 2524
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    .line 2528
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2531
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2533
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 2535
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2537
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2538
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104026d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2537
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 2540
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2541
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2540
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 2543
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 2545
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110242

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    .line 2547
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 2550
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2552
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11101bc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2555
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0160

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    .line 2558
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0132

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyBehavior:I

    .line 2561
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2562
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10402d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2561
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    .line 2564
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2566
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 2568
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2571
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2572
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2573
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2574
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2575
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2576
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2577
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2580
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2581
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2583
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2585
    new-instance v0, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2588
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 2591
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2592
    invoke-virtual {p0, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(II)V

    .line 2594
    invoke-virtual {p0, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(II)V

    .line 2598
    :cond_5
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 2633
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2635
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    .line 2637
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getKeyguardServiceDelegate()Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2638
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getTalkbackShortcutController()Lcom/android/server/policy/TalkbackShortcutController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    .line 2639
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getVoiceAccessShortcutController()Lcom/android/server/policy/VoiceAccessShortcutController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceAccessShortcutController:Lcom/android/server/policy/VoiceAccessShortcutController;

    .line 2640
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getWindowWakeUpPolicy()Lcom/android/server/policy/WindowWakeUpPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 2641
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    .line 2642
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->initSingleKeyGestureRules(Landroid/os/Looper;)V

    .line 2643
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initKeyGestures()V

    .line 2644
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getButtonOverridePermissionChecker()Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    .line 2645
    new-instance p1, Lcom/android/server/policy/SideFpsEventHandler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    return-void
.end method

.method public final initKeyCombinationRules()V
    .locals 5

    .line 2649
    new-instance v0, Lcom/android/server/policy/KeyCombinationManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 2650
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2653
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v1, 0x19

    const/16 v2, 0x1a

    if-eqz v0, :cond_1

    .line 2657
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 2671
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_1

    .line 2672
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$7;

    const/16 v4, 0x108

    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 2688
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$8;

    const/16 v4, 0x18

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 2708
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 2751
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_2

    .line 2752
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$10;

    const/16 v2, 0x14

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 2775
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$11;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final initKeyGestures()V
    .locals 33

    move-object/from16 v0, p0

    .line 4264
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    .line 4265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x4

    .line 4266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x5

    .line 4267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x6

    .line 4268
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v2, 0x1

    .line 4269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v2, 0x7

    .line 4270
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x20

    .line 4271
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v2, 0x8

    .line 4272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v2, 0xa

    .line 4273
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v2, 0x1f

    .line 4274
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v2, 0x3

    .line 4275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v2, 0x35

    .line 4276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v2, 0x34

    .line 4277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v2, 0x1b

    .line 4278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v2, 0x1c

    .line 4279
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v2, 0xc

    .line 4280
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v2, 0xd

    .line 4281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v2, 0xe

    .line 4282
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v2, 0x36

    .line 4283
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v2, 0x15

    .line 4284
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v2, 0x16

    .line 4285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v2, 0x17

    .line 4286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v2, 0x3c

    .line 4287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v2, 0x3d

    .line 4288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v2, 0x33

    .line 4289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v2, 0x4b

    .line 4290
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v2, 0xb

    .line 4291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v2, 0x38

    .line 4292
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v2, 0x39

    .line 4293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v2, 0x3b

    .line 4294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    filled-new-array/range {v3 .. v32}, [Ljava/lang/Integer;

    move-result-object v2

    .line 4264
    invoke-static {v2}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4302
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    return-void
.end method

.method public final initSingleKeyGestureRules(Landroid/os/Looper;)V
    .locals 1

    .line 3059
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->get(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/policy/SingleKeyGestureDetector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 3060
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 3061
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3062
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 3064
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasStemPrimaryBehavior()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3065
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 3067
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    return-void
.end method

.method public initializeHdmiState()V
    .locals 1

    .line 5216
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 5218
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5220
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 5221
    throw p0
.end method

.method public initializeHdmiStateInternal()V
    .locals 9

    .line 5225
    const-string v0, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    .line 5227
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 5228
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v6, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v1, v6}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 5233
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/hdmi/state"

    invoke-direct {v1, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xf

    .line 5234
    :try_start_1
    new-array v2, v2, [C

    .line 5235
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v6

    if-le v6, v4, :cond_0

    .line 5237
    new-instance v7, Ljava/lang/String;

    sub-int/2addr v6, v4

    invoke-direct {v7, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    move v5, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    .line 5246
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_2

    .line 5242
    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    goto :goto_0

    .line 5240
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_0

    :goto_3
    if-eqz v2, :cond_1

    .line 5246
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 5250
    :catch_4
    :cond_1
    throw p0

    .line 5252
    :cond_2
    const-string v0, "HDMI"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 5253
    invoke-static {v0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5255
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5257
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager-IA;)V

    .line 5258
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->-$$Nest$minit(Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;Lcom/android/server/ExtconUEventObserver$ExtconInfo;)Z

    move-result v5

    .line 5259
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    goto :goto_4

    .line 5260
    :cond_3
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v0, :cond_4

    .line 5261
    const-string v0, "Not observing HDMI plug state because HDMI was not found."

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5267
    :catch_5
    :cond_4
    :goto_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    return-void
.end method

.method public final injectBackGesture(J)V
    .locals 14

    .line 4613
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->requestBackGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4617
    :cond_0
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x48

    const/16 v13, 0x101

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-wide v4, p1

    move-wide v2, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 4622
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/4 v0, 0x1

    .line 4626
    invoke-static {v1, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4627
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 4629
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    .line 4630
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method

.method public final injectCustomVolumeKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 4

    .line 8105
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->createMappedVolumeKeyEvent(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 8109
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectCustomVolumeKeyEvent sourceKeyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8110
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mappedKeyCode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8109
    const-string v2, "WindowManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8112
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 8115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to inject custom volume key event, mappedKeyCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public final interceptAccessibilityGestureTv()V
    .locals 4

    .line 4693
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4694
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 4695
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4696
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptAccessibilityShortcutChord()V
    .locals 4

    .line 1883
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1884
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1885
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    .line 1884
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptBugreportGestureTv()V
    .locals 3

    .line 4677
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4679
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 4680
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4681
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 9

    .line 3592
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    .line 3593
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    .line 3596
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 3598
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_0

    .line 3599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptKeyTi keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3600
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " repeatCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3601
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keyguardOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3602
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " canceled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3599
    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_2

    .line 3606
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v2, p2}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v3

    :cond_1
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 3611
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3612
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, p3}, Lcom/android/server/policy/KeyCombinationManager;->getKeyInterceptTimeout(I)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    sub-long/2addr v7, v5

    return-wide v7

    .line 3620
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_3

    .line 3622
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3623
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3626
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemKeysAndShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3627
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 3628
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-wide v3

    .line 3632
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 3633
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3634
    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3635
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3636
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_6
    if-eqz p1, :cond_7

    return-wide v3

    :cond_7
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p2

    .line 5274
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 5275
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v3

    :goto_0
    and-int/lit8 v0, v8, 0x1

    if-nez v0, :cond_2

    .line 5277
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const/high16 v4, 0x40000

    and-int/2addr v4, v8

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v3

    .line 5282
    :goto_3
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 5283
    invoke-static {v5}, Landroid/view/KeyEvent;->isVisibleBackgroundUserAllowedKey(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 5284
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    invoke-virtual {v1, v6, v5, v7}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    return v3

    .line 5289
    :cond_4
    const-string/jumbo v6, "sys.hu.status"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5291
    const-string v7, "WindowManager"

    if-eqz v6, :cond_6

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "shutdown"

    .line 5292
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "boot_started"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 5293
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPO skip key request when huStatus is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 5298
    :cond_6
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/16 v10, 0xb1

    const/16 v11, 0x1a

    if-nez v6, :cond_b

    if-eqz v9, :cond_8

    if-eq v5, v11, :cond_7

    if-ne v5, v10, :cond_8

    .line 5306
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    goto :goto_4

    :cond_8
    if-eqz v9, :cond_a

    if-nez v0, :cond_9

    const/16 v0, 0xe0

    if-ne v5, v0, :cond_a

    .line 5309
    :cond_9
    invoke-virtual {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5310
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 5314
    :goto_4
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5316
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    :cond_a
    return v3

    :cond_b
    const/high16 v6, 0x20000000

    and-int/2addr v6, v8

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_5

    :cond_c
    move v6, v3

    .line 5323
    :goto_5
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v12

    .line 5324
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v13

    const/high16 v14, 0x1000000

    and-int/2addr v14, v8

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    goto :goto_6

    :cond_d
    move v14, v3

    .line 5326
    :goto_6
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v3, :cond_f

    if-eqz v6, :cond_e

    .line 5327
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_7

    .line 5328
    :cond_e
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_7
    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    .line 5330
    :goto_8
    sget-boolean v16, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v16, :cond_10

    .line 5335
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "interceptKeyTq keycode="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " interactive="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " keyguardActive="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " policyFlags="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5337
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 5335
    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v15, -0x1

    if-nez v6, :cond_12

    if-eqz v14, :cond_12

    if-nez v0, :cond_12

    .line 5343
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inject keyevent when screen off. ignore! keyevent="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_9
    move v11, v0

    move v10, v12

    const/4 v12, 0x0

    goto :goto_d

    :cond_12
    if-nez v6, :cond_17

    if-eqz v14, :cond_13

    if-nez v0, :cond_13

    goto :goto_b

    .line 5361
    :cond_13
    invoke-virtual {v1, v13, v5}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 5368
    iput v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move v11, v0

    move v10, v12

    :goto_a
    const/4 v12, 0x1

    goto :goto_d

    :cond_14
    if-eqz v0, :cond_16

    if-eqz v9, :cond_15

    .line 5373
    invoke-virtual {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v10

    if-nez v10, :cond_16

    :cond_15
    const/4 v0, 0x0

    :cond_16
    if-eqz v0, :cond_11

    if-eqz v9, :cond_11

    .line 5378
    iput v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    goto :goto_9

    :cond_17
    :goto_b
    if-eqz v6, :cond_19

    .line 5355
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v5, v0, :cond_18

    if-nez v9, :cond_18

    const/4 v0, 0x0

    goto :goto_c

    :cond_18
    const/4 v0, 0x1

    .line 5359
    :goto_c
    iput v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move v10, v12

    const/4 v11, 0x0

    move v12, v0

    goto :goto_d

    :cond_19
    move v10, v12

    const/4 v11, 0x0

    goto :goto_a

    .line 5384
    :goto_d
    invoke-static {v5}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 5385
    invoke-virtual {v0, v5}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez v6, :cond_1a

    if-eqz v11, :cond_1a

    if-eqz v9, :cond_1a

    .line 5387
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 5388
    invoke-virtual {v0, v5}, Lcom/android/server/policy/GlobalKeyManager;->shouldDispatchFromNonInteractive(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5389
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalKeyManager;->setBeganFromNonInteractive()V

    .line 5392
    iput v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    const/4 v15, 0x1

    goto :goto_e

    :cond_1a
    move v15, v12

    :goto_e
    if-eqz v11, :cond_1b

    .line 5396
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :cond_1b
    return v15

    .line 5402
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v0

    const/16 v15, 0xb1

    if-ne v5, v15, :cond_1e

    .line 5403
    iget-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v15, :cond_1e

    if-eqz v0, :cond_1d

    .line 5404
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->shouldHandleTvPowerKey()Z

    move-result v15

    if-nez v15, :cond_1e

    .line 5406
    :cond_1d
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v18

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    .line 5407
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v22

    .line 5408
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v24

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v25

    .line 5409
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v26

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v27

    .line 5410
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v28

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v29

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v30

    const/16 v31, 0x0

    const/16 v23, 0x1a

    .line 5405
    invoke-static/range {v18 .. v31}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 5411
    invoke-virtual {v1, v0, v8}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0

    .line 5416
    :cond_1e
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v15}, Landroid/view/Display;->getState()I

    move-result v15

    invoke-static {v15}, Landroid/view/Display;->isOnState(I)Z

    move-result v15

    move-object/from16 v17, v0

    .line 5417
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-eqz v6, :cond_1f

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    :goto_f
    if-eqz v4, :cond_20

    .line 5421
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v15}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    move/from16 v18, v3

    goto :goto_10

    :cond_20
    move/from16 v18, v3

    .line 5423
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_21

    .line 5424
    invoke-virtual {v1, v2, v0, v15}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGesture(Landroid/view/KeyEvent;ZZ)V

    .line 5430
    :cond_21
    :goto_10
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    goto :goto_11

    :cond_22
    const/4 v3, 0x0

    :goto_11
    if-eqz v9, :cond_24

    and-int/lit8 v15, v8, 0x2

    if-eqz v15, :cond_24

    if-eqz v3, :cond_23

    .line 5431
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v3, :cond_24

    .line 5434
    :cond_23
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_24

    move v3, v13

    const/4 v13, 0x1

    goto :goto_12

    :cond_24
    move v3, v13

    const/4 v13, 0x0

    .line 5437
    :goto_12
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDebugger:Lcom/mediatek/server/wm/WindowManagerDebugger;

    sget-boolean v19, Lcom/mediatek/server/wm/WindowManagerDebugger;->WMS_DEBUG_ENG:Z

    if-nez v19, :cond_25

    sget-boolean v19, Lcom/mediatek/server/wm/WindowManagerDebugger;->WMS_DEBUG_USER_DEBUG:Z

    if-eqz v19, :cond_26

    :cond_25
    move/from16 v19, v4

    goto :goto_13

    :cond_26
    move/from16 v34, v3

    move/from16 v32, v4

    move-object/from16 v33, v7

    const/4 v15, 0x0

    goto :goto_14

    .line 5438
    :goto_13
    const-string v4, "WindowManager"

    move/from16 v34, v3

    move-object/from16 v33, v7

    move-object v3, v15

    move/from16 v7, v18

    move/from16 v32, v19

    const/4 v15, 0x0

    invoke-virtual/range {v3 .. v14}, Lcom/mediatek/server/wm/WindowManagerDebugger;->debugInterceptKeyBeforeQueueing(Ljava/lang/String;IZZIZZZIZZ)V

    .line 5442
    :goto_14
    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarCenter:Z

    .line 5443
    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarRight:Z

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v5, v3, :cond_54

    const/4 v7, 0x5

    if-eq v5, v7, :cond_52

    const/4 v8, 0x6

    if-eq v5, v8, :cond_4d

    const/16 v3, 0x7e

    if-eq v5, v3, :cond_2d

    const/16 v3, 0x7f

    if-eq v5, v3, :cond_2d

    const/16 v3, 0x82

    if-eq v5, v3, :cond_2d

    const/16 v3, 0x83

    if-eq v5, v3, :cond_3c

    const/16 v3, 0x22

    packed-switch v5, :pswitch_data_0

    const/16 v0, 0x24

    sparse-switch v5, :sswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    packed-switch v5, :pswitch_data_4

    packed-switch v5, :pswitch_data_5

    :sswitch_0
    move-object/from16 v14, v33

    goto/16 :goto_27

    :pswitch_0
    move v3, v11

    move-object/from16 v14, v33

    goto/16 :goto_29

    .line 5813
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stylus buttons event: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " received. Should handle event? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, v33

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5815
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    if-eqz v0, :cond_27

    .line 5816
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    :cond_27
    :goto_15
    move v3, v11

    goto/16 :goto_29

    :pswitch_2
    move-object/from16 v14, v33

    const/16 v0, 0x23

    .line 5630
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    .line 5633
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    goto :goto_15

    :pswitch_3
    move-object/from16 v14, v33

    .line 5672
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/enote/ENoteSetting;->isHallFunctionEnabled()Z

    move-result v0

    if-nez v0, :cond_28

    .line 5674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYCODE_WAKEUP isHallFunctionEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_28
    const/16 v0, 0x25

    .line 5677
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    const/4 v3, 0x1

    goto/16 :goto_29

    :pswitch_4
    move-object/from16 v14, v33

    .line 5638
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/enote/ENoteSetting;->isHallFunctionEnabled()Z

    move-result v3

    if-nez v3, :cond_29

    .line 5640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYCODE_SLEEP isHallFunctionEnabled "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 5643
    :cond_29
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    .line 5647
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2a

    move v3, v15

    goto :goto_16

    :cond_2a
    move v3, v13

    :goto_16
    if-eqz v9, :cond_2b

    .line 5651
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto :goto_17

    .line 5653
    :cond_2b
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    .line 5655
    :goto_17
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    move v13, v3

    :cond_2c
    :goto_18
    move v3, v15

    goto/16 :goto_29

    :cond_2d
    :pswitch_5
    :sswitch_1
    move-object/from16 v14, v33

    goto/16 :goto_23

    :pswitch_6
    move-object/from16 v14, v33

    if-eqz v9, :cond_27

    .line 5686
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_27

    const/16 v5, 0x1a

    .line 5687
    invoke-virtual {v1, v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    .line 5689
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleMicrophoneMuteFromKey()V

    goto/16 :goto_15

    :sswitch_2
    move-object/from16 v14, v33

    goto/16 :goto_15

    :sswitch_3
    move-object/from16 v14, v33

    .line 5660
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    if-nez v9, :cond_2e

    .line 5665
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    .line 5667
    :cond_2e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    goto :goto_18

    :sswitch_4
    move-object/from16 v14, v33

    if-eqz v9, :cond_55

    .line 5782
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_55

    if-nez v12, :cond_55

    .line 5785
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    goto/16 :goto_27

    :sswitch_5
    move-object/from16 v14, v33

    if-nez v9, :cond_27

    .line 5757
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5758
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x1

    .line 5759
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5760
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5761
    invoke-virtual {v1, v2, v8}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto/16 :goto_15

    :sswitch_6
    move-object/from16 v14, v33

    .line 5743
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_2f

    const/4 v3, 0x1

    goto :goto_19

    :cond_2f
    move v3, v15

    :goto_19
    if-eqz v9, :cond_27

    if-nez v3, :cond_27

    .line 5745
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    .line 5746
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x17

    .line 5745
    invoke-virtual {v0, v5, v3, v15, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x1

    .line 5747
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5748
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5749
    invoke-virtual {v1, v2, v7}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto/16 :goto_15

    :sswitch_7
    move-object/from16 v14, v33

    .line 5595
    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    if-eqz v9, :cond_2c

    if-eqz v17, :cond_2c

    .line 5600
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/hdmi/HdmiControlManager;->toggleAndFollowTvPower()V

    goto/16 :goto_18

    :sswitch_8
    move-object/from16 v14, v33

    .line 5768
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_55

    .line 5769
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v0, :cond_55

    if-nez v9, :cond_27

    .line 5774
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    goto/16 :goto_15

    :pswitch_7
    :sswitch_9
    move-object/from16 v14, v33

    goto :goto_1a

    :pswitch_8
    move-object/from16 v14, v33

    const/16 v5, 0x1a

    .line 5606
    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    .line 5609
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 5610
    iget-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 5611
    invoke-virtual {v6, v5}, Lcom/android/server/policy/SingleKeyGestureDetector;->getKeyPressCounter(I)I

    move-result v5

    .line 5608
    invoke-static {v3, v4, v5}, Lcom/android/server/policy/EventLogTags;->writeInterceptPower(Ljava/lang/String;II)V

    if-eqz v9, :cond_30

    move/from16 v3, v32

    .line 5616
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_18

    .line 5618
    :cond_30
    invoke-virtual {v1, v2, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_18

    :goto_1a
    const/16 v0, 0x18

    const/16 v3, 0x19

    if-eq v5, v3, :cond_31

    if-ne v5, v0, :cond_32

    .line 5485
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lcom/android/server/policy/PhoneWindowManager;->handleCustomKeyAction(Landroid/view/KeyEvent;Z)Z

    move-result v6

    if-eqz v6, :cond_32

    goto/16 :goto_15

    :cond_32
    if-ne v5, v3, :cond_33

    const/16 v0, 0x13

    goto :goto_1b

    :cond_33
    if-ne v5, v0, :cond_34

    const/16 v0, 0x12

    goto :goto_1b

    :cond_34
    const/16 v0, 0x14

    .line 5494
    :goto_1b
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionDown(Landroid/view/KeyEvent;I)V

    const/high16 v3, -0x80000000

    if-eqz v9, :cond_39

    .line 5496
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 5498
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getNotificationService()Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 5499
    iget-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v5, :cond_35

    .line 5500
    invoke-virtual {v0}, Landroid/app/NotificationManager;->silenceNotificationSound()V

    .line 5503
    :cond_35
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 5504
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_36

    .line 5507
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 5514
    const-string v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5519
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto/16 :goto_15

    .line 5529
    :cond_36
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1c

    :catch_0
    move-exception v0

    .line 5531
    const-string v6, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v14, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v15

    :goto_1c
    if-eqz v5, :cond_37

    .line 5533
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v5

    if-nez v5, :cond_38

    :cond_37
    if-ne v0, v4, :cond_39

    :cond_38
    if-nez v12, :cond_39

    .line 5538
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v15}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_27

    .line 5543
    :cond_39
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_3b

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_3a

    goto :goto_1d

    :cond_3a
    if-nez v12, :cond_55

    .line 5551
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_27

    :cond_3b
    :goto_1d
    move v3, v11

    const/4 v15, 0x1

    goto/16 :goto_29

    :cond_3c
    move-object/from16 v14, v33

    .line 5849
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 5850
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleCustomKeyAction(Landroid/view/KeyEvent;Z)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto/16 :goto_15

    .line 5854
    :cond_3d
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/enote/ENoteSetting;->getInstance(Landroid/content/Context;)Landroid/os/enote/ENoteSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/enote/ENoteSetting;->isEnableBottomQuickbarAi()Z

    move-result v3

    .line 5855
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 5856
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v5, :cond_3e

    .line 5857
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyTq 131 down="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " repeatCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mLongClicked= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongClicked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",mPassClicked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPassClicked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",mTouchQuickBarRight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarRight:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ,enableBottomQuickbarAi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    if-nez v3, :cond_40

    .line 5862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptKeyTi 131 now not enableBottomQuickbar,then return! And down = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5863
    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarRight:Z

    if-eqz v9, :cond_3f

    if-nez v4, :cond_3f

    .line 5865
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mCheckShowQuickbarButtonDisablePopupWindowIfNeed:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5866
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mCheckShowQuickbarButtonDisablePopupWindowIfNeed:Ljava/lang/Runnable;

    sget v4, Lcom/android/server/policy/PhoneWindowManager;->CHECK_SHOW_QUICKBUTTON_DISABLE_TIME:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_15

    :cond_3f
    if-nez v9, :cond_27

    .line 5868
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mCheckShowQuickbarButtonDisablePopupWindowIfNeed:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_15

    .line 5873
    :cond_40
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mCustomAiKey:Ljava/lang/String;

    if-eqz v3, :cond_42

    .line 5876
    const-string v5, "com.viwoods.viwoodsai/com.wisky.wiskyai.WebViewAiActivity"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    goto :goto_1e

    :cond_41
    move v5, v15

    goto :goto_1f

    :cond_42
    :goto_1e
    const/4 v5, 0x1

    .line 5884
    :goto_1f
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    if-nez v6, :cond_4a

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_4a

    if-eqz v0, :cond_43

    goto/16 :goto_22

    :cond_43
    if-nez v0, :cond_55

    .line 5890
    const-string v0, "com.viwdoos.mtk"

    if-eqz v9, :cond_46

    const/4 v6, 0x1

    .line 5891
    iput-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarRight:Z

    if-nez v4, :cond_49

    .line 5893
    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mPassClicked:Z

    .line 5894
    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongClicked:Z

    .line 5895
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTopActivityPkgNameByActivityManager()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 5896
    const-string v0, "ai"

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendKeyCodeBroadcast(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_44
    if-eqz v5, :cond_45

    .line 5902
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mCheckPassClicked:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5903
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5904
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mCheckPassClicked:Ljava/lang/Runnable;

    sget v5, Lcom/android/server/policy/PhoneWindowManager;->PASS_CLICK_TIME:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5905
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mCheckLongPress:Ljava/lang/Runnable;

    sget v5, Lcom/android/server/policy/PhoneWindowManager;->AI_KEY_LONG_CLICK_TIME:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21

    .line 5907
    :cond_45
    invoke-virtual {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptLaunchActivity(Ljava/lang/String;)V

    goto :goto_21

    :cond_46
    if-eqz v5, :cond_48

    .line 5912
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mCheckPassClicked:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5913
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5914
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->collapsePanels()V

    .line 5915
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPassClicked:Z

    if-eqz v3, :cond_47

    .line 5916
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/enote/ENoteSetting;->getInstance(Landroid/content/Context;)Landroid/os/enote/ENoteSetting;

    move-result-object v3

    const-string/jumbo v4, "shortPress"

    invoke-virtual {v3, v4}, Landroid/os/enote/ENoteSetting;->updateAiState(Ljava/lang/String;)V

    goto :goto_20

    .line 5918
    :cond_47
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/enote/ENoteSetting;->getInstance(Landroid/content/Context;)Landroid/os/enote/ENoteSetting;

    move-result-object v3

    const-string v4, "cancel"

    invoke-virtual {v3, v4}, Landroid/os/enote/ENoteSetting;->updateAiState(Ljava/lang/String;)V

    .line 5921
    :cond_48
    :goto_20
    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mTouchQuickBarRight:Z

    .line 5923
    :cond_49
    :goto_21
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTopActivityPkgNameByActivityManager()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto/16 :goto_15

    .line 5885
    :cond_4a
    :goto_22
    const-string v0, "interceptKeyTq KEYCODE_AI: keyguardOn or DeviceGoingToSleep or ScreenOff, ignore."

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :goto_23
    const/16 v0, 0x26

    .line 5703
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    .line 5705
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v0

    if-eqz v0, :cond_4b

    move v3, v15

    goto :goto_24

    :cond_4b
    move v3, v12

    :goto_24
    if-nez v3, :cond_4c

    .line 5716
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5717
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v4, 0x1

    .line 5719
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5720
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4c
    :goto_25
    move v15, v3

    goto/16 :goto_15

    :cond_4d
    move-object/from16 v14, v33

    if-eqz v9, :cond_50

    .line 5560
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 5563
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v3

    goto :goto_26

    :cond_4e
    move v3, v15

    :goto_26
    if-eqz v6, :cond_4f

    if-nez v3, :cond_4f

    .line 5566
    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 5567
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5568
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v4

    .line 5567
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v4, 0x1

    goto/16 :goto_15

    :cond_4f
    const/4 v4, 0x1

    .line 5570
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    goto/16 :goto_15

    :cond_50
    const/4 v4, 0x1

    .line 5573
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v0, :cond_27

    .line 5574
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v10, :cond_27

    .line 5576
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_51

    .line 5578
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v0

    if-eqz v0, :cond_51

    goto/16 :goto_15

    .line 5582
    :cond_51
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_27

    .line 5584
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v3, v15}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    goto/16 :goto_18

    :cond_52
    move-object/from16 v14, v33

    if-eqz v9, :cond_55

    .line 5727
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 5729
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 5730
    const-string v3, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5732
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    move v3, v15

    goto :goto_25

    :cond_53
    move v3, v12

    goto :goto_25

    :cond_54
    move-object/from16 v14, v33

    .line 5447
    invoke-virtual {v1, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    if-eqz v9, :cond_56

    .line 5452
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->moveFocusToAdjacentEmbeddedActivityIfNeeded()Z

    .line 5453
    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    :cond_55
    :goto_27
    move v3, v11

    move v15, v12

    goto :goto_29

    .line 5455
    :cond_56
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-nez v0, :cond_57

    .line 5456
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->backKeyPress()Z

    move-result v3

    or-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 5459
    :cond_57
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-eqz v0, :cond_58

    move v3, v15

    goto :goto_28

    :cond_58
    move v3, v12

    .line 5463
    :goto_28
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->collapsePanels()V

    .line 5465
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_25

    :goto_29
    if-eqz v13, :cond_59

    .line 5932
    const-string v0, "Virtual Key - Press"

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    :cond_59
    if-eqz v3, :cond_5a

    .line 5936
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :cond_5a
    if-eqz v15, :cond_5b

    move/from16 v3, v34

    const/4 v2, -0x1

    if-eq v3, v2, :cond_5b

    .line 5942
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq v3, v0, :cond_5b

    .line 5950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to move non-focused display "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to top because a key is targeting it"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5952
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->moveDisplayToTopIfAllowed(I)V

    :cond_5b
    return v15

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0xa4 -> :sswitch_9
        0xab -> :sswitch_8
        0xb1 -> :sswitch_7
        0xdb -> :sswitch_6
        0xe7 -> :sswitch_5
        0x108 -> :sswitch_4
        0x114 -> :sswitch_3
        0x121 -> :sswitch_2
        0x122 -> :sswitch_2
        0x123 -> :sswitch_2
        0x124 -> :sswitch_2
        0x125 -> :sswitch_2
        0x126 -> :sswitch_2
        0x127 -> :sswitch_2
        0x128 -> :sswitch_2
        0x129 -> :sswitch_2
        0x12a -> :sswitch_2
        0x12b -> :sswitch_2
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x130 -> :sswitch_2
        0x13f -> :sswitch_0
        0x140 -> :sswitch_0
        0x141 -> :sswitch_0
        0x143 -> :sswitch_0
        0x146 -> :sswitch_0
        0x147 -> :sswitch_0
        0x148 -> :sswitch_0
        0x149 -> :sswitch_0
        0x14a -> :sswitch_0
        0x14b -> :sswitch_0
        0x14c -> :sswitch_0
        0x14d -> :sswitch_0
        0x14e -> :sswitch_0
        0x14f -> :sswitch_0
        0x150 -> :sswitch_0
        0x151 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xde
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x118
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x134
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x139
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final interceptLaunchActivity(Ljava/lang/String;)V
    .locals 2

    .line 8172
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8173
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 8174
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 8175
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 8176
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "interceptLaunchActivity activityPath="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IIIJI)I
    .locals 13

    const/4 v0, 0x1

    and-int/lit8 v1, p6, 0x1

    const-wide/32 v2, 0xf4240

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 6099
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    div-long v7, p4, v2

    if-nez p3, :cond_0

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v4

    :goto_0
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    move v6, p1

    move v9, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromMotion(IJIZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    return v0

    .line 6106
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    .line 6113
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 6114
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    div-long v8, p4, v2

    if-nez p3, :cond_3

    move v11, v0

    goto :goto_1

    :cond_3
    move v11, v4

    :goto_1
    iget-boolean v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    move v7, p1

    move v10, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromMotion(IJIZZ)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v4
.end method

.method public final interceptPowerKeyDown(Landroid/view/KeyEvent;ZZ)V
    .locals 4

    .line 1122
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1132
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1135
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_0

    .line 1136
    :cond_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 1138
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 1141
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 1145
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, p1}, Landroid/os/PowerManagerInternal;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1148
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1152
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 1154
    invoke-virtual {p3}, Lcom/android/server/policy/KeyCombinationManager;->isPowerKeyIntercepted()Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1156
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez p3, :cond_5

    if-nez p2, :cond_6

    .line 1158
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    return-void

    .line 1162
    :cond_5
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->isKeyIntercepted(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1163
    const-string p1, "WindowManager"

    const-string p2, "Skip power key gesture for other policy has handled it."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    :cond_6
    return-void
.end method

.method public final interceptPowerKeyUp(Landroid/view/KeyEvent;Z)V
    .locals 0

    .line 1171
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1172
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method public final interceptRingerToggleChord()V
    .locals 4

    .line 1889
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1890
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1891
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v2

    .line 1890
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptScreenshotChord(IJ)V
    .locals 2

    .line 1875
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1878
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptSystemKeysAndShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 3660
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemKeysAndShortcutsNew(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final interceptSystemKeysAndShortcutsNew(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 5

    .line 4207
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4208
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    const/16 v2, 0xa4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x108

    if-eq v0, v2, :cond_0

    const/16 p1, 0x18

    if-eq v0, p1, :cond_2

    const/16 p1, 0x19

    if-eq v0, p1, :cond_2

    goto :goto_0

    .line 4234
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->prepareToSendSystemKeyToApplication(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    .line 4239
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    return v4

    .line 4216
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz p1, :cond_3

    goto :goto_1

    .line 4226
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4227
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4228
    invoke-virtual {p1}, Landroid/view/InputDevice;->isExternal()Z

    move-result p1

    if-nez p1, :cond_4

    return v4

    .line 4243
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4244
    invoke-virtual {p1, p0, v0, p2}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v4

    :cond_5
    const/high16 p0, 0x10000

    and-int/2addr p0, v1

    if-eqz p0, :cond_6

    return v4

    :cond_6
    return v3

    .line 4219
    :cond_7
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    return v4

    .line 4212
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .locals 2

    .line 6008
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6009
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6010
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6011
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_1

    .line 6012
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    :cond_1
    return-void
.end method

.method public interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
    .locals 3

    .line 4718
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    .line 4719
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4720
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4721
    const-string v0, "<unknown>"

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 4722
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled key: inputToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", title="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", action="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4724
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", flags="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4725
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", keyCode="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4726
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", scanCode="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4727
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", metaState="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4728
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", repeatCount="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4729
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4722
    const-string v0, "WindowManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    .line 4733
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 4734
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 4735
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getModifiers()I

    const/16 v0, 0x108

    if-ne p2, v0, :cond_2

    .line 4739
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleUnhandledSystemKey(Landroid/view/KeyEvent;)V

    .line 4740
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isAutoUserSetupComplete()Z
    .locals 3

    .line 1993
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "android.car.SETUP_WIZARD_IN_PROGRESS"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public isDeviceProvisioned()Z
    .locals 2

    .line 1976
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1977
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1976
    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public isGlobalKey(I)Z
    .locals 0

    .line 7312
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(I)Z

    move-result p0

    return p0
.end method

.method public final isHidden(I)Z
    .locals 3

    .line 3442
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final isKeyEventForCurrentUser(IILjava/lang/String;)Z
    .locals 2

    .line 7878
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 7881
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p1

    .line 7882
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    if-ne p1, p0, :cond_1

    return v1

    .line 7885
    :cond_1
    sget-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz p0, :cond_3

    .line 7886
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    .line 7887
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for visible background user(u"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7886
    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 1

    .line 6799
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6800
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 6801
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    .line 3480
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x7f8

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardLocked()Z
    .locals 0

    .line 6757
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p0

    return p0
.end method

.method public isKeyguardOccluded()Z
    .locals 0

    .line 6770
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6771
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isOccluded()Z

    move-result p0

    return p0
.end method

.method public isKeyguardSecure(I)Z
    .locals 0

    .line 6763
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6764
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowing()Z
    .locals 0

    .line 6738
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6739
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .line 6744
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6745
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isKeyguardTrustedLw()Z
    .locals 0

    .line 6750
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6751
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result p0

    return p0
.end method

.method public final isRoundWindow()Z
    .locals 0

    .line 2320
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result p0

    return p0
.end method

.method public isScreenOn()Z
    .locals 0

    .line 6712
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result p0

    return p0
.end method

.method public final isTheaterModeEnabled()Z
    .locals 2

    .line 7297
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "theater_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public final isTvUserSetupComplete()Z
    .locals 3

    .line 1998
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "tv_user_setup_complete"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public isUserSetupComplete()Z
    .locals 4

    .line 1982
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 1984
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_1

    .line 1985
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result p0

    :goto_0
    and-int/2addr p0, v3

    return p0

    .line 1986
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    if-eqz v0, :cond_2

    .line 1987
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isAutoUserSetupComplete()Z

    move-result p0

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final isWakeKeyWhenScreenOff(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xdb

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x1

    return p0

    .line 6087
    :pswitch_0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    return p0

    .line 6075
    :pswitch_1
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    return p0

    .line 6078
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    return p0

    .line 6081
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x134
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public keyguardOn()Z
    .locals 1

    .line 3534
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result p0

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

.method public final synthetic lambda$handleKeyGestureEvent$5(I)V
    .locals 0

    .line 4347
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public final synthetic lambda$interceptKeyBeforeQueueing$6()V
    .locals 3

    .line 5466
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings.bluetooth.DevicePickerActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getTaskIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 5467
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "com.android.bluetooth"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getTaskIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .line 5468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE_BACK taskIdForBluetooth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,taskIdForSettings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    .line 5470
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityTaskManager;->removeTask(I)Z

    :cond_0
    if-lez p0, :cond_1

    .line 5473
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActivityTaskManager;->removeTask(I)Z

    :cond_1
    return-void
.end method

.method public final synthetic lambda$powerPress$0(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1257
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void
.end method

.method public final synthetic lambda$powerPress$1(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1299
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void
.end method

.method public final synthetic lambda$powerPress$2(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1308
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void
.end method

.method public final synthetic lambda$updateSettings$3()V
    .locals 1

    const/4 v0, 0x0

    .line 3115
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Landroid/os/Handler;)V

    return-void
.end method

.method public final launchActivityFromPathString(Ljava/lang/String;)V
    .locals 6

    .line 8181
    const-string v0, "WindowManager"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 8186
    :cond_0
    const-string v1, "/"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 8187
    array-length v3, v1

    if-eq v3, v2, :cond_1

    .line 8188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid path format: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 8192
    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 8193
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 8195
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, ", cls="

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 8201
    :cond_2
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 8202
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8203
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 8204
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8206
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_3

    const/high16 v5, 0x10000

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 8207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity not found: pkg="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 8210
    :cond_3
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8214
    :goto_0
    const-string p1, "Failed to launch activity"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 8212
    :goto_1
    const-string p1, "Security exception when launching activity"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    .line 8196
    :cond_4
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package or class name is empty: pkg="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8182
    :cond_5
    :goto_4
    const-string p0, "Activity path is null or empty"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final launchAllAppsAction()V
    .locals 5

    .line 2066
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2081
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityManagerInternal()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0xe

    .line 2083
    invoke-virtual {v0, v1}, Lcom/android/server/AccessibilityManagerInternal;->performSystemAction(I)V

    goto :goto_1

    .line 2068
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2069
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_2

    .line 2070
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2071
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2072
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2076
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2079
    :cond_2
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2087
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void
.end method

.method public final launchAssistAction(Ljava/lang/String;IJI)V
    .locals 2

    .line 4936
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4937
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4944
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x2

    if-eq p2, v1, :cond_1

    .line 4946
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 4949
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4951
    :cond_2
    const-string p1, "android.intent.extra.TIME"

    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4952
    const-string p1, "invocation_type"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4954
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/SearchManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    if-eqz p1, :cond_3

    .line 4956
    invoke-virtual {p1, v0}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    return-void

    .line 4959
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 4961
    invoke-interface {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public launchHomeFromHotKey(I)V
    .locals 1

    const/4 v0, 0x1

    .line 5085
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    return-void
.end method

.method public launchHomeFromHotKey(IZZ)V
    .locals 1

    if-eqz p3, :cond_1

    .line 5095
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5100
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5103
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    invoke-virtual {p3, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void

    .line 5123
    :cond_1
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    if-eqz p3, :cond_2

    if-nez p1, :cond_4

    .line 5126
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p2, :cond_3

    .line 5131
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :cond_3
    const/4 p1, 0x0

    .line 5133
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    :goto_0
    return-void

    .line 5136
    :cond_4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V

    return-void
.end method

.method public final launchTargetActivityOnMultiPressPower()V
    .locals 4

    .line 1491
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 1492
    const-string v0, "Executing the double press power action."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    .line 1495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1496
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1497
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1500
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    .line 1501
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    const/high16 v1, 0x10200000

    .line 1502
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez v3, :cond_2

    .line 1505
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 1507
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    return-void

    .line 1510
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve activity with : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 1511
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " name."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1510
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final launchTargetSearchActivity()V
    .locals 2

    .line 7816
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 7817
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7818
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 7820
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const/high16 v1, 0x10200000

    .line 7822
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7825
    :try_start_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7827
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not resolve activity with : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7828
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " name."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7827
    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final launchVoiceAssist(Z)V
    .locals 3

    .line 4971
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    if-eqz v0, :cond_0

    .line 4972
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4980
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    return-void

    .line 4974
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public launchVoiceAssistWithWakeLock()V
    .locals 3

    .line 6250
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 6253
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6256
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DeviceIdleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DeviceIdleManager;

    if-eqz v0, :cond_1

    .line 6258
    const-string/jumbo v1, "voice-search"

    invoke-virtual {v0, v1}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    .line 6260
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6261
    const-string v1, "android.speech.extras.EXTRA_SECURE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6263
    :goto_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6264
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3

    .line 7029
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7030
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 7034
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 7036
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7037
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter p1

    const/4 v0, 0x1

    .line 7038
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 7039
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final mapToVolumeKeyCode(Ljava/lang/String;)I
    .locals 0

    .line 8067
    const-string/jumbo p0, "volume_up"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    return p0

    .line 8070
    :cond_0
    const-string/jumbo p0, "volume_down"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x19

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final moveFocusedTaskToStageSplit(IZ)V
    .locals 0

    .line 5078
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5080
    invoke-interface {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToStageSplit(IZ)V

    :cond_0
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 4

    .line 5192
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v0, p3, :cond_0

    goto :goto_0

    .line 5195
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 5199
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-nez p3, :cond_4

    .line 5202
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 5203
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 5205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 5207
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5209
    :goto_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const-wide/32 v2, 0xf4240

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromCameraCover(J)Z

    .line 5210
    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5212
    :cond_4
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method public final notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 3563
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 3564
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    .line 3563
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/input/InputManagerInternal;->notifyKeyGestureCompleted(I[III)V

    return-void
.end method

.method public final notifyKeyGestureCompletedOnActionDown(Landroid/view/KeyEvent;I)V
    .locals 1

    .line 3552
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3555
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public final notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V
    .locals 2

    .line 3544
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 3547
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 0

    .line 5174
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result p1

    if-ne p3, p1, :cond_0

    goto :goto_0

    .line 5178
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 5179
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 p1, 0x1

    .line 5180
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    if-eqz p3, :cond_1

    .line 5183
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-virtual {p0}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromLid()Z

    return-void

    .line 5184
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result p2

    if-eq p2, p1, :cond_2

    .line 5185
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public okToAnimate(Z)Z
    .locals 0

    if-nez p1, :cond_0

    .line 6717
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    .line 4859
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 4861
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4860
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->onDefaultDisplayFocusChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDisplaySwitchStart(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 6526
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchStart()V

    :cond_0
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 1

    .line 4879
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 4880
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const/4 p1, 0x1

    .line 4881
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    :cond_0
    return-void
.end method

.method public onSystemUiStarted()V
    .locals 0

    .line 6843
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    return-void
.end method

.method public final performHapticFeedback(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 7302
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;I)V

    return-void
.end method

.method public final performHapticFeedback(ILjava/lang/String;I)V
    .locals 1

    .line 7307
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/Vibrator;->performHapticFeedback(ILjava/lang/String;II)V

    return-void
.end method

.method public performStemPrimaryDoublePressSwitchToRecentTask()V
    .locals 4

    .line 1799
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1800
    const-string v1, "WindowManager"

    if-nez v0, :cond_1

    .line 1801
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 1802
    const-string v0, "No recent task available! Show wallpaper."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    return-void

    .line 1808
    :cond_1
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_2

    .line 1809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting task from recents. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", persistentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", topActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", baseIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from recents"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final powerLongPress(J)V
    .locals 8

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    .line 1546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "powerLongPress: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mLongPressOnPowerBehavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2713

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1595
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/16 v0, 0x2712

    .line 1596
    const-string v1, "Power - Long Press - Go To Assistant"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    const/4 v4, -0x2

    const/4 v7, 0x6

    const/4 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    .line 1599
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    return-void

    .line 1586
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1587
    const-string p1, "Power - Long Press - Go To Voice Assist"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 1592
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    return-void

    .line 1574
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1577
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    .line 1580
    :cond_3
    const-string p1, "Power - Long Press - Shut Off"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 1582
    const-string p1, "globalactions"

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1583
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p0, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    return-void

    .line 1567
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1568
    const-string p1, "Power - Long Press - Global Actions"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    return-void
.end method

.method public final powerMultiPressAction(JZI)V
    .locals 5

    const/16 v0, 0x1a

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1450
    const-string v3, "WindowManager"

    if-eq p4, v1, :cond_3

    const/4 v1, 0x2

    if-eq p4, v1, :cond_1

    const/4 p1, 0x3

    if-eq p4, p1, :cond_0

    goto :goto_0

    .line 1485
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchTargetActivityOnMultiPressPower()V

    return-void

    .line 1478
    :cond_1
    const-string p4, "Starting brightness boost."

    invoke-static {v3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_2

    .line 1480
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(JIZ)V

    .line 1482
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    return-void

    .line 1454
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-nez p4, :cond_4

    .line 1455
    const-string p0, "Ignoring toggling theater mode - device not setup."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1459
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result p4

    const-string/jumbo v4, "theater_mode_on"

    if-eqz p4, :cond_5

    .line 1460
    const-string p4, "Toggling theater mode off."

    invoke-static {v3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-static {p4, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p3, :cond_6

    .line 1464
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(JIZ)V

    return-void

    .line 1467
    :cond_5
    const-string p4, "Toggling theater mode on."

    invoke-static {v3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-static {p4, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1471
    iget-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    const/4 p3, 0x4

    .line 1472
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    :cond_6
    :goto_0
    return-void
.end method

.method public powerPress(JII)V
    .locals 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {v1}, Lcom/android/server/policy/SideFpsEventHandler;->notifyPowerPressed()V

    .line 1189
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v1

    const-string v2, "WindowManager"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1190
    const-string p0, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1195
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 1197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "powerPress: eventTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " interactive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mShortPressOnPowerBehavior="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 1209
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    return-void

    :cond_2
    const/4 v3, 0x3

    if-ne p3, v3, :cond_3

    .line 1211
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    return-void

    :cond_3
    if-le p3, v3, :cond_4

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v3

    if-gt p3, v3, :cond_4

    .line 1213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No behavior defined for power press count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-ne p3, v0, :cond_d

    .line 1214
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldHandleShortPressPowerAction(ZJ)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 1215
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_3

    .line 1304
    :pswitch_0
    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManager;J)V

    invoke-virtual {p0, v0, v0, p3}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V

    return-void

    .line 1268
    :pswitch_1
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1269
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "glanceable_hub_enabled"

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 1268
    invoke-static {p3, p4, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    if-ne p3, v0, :cond_5

    move p3, v0

    goto :goto_0

    :cond_5
    move p3, v1

    .line 1272
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object p4

    if-nez p4, :cond_6

    goto/16 :goto_3

    .line 1277
    :cond_6
    invoke-virtual {p4}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    .line 1285
    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    .line 1287
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p3, :cond_8

    if-nez v2, :cond_8

    .line 1288
    invoke-virtual {p4}, Landroid/service/dreams/DreamManagerInternal;->dreamConditionActive()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1290
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1291
    const-string p2, "extra_trigger_hub"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-void

    .line 1295
    :cond_8
    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManager;J)V

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V

    return-void

    .line 1279
    :cond_9
    :goto_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void

    .line 1253
    :pswitch_2
    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager;J)V

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V

    return-void

    .line 1244
    :pswitch_3
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 1245
    invoke-virtual {p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    .line 1248
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-void

    .line 1246
    :cond_b
    :goto_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void

    .line 1235
    :pswitch_4
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz p1, :cond_c

    .line 1236
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1, p4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideInputMethod(II)V

    return-void

    .line 1239
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    return-void

    .line 1232
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    return-void

    .line 1226
    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1228
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    return-void

    .line 1222
    :pswitch_7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void

    .line 1219
    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    :cond_d
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final powerVeryLongPress()V
    .locals 2

    .line 1606
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 1610
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/16 v0, 0x2713

    .line 1611
    const-string v1, "Power - Very Long Press - Show Global Actions"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    .line 1613
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    return-void
.end method

.method public final preloadRecentApps()V
    .locals 1

    const/4 v0, 0x1

    .line 5008
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 5009
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5011
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    :cond_0
    return-void
.end method

.method public final prepareToSendSystemKeyToApplication(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 5

    .line 4567
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4568
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Illegal keycode provided to prepareToSendSystemKeyToApplication: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4572
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4569
    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4575
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 4576
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 4578
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4579
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4580
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    .line 4581
    invoke-virtual {v1, v4, p1}, Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;->canAppOverrideSystemKey(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    .line 4590
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    return v2

    .line 4597
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_3

    .line 4598
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public final readCameraLensCoverState()V
    .locals 1

    .line 3438
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method public final readConfigurationDependentBehaviors()V
    .locals 5

    .line 3076
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bd

    .line 3078
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    const/4 v3, 0x3

    if-le v1, v3, :cond_1

    .line 3082
    :cond_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    :cond_1
    const v1, 0x10e0087

    .line 3085
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v3, 0x2

    if-ltz v1, :cond_2

    if-le v1, v3, :cond_3

    .line 3089
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 3092
    :cond_3
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 3093
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.picture_in_picture"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 3094
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    :cond_4
    const v1, 0x10e0134

    .line 3097
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    if-ltz v0, :cond_6

    if-le v0, v3, :cond_5

    goto :goto_0

    :cond_5
    return-void

    .line 3101
    :cond_6
    :goto_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    return-void
.end method

.method public readLidState()V
    .locals 1

    .line 3434
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    return-void
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 0

    .line 4830
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_0

    .line 4831
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    :cond_0
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 1

    .line 4868
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4870
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerInternal;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 4871
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 4874
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reportScreenStateToVrManager(Z)V
    .locals 1

    .line 6630
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_0

    return-void

    .line 6633
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    return-void
.end method

.method public final reportScreenTurnedOnToWallpaper(I)V
    .locals 0

    .line 6553
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getWallpaperManagerInternal()Lcom/android/server/wallpaper/WallpaperManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6555
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onScreenTurnedOn(I)V

    :cond_0
    return-void
.end method

.method public final reportScreenTurningOnToWallpaper(I)V
    .locals 0

    .line 6546
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getWallpaperManagerInternal()Lcom/android/server/wallpaper/WallpaperManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6548
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onScreenTurningOn(I)V

    :cond_0
    return-void
.end method

.method public requestBugreportForTv()V
    .locals 2

    .line 4705
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4706
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4709
    const-string v0, "WindowManager"

    const-string v1, "Error taking bugreport"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public screenTurnedOff(IZ)V
    .locals 3

    .line 6507
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " turned off..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_4

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 6510
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 6511
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 6512
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff(Z)V

    .line 6513
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 6514
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_3

    .line 6515
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 6517
    :cond_3
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6518
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 6519
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    return-void

    .line 6517
    :goto_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    return-void
.end method

.method public screenTurnedOn(I)V
    .locals 3

    .line 6597
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " turned on..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6599
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenTurnedOnToWallpaper(I)V

    if-eqz p1, :cond_1

    return-void

    .line 6605
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6606
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2

    .line 6607
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6609
    :cond_2
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6610
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOn()V

    const/4 p1, 0x1

    .line 6611
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    return-void

    .line 6609
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 1

    .line 6616
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 6621
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 6622
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6623
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_1

    .line 6624
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6626
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 4

    .line 6562
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " turning on..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6564
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenTurningOnToWallpaper(I)V

    const-wide/16 v0, 0x20

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 6566
    const-string/jumbo p1, "screenTurningOn"

    invoke-static {v0, v1, p1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 6568
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 6569
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    .line 6571
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6572
    :try_start_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6573
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6574
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 6575
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v0

    .line 6574
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6576
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {p1, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6578
    :cond_1
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz p1, :cond_2

    const-string p1, "WindowManager"

    const-string/jumbo p2, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6580
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6582
    :goto_0
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6584
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6586
    const-string/jumbo p2, "waitForAllWindowsDrawn"

    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 6588
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p0, v0, v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    return-void
.end method

.method public sendCloseSystemWindows()V
    .locals 1

    .line 6813
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 0

    .line 6817
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public sendKeyCodeBroadcast(Ljava/lang/String;)V
    .locals 2

    .line 7978
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.viwoods.mtk.ACTION_FT_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7979
    const-string v1, "BUTTON_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7980
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final sendSwitchKeyboardLayout(ILandroid/os/IBinder;I)V
    .locals 2

    .line 4811
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;-><init>(ILandroid/os/IBinder;ILcom/android/server/policy/PhoneWindowManager-IA;)V

    .line 4813
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendSystemKeyToStatusBar(Landroid/view/KeyEvent;)V
    .locals 3

    .line 6022
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const-string v2, "handleSystemKey"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6025
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6028
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V
    .locals 2

    .line 6040
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 6041
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6042
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAllowLockscreenWhenOn(IZ)V
    .locals 2

    .line 7047
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 7048
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 7052
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7054
    :cond_1
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7056
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    return-void
.end method

.method public setCurrentUserLw(I)V
    .locals 1

    .line 7344
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 7345
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7346
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 7348
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_1

    .line 7349
    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 7351
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7353
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    .line 7356
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/ModifierShortcutManager;->setCurrentUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method public setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .locals 1

    .line 2325
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 2326
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 2327
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method

.method public final setDeferredKeyActionsExecutableAsync(IJ)V
    .locals 1

    .line 4604
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1b

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 4605
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 4606
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4607
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4608
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .locals 0

    .line 7339
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    return-void
.end method

.method public final setKeyguardOccludedLw(Z)Z
    .locals 2

    .line 5162
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyguardOccluded occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 5163
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 5164
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 5165
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 5166
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p0

    return p0
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .locals 0

    .line 5152
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    return-void
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .locals 0

    .line 4844
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_0

    .line 4845
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .locals 0

    .line 5147
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .locals 0

    .line 5142
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 2

    .line 6822
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    if-eqz p1, :cond_0

    .line 6824
    const-string p1, "Safe Mode Enabled"

    const/4 v0, 0x2

    const/16 v1, 0x2711

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1

    .line 7365
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    if-eqz p1, :cond_0

    .line 7367
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    :cond_0
    return-void
.end method

.method public setTopFocusedDisplay(I)V
    .locals 0

    .line 4825
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    return-void
.end method

.method public final shortPressPowerGoHome()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1440
    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1442
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    :cond_0
    return-void
.end method

.method public final shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z
    .locals 0

    .line 6197
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    return p0
.end method

.method public final shouldDispatchInputWhenNonInteractive(II)Z
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 6129
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_2

    .line 6130
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_5

    .line 6132
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_3

    .line 6139
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    if-eqz v1, :cond_5

    .line 6147
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 6150
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    return v0

    :catch_0
    move-exception p0

    .line 6154
    const-string p1, "WindowManager"

    const-string v0, "RemoteException when checking if dreaming"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    return p2
.end method

.method public final shouldEnableWakeGestureLp()Z
    .locals 2

    .line 3302
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3303
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 3304
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 3305
    invoke-virtual {p0}, Lcom/android/server/policy/WakeGestureListener;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldHandleAsCustomKey(II)Z
    .locals 2

    and-int/lit16 p2, p2, 0x400

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 8050
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getCustomActivityPathForKey(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/16 p2, 0x18

    const/4 v1, 0x1

    if-eq p1, p2, :cond_5

    const/16 p2, 0x19

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 8057
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v0

    :cond_3
    const/16 p2, 0x83

    if-ne p1, p2, :cond_5

    .line 8060
    const-string p1, "com.viwoods.viwoodsai/com.wisky.wiskyai.WebViewAiActivity"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final shouldHandleShortPressPowerAction(ZJ)Z
    .locals 4

    .line 1316
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-eqz v0, :cond_2

    .line 1317
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    invoke-static {p1}, Landroid/view/Display;->isOnState(I)Z

    move-result p1

    .line 1318
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 1319
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromDefaultDisplayOn()Z

    move-result p0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1321
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring short press of power button because the default display is not on. defaultDisplayOn="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", beganFromDefaultDisplayOn="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1332
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1343
    :cond_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/SideFpsEventHandler;->shouldConsumeSinglePress(J)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1344
    const-string p0, "Suppressing power key because the user is interacting with the fingerprint sensor"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    return v1

    .line 1334
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring short press of power button because the device is not interactive. interactive="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", beganFromNonInteractive="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final shouldWakeUpWithHomeIntent()Z
    .locals 6

    .line 6438
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 6442
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 6443
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    iget-wide v2, v0, Landroid/os/PowerManager$WakeData;->sleepDurationRealtime:J

    .line 6444
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1

    .line 6445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldWakeUpWithHomeIntent: sleepDurationRealtime= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mWakeUpToLastStateTimeout= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WindowManager"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6448
    :cond_1
    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    cmp-long p0, v2, v4

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 6925
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showDismissibleKeyguard()V
    .locals 0

    .line 4927
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showDismissibleKeyguard()V

    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    .line 1956
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1957
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showGlobalActionsInternal()V
    .locals 3

    .line 1961
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActions;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1964
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 1965
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    .line 1968
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

.method public final showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2107
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPictureInPictureMenu event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2109
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    .line 2110
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2111
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final showPictureInPictureMenuInternal()V
    .locals 0

    .line 2115
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2117
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    :cond_0
    return-void
.end method

.method public final showRecentApps(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 5047
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 5048
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5050
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    .line 5052
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void
.end method

.method public final showSystemSettings()V
    .locals 2

    .line 2102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sleepDefaultDisplay(JII)V
    .locals 1

    const/4 v0, 0x1

    .line 1435
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 1436
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public final sleepDefaultDisplayFromPowerButton(JI)Z
    .locals 9

    .line 1417
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 1418
    iget v2, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-eq v2, v1, :cond_0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    .line 1421
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1422
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    if-lez v4, :cond_1

    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    cmp-long v4, v2, v5

    if-gez v4, :cond_1

    .line 1424
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Sleep from power button suppressed. Time since gesture: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    sub-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1430
    :cond_1
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    const/4 p0, 0x1

    return p0
.end method

.method public final sleepPress()V
    .locals 2

    .line 1635
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1636
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    :cond_0
    return-void
.end method

.method public final sleepRelease(J)V
    .locals 3

    .line 1642
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1644
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1645
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1646
    const-string/jumbo p0, "sleepRelease() silence ringer"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1651
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return-void

    .line 1654
    :cond_1
    const-string/jumbo v0, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1655
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    .line 4994
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V
    .locals 0

    if-nez p4, :cond_1

    .line 4999
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 5003
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not starting activity because user setup is in progress: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5000
    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5001
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    .line 4990
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startDockOrHome(IZZ)V
    .locals 1

    .line 7239
    const-string/jumbo v0, "startDockOrHome"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZLjava/lang/String;)V

    return-void
.end method

.method public startDockOrHome(IZZLjava/lang/String;)V
    .locals 6

    .line 7202
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7204
    :catch_0
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 7207
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 7210
    :cond_0
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    const-string v0, "WindowManager"

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p3

    if-nez p3, :cond_1

    .line 7211
    const-string p0, "Not going home because user setup is in progress."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7216
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    .line 7220
    :try_start_1
    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7222
    :cond_2
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 7228
    :catch_1
    :cond_3
    sget-boolean p3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz p3, :cond_4

    .line 7229
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDockOrHome: startReason= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7232
    :cond_4
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p3, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v1

    .line 7234
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v4, 0x1

    move v3, p1

    move v5, p2

    move-object v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    return-void
.end method

.method public startKeyguardExitAnimation(J)V
    .locals 2

    .line 6806
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 6807
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "PWM.startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6808
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(J)V

    :cond_1
    return-void
.end method

.method public final startScreenCapture()V
    .locals 4

    .line 8014
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8015
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.viwoods.launcher"

    const-string v3, "com.viwoods.libfloating.activity.ScreenCaptureActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 8016
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8018
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8020
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity not found for intent + "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startedGoingToSleep(II)V
    .locals 2

    .line 6325
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    .line 6326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started going to sleep... (groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6328
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v1

    .line 6327
    invoke-static {v1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6326
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 6335
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 6336
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 6338
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_2

    .line 6339
    invoke-virtual {p0, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startedGoingToSleepGlobal(I)V
    .locals 0

    const/4 p1, 0x1

    .line 6313
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    return-void
.end method

.method public startedWakingUp(II)V
    .locals 3

    .line 6385
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    .line 6386
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started waking up... (groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6388
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result v2

    .line 6387
    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6386
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 6394
    invoke-static {p1}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    const/4 v0, 0x0

    .line 6396
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 6397
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 6403
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6404
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 6405
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 6406
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6407
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 6409
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_2

    .line 6410
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    invoke-virtual {p1, p2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp(IZ)V

    .line 6413
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    return-void

    :catchall_0
    move-exception p0

    .line 6406
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public startedWakingUpGlobal(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final stemPrimaryDoublePressAction(I)V
    .locals 3

    .line 1741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimaryDoublePressAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x2

    const/16 v0, 0x108

    const/16 v2, 0x32

    .line 1755
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGestureInKeyGestureController(IIII)V

    return-void

    .line 1746
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p1, :cond_2

    goto :goto_0

    .line 1748
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_3

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->performStemPrimaryDoublePressSwitchToRecentTask()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final stemPrimaryLongPress(J)V
    .locals 8

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimaryLongPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v4, -0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    .line 1786
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    return-void
.end method

.method public final stemPrimaryPress(I)V
    .locals 2

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimaryPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1683
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryTriplePressAction(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1685
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryDoublePressAction(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1687
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimarySinglePressAction(I)V

    :cond_2
    return-void
.end method

.method public final stemPrimarySinglePressAction(I)V
    .locals 3

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimarySinglePressAction: behavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    goto :goto_0

    .line 1695
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/16 p1, 0x108

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemKeyPressed(I)V

    .line 1699
    const-string/jumbo p0, "stemPrimarySinglePressAction: skip due to keyguard"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    :goto_0
    return-void

    .line 1711
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_4

    .line 1712
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1713
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1714
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1715
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 1716
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    const v0, 0x10204000

    .line 1718
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1722
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 1724
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not resolve activity with : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 1727
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " name."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1724
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1731
    :cond_4
    const-string p0, "mPrimaryShortPressTargetActivity must not be null and correctly specified"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1704
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.ALL_APPS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10200000

    .line 1705
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1708
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final stemPrimaryTriplePressAction(I)V
    .locals 2

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimaryTriplePressAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1768
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    sget-object v1, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->GESTURE:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/policy/TalkbackShortcutController;->toggleTalkback(ILcom/android/server/policy/TalkbackShortcutController$ShortcutSource;)Z

    .line 1770
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {p1}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    .line 1771
    const-string v0, "Stem primary - Triple Press - Toggle Accessibility"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public systemBooted()V
    .locals 4

    .line 6886
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 6887
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6888
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 6889
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 6890
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 6892
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6893
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/SideFpsEventHandler;->onFingerprintSensorReady()V

    const/4 v0, 0x0

    .line 6894
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(II)V

    .line 6895
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(II)V

    .line 6897
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 6899
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_3

    .line 6908
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    const/4 v1, 0x0

    .line 6909
    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V

    return-void

    .line 6903
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 6904
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn(I)V

    return-void

    .line 6892
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public systemReady()V
    .locals 2

    .line 6851
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 6852
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {v0}, Lcom/android/server/policy/ModifierShortcutManager;->onSystemReady()V

    .line 6854
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    .line 6855
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_0

    .line 6856
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 6859
    :cond_0
    const-class v0, Lcom/android/server/DockObserverInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DockObserverInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockObserverInternal:Lcom/android/server/DockObserverInternal;

    if-eqz v0, :cond_1

    .line 6862
    invoke-virtual {v0}, Lcom/android/server/DockObserverInternal;->getActualDockState()I

    move-result v0

    .line 6863
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setDockMode(I)V

    .line 6866
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 6867
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 6868
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 6869
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6870
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 6871
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Landroid/os/Handler;)V

    .line 6874
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_2

    .line 6875
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6877
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6879
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 6880
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GestureLauncherService;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    return-void

    .line 6877
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final toggleKeyboardShortcutsMenu(I)V
    .locals 0

    .line 5056
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5058
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    :cond_0
    return-void
.end method

.method public final toggleMicrophoneMuteFromKey()V
    .locals 6

    .line 4647
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4650
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0, v1, v1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    .line 4654
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    xor-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    if-eqz v0, :cond_0

    const v0, 0x104065e

    goto :goto_0

    :cond_0
    const v0, 0x104065d

    .line 4664
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4666
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4667
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 4664
    invoke-static {v1, v2, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 4669
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public final toggleNotificationPanel()V
    .locals 1

    .line 2091
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 2092
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 2094
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final toggleRecentApps()V
    .locals 1

    const/4 v0, 0x0

    .line 5033
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 5034
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5036
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    :cond_0
    return-void
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 0

    .line 4837
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_0

    .line 4838
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    :cond_0
    return-void
.end method

.method public final updateKidsModeSettings(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3265
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1110221

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 3266
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/16 p1, 0x8

    filled-new-array {v0, p1}, [I

    move-result-object p1

    const/4 v0, 0x6

    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    return-void

    .line 3273
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    return-void

    .line 3278
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    return-void
.end method

.method public final updateLockScreenTimeout()V
    .locals 6

    .line 7060
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 7061
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    if-eqz v1, :cond_0

    .line 7062
    const-string p0, "WindowManager"

    const-string v1, "lockNow pending, ignore updating lockscreen timeout"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7063
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 7065
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 7066
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 7067
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7068
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_5

    if-eqz v1, :cond_3

    .line 7070
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "WindowManager"

    const-string/jumbo v3, "setting lockscreen timer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7071
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7072
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 7074
    :cond_3
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowManager"

    const-string v3, "clearing lockscreen timer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7075
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7077
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 7079
    :cond_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateRotation(Z)V
    .locals 1

    .line 7132
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->updateRotation(ZZ)V

    return-void
.end method

.method public final updateSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 3106
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Landroid/os/Handler;)V

    return-void
.end method

.method public updateSettings(Landroid/os/Handler;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 3115
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3118
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 3122
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3123
    :try_start_0
    const-string v1, "end_button_behavior"

    const/4 v2, 0x2

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 3127
    const-string v1, "incall_power_button_behavior"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 3131
    const-string v1, "incall_back_button_behavior"

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 3135
    const-string/jumbo v1, "system_navigation_keys_enabled"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 3138
    const-string/jumbo v1, "volume_hush_gesture"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 3141
    const-string/jumbo v1, "power_button_suppression_delay_after_gesture_wake"

    const/16 v5, 0x320

    invoke-static {p1, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 3144
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x11102a2

    .line 3145
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3146
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    .line 3150
    :cond_2
    :goto_1
    const-string/jumbo v1, "wake_gesture_enabled"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v4

    .line 3153
    :goto_2
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v5, v1, :cond_4

    .line 3154
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 3155
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 3159
    :cond_4
    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 3161
    const-string v1, "CustomAiKey"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomAiKey:Ljava/lang/String;

    .line 3163
    const-string v1, "CustomVolumeUpKey"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomVolumeUpKey:Ljava/lang/String;

    .line 3165
    const-string v1, "CustomVolumeDownKey"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomVolumeDownKey:Ljava/lang/String;

    .line 3167
    const-string v1, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSettings custom keys: ai="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomAiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", volUp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomVolumeUpKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", volDown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mCustomVolumeDownKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    const-string v1, "default_input_method"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3172
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v4

    .line 3173
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v5, v1, :cond_6

    .line 3174
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v4

    .line 3178
    :goto_4
    const-string/jumbo v5, "power_button_short_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3180
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0135

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3178
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 3182
    const-string/jumbo v5, "power_button_double_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3184
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0084

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3182
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 3186
    const-string/jumbo v5, "power_button_triple_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3188
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e014c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3186
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 3191
    const-string/jumbo v5, "power_button_long_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3193
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00be

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3191
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3195
    const-string/jumbo v6, "power_button_very_long_press"

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3197
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0152

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 3195
    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 3199
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    if-ne v7, v5, :cond_7

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eq v7, v6, :cond_8

    .line 3201
    :cond_7
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 3202
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 3205
    :cond_8
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3206
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "power_button_long_press_duration_ms"

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3208
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00bf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    .line 3205
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 3211
    const-string v5, "key_chord_power_volume_up"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3213
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00ae

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3211
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    .line 3216
    const-string/jumbo v5, "stem_primary_button_short_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3218
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0137

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3216
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 3220
    const-string/jumbo v5, "stem_primary_button_double_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3222
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0085

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3220
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 3225
    const-string/jumbo v5, "stem_primary_button_triple_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3227
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e014d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3225
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 3230
    const-string/jumbo v5, "stem_primary_button_long_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3232
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00c0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 3230
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 3234
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3235
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110236

    .line 3236
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    .line 3237
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110237

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    .line 3240
    const-string/jumbo v5, "stylus_buttons_enabled"

    invoke-static {p1, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_9

    move v5, v2

    goto :goto_5

    :cond_9
    move v5, v4

    :goto_5
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 3242
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v6, v5}, Lcom/android/server/input/InputManagerInternal;->setStylusButtonMotionEventsEnabled(Z)V

    .line 3244
    const-string/jumbo v5, "nav_bar_kids_mode"

    invoke-static {p1, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_a

    move p1, v2

    goto :goto_6

    :cond_a
    move p1, v4

    .line 3246
    :goto_6
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    if-eq v3, p1, :cond_b

    .line 3247
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    move v4, v2

    .line 3250
    :cond_b
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_c

    .line 3252
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateKidsModeSettings(Z)V

    :cond_c
    if-eqz v1, :cond_d

    .line 3255
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    :cond_d
    return-void

    .line 3250
    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateUiMode()V
    .locals 1

    .line 7116
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_0

    .line 7117
    const-string/jumbo v0, "uimode"

    .line 7118
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7117
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 7121
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final updateWakeGestureListenerLp()V
    .locals 1

    .line 3294
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3295
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {p0}, Lcom/android/server/policy/WakeGestureListener;->requestWakeUpTrigger()V

    return-void

    .line 3297
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {p0}, Lcom/android/server/policy/WakeGestureListener;->cancelWakeUpTrigger()V

    return-void
.end method

.method public userActivity(II)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 6993
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->onUserActivityEventTouch()V

    .line 6995
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter p1

    .line 6996
    :try_start_0
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz p2, :cond_1

    .line 6998
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6999
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v1, p0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7001
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final wakeUpFromWakeKey(JIZ)V
    .locals 6

    .line 6471
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const/4 v1, 0x0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromKey(IJIZ)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eq v4, p1, :cond_1

    const/16 p4, 0x1a

    if-ne v4, p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p4, p2

    .line 6474
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldWakeUpWithHomeIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_3

    if-ne v4, p1, :cond_2

    move p1, p2

    goto :goto_2

    :cond_2
    move p1, p3

    .line 6475
    :goto_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wake from "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6479
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 6475
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final wakeUpFromWakeKey(Landroid/view/KeyEvent;)V
    .locals 3

    .line 6453
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const-string/jumbo v2, "wakeUpFromWakeKey"

    .line 6452
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6456
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    .line 6458
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/enote/ENoteSetting;->isHallFunctionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "KEYCODE_WAKEUP isHallFunctionEnabled "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6465
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    .line 6466
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 6467
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6464
    :goto_0
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(JIZ)V

    return-void
.end method
