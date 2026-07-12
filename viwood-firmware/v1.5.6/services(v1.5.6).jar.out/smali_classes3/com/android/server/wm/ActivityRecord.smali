.class public final Lcom/android/server/wm/ActivityRecord;
.super Lcom/android/server/wm/WindowToken;
.source "ActivityRecord.java"


# static fields
.field public static final TAG_ADD_REMOVE:Ljava/lang/String;

.field public static final TAG_APP:Ljava/lang/String;

.field public static final TAG_CONFIGURATION:Ljava/lang/String;

.field public static final TAG_CONTAINERS:Ljava/lang/String;

.field public static final TAG_FOCUS:Ljava/lang/String;

.field public static final TAG_PAUSE:Ljava/lang/String;

.field public static final TAG_RESULTS:Ljava/lang/String;

.field public static final TAG_SAVED_STATE:Ljava/lang/String;

.field public static final TAG_STATES:Ljava/lang/String;

.field public static final TAG_SWITCH:Ljava/lang/String;

.field public static final TAG_TRANSITION:Ljava/lang/String;

.field public static final TAG_USER_LEAVING:Ljava/lang/String;

.field public static final TAG_VISIBILITY:Ljava/lang/String;

.field public static sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;


# instance fields
.field public allDrawn:Z

.field public app:Lcom/android/server/wm/WindowProcessController;

.field public appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field public final assistToken:Landroid/os/Binder;

.field public final componentSpecified:Z

.field public createTime:J

.field public delayedResume:Z

.field public finishing:Z

.field public firstWindowDrawn:Z

.field public hasBeenLaunched:Z

.field public idle:Z

.field public immersive:Z

.field public volatile inHistory:Z

.field public final info:Landroid/content/pm/ActivityInfo;

.field public final initialCallerInfoAccessToken:Landroid/os/IBinder;

.field public final intent:Landroid/content/Intent;

.field public keysPaused:Z

.field public lastLaunchTime:J

.field public lastVisibleTime:J

.field public launchCount:I

.field public launchFailed:Z

.field public launchMode:I

.field public final launchedFromFeatureId:Ljava/lang/String;

.field public final launchedFromPackage:Ljava/lang/String;

.field public final launchedFromPid:I

.field public final launchedFromUid:I

.field public lockTaskLaunchMode:I

.field public final mActivityComponent:Landroid/content/ComponentName;

.field public final mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

.field public mActivityRecordInputSinkEnabled:Z

.field public mAllowCrossUidActivitySwitchFromBelow:Z

.field public final mAllowUntrustedEmbeddingStateSharing:Z

.field public mAllowedTouchUid:I

.field public final mAppActivityEmbeddingSplitsEnabled:Z

.field public final mAppCompatController:Lcom/android/server/wm/AppCompatController;

.field public mAppStopped:Z

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mAutoEnteringPip:Z

.field public final mCallerState:Lcom/android/server/wm/ActivityCallerState;

.field public mCaptureCallbacks:Landroid/os/RemoteCallbackList;

.field public mClientVisibilityDeferred:Z

.field public final mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

.field public mConfigurationSeq:I

.field public mCurrentLaunchCanTurnScreenOn:Z

.field public mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

.field public mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

.field public mDeferHidingClient:Z

.field public final mDestroyTimeoutRunnable:Ljava/lang/Runnable;

.field public mDismissKeyguardIfInsecure:Z

.field public mEnableRecentsScreenshot:Z

.field public mEnteringAnimation:Z

.field public mForceSendResultForMediaProjection:Z

.field public mHandleExitSplashScreen:Z

.field mHandoverLaunchDisplayId:I

.field mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mHasDeskResources:Ljava/lang/Boolean;

.field public final mHasSceneTransition:Z

.field public mHaveState:Z

.field public mIcicle:Landroid/os/Bundle;

.field public mInheritShownWhenLocked:Z

.field public mInputApplicationHandle:Landroid/view/InputApplicationHandle;

.field public mInputDispatchingTimeoutMillis:J

.field public mIsInputDroppedForAnimation:Z

.field public final mIsUserAlwaysVisible:Z

.field public mLastAllReadyAtSync:Z

.field public mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

.field public mLastContainsDismissKeyguardWindow:Z

.field public mLastContainsShowWhenLockedWindow:Z

.field public mLastContainsTurnScreenOnWindow:Z

.field public mLastDeferHidingClient:Z

.field public mLastDropInputMode:I

.field public mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

.field public mLastImeShown:Z

.field public mLastNewIntent:Landroid/content/Intent;

.field public mLastParentBeforePip:Lcom/android/server/wm/Task;

.field public final mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field public final mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field public mLastReportedDisplayId:I

.field public mLastReportedMultiWindowMode:Z

.field public mLastReportedPictureInPictureMode:Z

.field public mLastSurfaceShowing:Z

.field public mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

.field public mLastTransactionSequence:J

.field public mLaunchCookie:Landroid/os/IBinder;

.field public mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLaunchRootTask:Landroid/window/WindowContainerToken;

.field public mLaunchSourceType:I

.field public mLaunchedFromBubble:Z

.field public mLocusId:Landroid/content/LocusId;

.field public mNoDisplay:Z

.field public mNumDrawnWindows:I

.field public mNumInterestingWindows:I

.field public mOccludesParent:Z

.field public final mOptInOnBackInvoked:Z

.field public final mOptOutEdgeToEdge:Z

.field public mOverrideTaskTransition:Z

.field public mPauseConfigurationDispatchCount:I

.field public mPauseSchedulePendingForPip:Z

.field public final mPauseTimeoutRunnable:Ljava/lang/Runnable;

.field public mPendingOptions:Landroid/app/ActivityOptions;

.field public mPendingRelaunchCount:I

.field public mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

.field public mPendingRemoteTransition:Landroid/window/RemoteTransition;

.field public mPersistentState:Landroid/os/PersistableBundle;

.field public mRelaunchReason:I

.field public mRelaunchStartTime:J

.field public mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field public mRemovingFromDisplay:Z

.field public mReportedDrawn:Z

.field public final mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

.field public mRequestOpenInBrowserEducationTimestamp:J

.field public mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

.field final mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mRotationAnimationHint:I

.field public mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

.field public mShareIdentity:Z

.field public final mShowForAllUsers:Z

.field public mShowWhenLocked:Z

.field public mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

.field public mSplashScreenStyleSolidColor:Z

.field public mStartingData:Lcom/android/server/wm/StartingData;

.field public mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

.field public mStartingWindow:Lcom/android/server/wm/WindowState;

.field public mState:Lcom/android/server/wm/ActivityRecord$State;

.field public final mStopTimeoutRunnable:Ljava/lang/Runnable;

.field public mStoppedTime:J

.field public final mStyleFillsParent:Z

.field public mTargetSdk:I

.field public mTaskOverlay:Z

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpConfig:Landroid/content/res/Configuration;

.field public final mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

.field public mTransferringSplashScreenState:I

.field public mTransitionChangeFlags:I

.field public mTurnScreenOn:Z

.field public final mUserId:I

.field public mVisible:Z

.field public volatile mVisibleForServiceConnection:Z

.field public mVisibleSetFromTransferredStartingWindow:Z

.field public mVoiceInteraction:Z

.field public mWaitForEnteringPinnedMode:Z

.field public mWillCloseOrEnterPip:Z

.field public final mWindowStyle:Lcom/android/server/wm/ActivityRecord$WindowStyle;

.field public newIntents:Ljava/util/ArrayList;

.field public nowVisible:Z

.field public final packageName:Ljava/lang/String;

.field public pauseTime:J

.field public pendingResults:Ljava/util/HashSet;

.field public pendingVoiceInteractionStart:Z

.field public pictureInPictureArgs:Landroid/app/PictureInPictureParams;

.field public final processName:Ljava/lang/String;

.field public reportedVisible:Z

.field public final requestCode:I

.field public requestedVrComponent:Landroid/content/ComponentName;

.field public final resolvedType:Ljava/lang/String;

.field public resultTo:Lcom/android/server/wm/ActivityRecord;

.field public final resultWho:Ljava/lang/String;

.field public results:Ljava/util/ArrayList;

.field public returningOptions:Landroid/app/ActivityOptions;

.field public final rootVoiceInteraction:Z

.field public final shareableActivityToken:Landroid/os/Binder;

.field public final shortComponentName:Ljava/lang/String;

.field public shouldDockBigOverlays:Z

.field public startingMoved:Z

.field public final stateNotNeeded:Z

.field public supportsEnterPipOnTaskSwitch:Z

.field public task:Lcom/android/server/wm/Task;

.field public final taskAffinity:Ljava/lang/String;

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public final theme:I

.field public topResumedStateLossTime:J

.field public uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

.field public visibleIgnoringKeyguard:Z

.field public voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$6MLroGz7a6RoDyGfRCtQtFg6Itc(Lcom/android/server/wm/ActivityRecord;)D
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->lambda$getCompatScale$15()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$8vzlXLXENSm-68EHSBTLK8LWcTs(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 9559
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$GDoL8uD0wpherVZGdn8Zbyz_yZY(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$hasOverlayOverUntrustedModeEmbedded$10(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$I1MSNY3CpU-e9WIQbLSkEsRUKEo(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$transferStartingWindowFromHiddenAboveTokenIfNeeded$8(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ItiBm5jcgD93hwA9ZFF48DkeNNc(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$showStartingWindow$14(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LtBMHQ7y8EQyUReiUIpBLrEBq_E(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 9431
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    .line 9432
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9433
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9434
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$MmiU0ssFHcqkng4bff7C5gjnYg0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->lambda$restartProcessIfVisible$18(Lcom/android/server/wm/Transition;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$QNnqNDOZVE6AP9I2X8M_B8nQ_eI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$showStartingWindow$13(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Qf3yk0-HxIT9YAOC4KQtjKp5xM4(Lcom/android/server/wm/Task;)Z
    .locals 1

    .line 3411
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$RFEDRS0jnqRXyvsndnIcexNCde4(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 6545
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$UJ5D2OOfhN-KEnlK9AAYgyz-n3k(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$makeFinishingLocked$7(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VUkutoMl9ZatDVHkiWhoMBp6Cbc(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 6547
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$aRDRNHdMF8x1-2k17vph61zjg3E(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 3712
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimationIfOvarlay()V

    return-void
.end method

.method public static synthetic $r8$lambda$fiaHX1R5zEFOeBlayAWb7sCNc1g(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$isFocusedActivityOnDisplay$19(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$frIx42sGzixNFx4Rzg2c_xr985E(Lcom/android/server/wm/ActivityRecord;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->lambda$addStartingWindow$3()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lM2_1C0rnc1UeOTpuhc1P-YSvVE(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityRecord;->lambda$finishActivityResults$5(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvh_TWvv9KONkby139QVs32900g(Lcom/android/server/wm/ActivityRecord;[F[F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->lambda$new$1([F[F)V

    return-void
.end method

.method public static synthetic $r8$lambda$ojyNV75jmuyW9udUqCk5aov_tdI(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->lambda$restartProcessIfVisible$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$sGNMRQzVLwLnwOXuaISLbjk7guI(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->notifyActivityStartedToContentCaptureService()V

    return-void
.end method

.method public static synthetic $r8$lambda$tbbQczlHwYJa84Bl3WvoMl7sYRg(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->lambda$new$2()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uLNDSLBHeJbrC6FAFN5LQ5VaDpo(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 8218
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppSizeCompatBoundsIfAvailable(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ycM7wHZ0aNceb80D__M1ooSygCQ(Lcom/android/server/wm/ActivityRecord;[F[F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->lambda$new$0([F[F)V

    return-void
.end method

.method public static synthetic $r8$lambda$zx_qTZ1Z-SruvSJ2Y7Yph1kQWb8(Lcom/android/server/wm/TaskFragment;)Z
    .locals 0

    .line 4801
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static bridge synthetic -$$Nest$misTransferringSplashScreen(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTransferringSplashScreen()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityTaskManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_ADD_REMOVE:Ljava/lang/String;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_APP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_APP:Ljava/lang/String;

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_CONFIGURATION:Ljava/lang/String;

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_CONTAINERS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_CONTAINERS:Ljava/lang/String;

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_FOCUS:Ljava/lang/String;

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_PAUSE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_PAUSE:Ljava/lang/String;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_RESULTS:Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_SAVED_STATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_SAVED_STATE:Ljava/lang/String;

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_STATES:Ljava/lang/String;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_SWITCH:Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_TRANSITION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_TRANSITION:Ljava/lang/String;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_USER_LEAVING:Ljava/lang/String;

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_VISIBILITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V
    .locals 16

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p9

    move-wide/from16 v12, p21

    .line 1845
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v14, 0x0

    invoke-direct {v2, v14}, Lcom/android/server/wm/ActivityRecord$Token;-><init>(Lcom/android/server/wm/ActivityRecord-IA;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    const/4 v1, -0x1

    .line 471
    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    .line 490
    new-instance v2, Landroid/window/ActivityWindowInfo;

    invoke-direct {v2}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    const/4 v6, 0x1

    .line 514
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    .line 545
    new-instance v2, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v2}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    const/4 v15, 0x0

    .line 559
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    .line 561
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    .line 564
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 596
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 601
    iput v15, v0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 603
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    .line 634
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    .line 663
    new-instance v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-direct {v2}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    .line 672
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 693
    sget v2, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    .line 715
    iput-wide v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    .line 726
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    .line 759
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    .line 769
    iput v15, v0, Lcom/android/server/wm/ActivityRecord;->mLastDropInputMode:I

    .line 782
    iput v15, v0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 840
    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 846
    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 866
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 867
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 868
    new-instance v2, Landroid/window/ActivityWindowInfo;

    invoke-direct {v2}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 871
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 875
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 878
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 892
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSinkEnabled:Z

    .line 914
    iput v15, v0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    .line 916
    new-instance v2, Lcom/android/server/wm/ActivityRecord$1;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord$1;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    .line 931
    new-instance v2, Lcom/android/server/wm/ActivityRecord$2;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord$2;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    .line 941
    new-instance v2, Lcom/android/server/wm/ActivityRecord$3;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord$3;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    .line 2521
    new-instance v2, Lcom/android/server/wm/ActivityRecord$4;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord$4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

    .line 1848
    iput-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1849
    iget-object v2, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    check-cast v2, Lcom/android/server/wm/ActivityRecord$Token;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/android/server/wm/ActivityRecord$Token;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 1850
    iput-object v11, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1851
    iget-object v2, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1852
    iget-object v3, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1853
    iput-object v10, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1858
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1859
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    goto :goto_0

    .line 1864
    :cond_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v11, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v4, v5, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_1

    .line 1862
    :cond_1
    :goto_0
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1872
    :goto_1
    new-instance v4, Lcom/android/server/wm/AppCompatController;

    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, v0}, Lcom/android/server/wm/AppCompatController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1873
    new-instance v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    invoke-direct {v4}, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    .line 1874
    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerFlags;->mInsetsDecoupledConfiguration:Z

    move v14, v6

    const-wide/32 v6, 0x138268ed

    if-eqz v5, :cond_3

    move v5, v14

    const-wide/32 v14, 0x90d3a73

    .line 1878
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1879
    invoke-virtual {v11, v6, v7}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v6

    if-nez v6, :cond_2

    move v14, v5

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    iput-boolean v14, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    goto :goto_3

    :cond_3
    move v5, v14

    .line 1885
    invoke-virtual {v11, v6, v7}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    .line 1888
    :goto_3
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    .line 1890
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 1891
    invoke-virtual {v4, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1892
    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    move v14, v5

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mIsUserAlwaysVisible:Z

    .line 1894
    iget v4, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_6

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    move v14, v5

    :goto_6
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    .line 1895
    iget v4, v11, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->setOverrideOrientation(I)V

    .line 1896
    iget v4, v11, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1898
    iget v4, v11, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x800000

    and-int v7, v4, v6

    if-eqz v7, :cond_7

    move v14, v5

    goto :goto_7

    :cond_7
    const/4 v14, 0x0

    :goto_7
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 1899
    iget v7, v11, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_8

    move v14, v5

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    :goto_8
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    const/high16 v7, 0x1000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_9

    move v14, v5

    goto :goto_9

    :cond_9
    const/4 v14, 0x0

    .line 1900
    :goto_9
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 1902
    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    if-nez v4, :cond_b

    .line 1904
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-ge v4, v7, :cond_a

    const v4, 0x1030005

    goto :goto_a

    :cond_a
    const v4, 0x103006b

    :cond_b
    :goto_a
    move-object/from16 v7, p1

    .line 1908
    invoke-virtual {v7, v3, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getWindowStyle(Ljava/lang/String;II)Lcom/android/server/wm/ActivityRecord$WindowStyle;

    move-result-object v4

    .line 1909
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mWindowStyle:Lcom/android/server/wm/ActivityRecord$WindowStyle;

    if-eqz v4, :cond_11

    .line 1911
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->isTranslucent()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->isFloating()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1914
    :cond_c
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->showWallpaper()Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_d
    move v14, v5

    goto :goto_b

    :cond_e
    const/4 v14, 0x0

    :goto_b
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 1915
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    .line 1916
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->noDisplay()Z

    move-result v14

    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    .line 1917
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->optOutEdgeToEdge()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v15, 0x0

    invoke-static {v4, v15}, Lcom/android/internal/policy/PhoneWindow;->isOptOutEdgeToEdgeEnabled(Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    move v14, v5

    goto :goto_c

    :cond_f
    const/4 v15, 0x0

    :cond_10
    move v14, v15

    :goto_c
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    goto :goto_d

    :cond_11
    move v14, v5

    const/4 v15, 0x0

    .line 1920
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    .line 1921
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    .line 1922
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    :goto_d
    if-eqz p17, :cond_14

    .line 1926
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 1928
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getRotationAnimationHint()I

    move-result v4

    if-ltz v4, :cond_12

    .line 1931
    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1934
    :cond_12
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1935
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz p18, :cond_13

    .line 1937
    invoke-virtual/range {p18 .. p18}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->adjustPictureInPictureParamsIfNeeded(Landroid/graphics/Rect;)V

    .line 1941
    :cond_13
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    .line 1942
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getDismissKeyguardIfInsecure()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    .line 1943
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->isShareIdentityEnabled()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    .line 1946
    :cond_14
    const-class v4, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 1948
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->attachColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z

    .line 1951
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v1, p3

    .line 1952
    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    .line 1953
    iput v9, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    move-object/from16 v1, p5

    .line 1954
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v1, p6

    .line 1955
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 1956
    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/ActivityRecord;->determineLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    .line 1957
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v1, p8

    .line 1958
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    move/from16 v1, p14

    .line 1959
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    move/from16 v4, p15

    .line 1960
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    .line 1961
    new-instance v4, Landroid/util/MergedConfiguration;

    move-object/from16 v5, p10

    invoke-direct {v4, v5}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    move-object/from16 v4, p11

    .line 1962
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v4, p12

    .line 1963
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    move/from16 v4, p13

    .line 1964
    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1965
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v5, "ActivityRecord ctor"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    const/4 v15, 0x0

    .line 1966
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1967
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 1968
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1969
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 1970
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1971
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    const/4 v14, 0x1

    .line 1972
    invoke-super {v0, v14}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    .line 1973
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1974
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    move-object/from16 v4, p16

    .line 1975
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1977
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1978
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 1979
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1980
    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v5, :cond_15

    iget-object v5, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v5, :cond_15

    .line 1981
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1982
    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 1986
    :cond_15
    sget-object v4, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    if-nez v4, :cond_16

    .line 1987
    new-instance v4, Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-direct {v4}, Landroid/content/pm/ConstrainDisplayApisConfig;-><init>()V

    sput-object v4, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    .line 1989
    :cond_16
    iget v4, v11, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v15, 0x10

    and-int/2addr v4, v15

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    :goto_e
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    .line 1990
    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->theme:I

    .line 1991
    iget v4, v11, Landroid/content/pm/ActivityInfo;->flags:I

    const/4 v14, 0x1

    and-int/2addr v4, v14

    if-eqz v4, :cond_19

    if-eqz v8, :cond_19

    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_18

    iget-object v5, v8, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_19

    .line 1994
    :cond_18
    iget-object v4, v8, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_f

    .line 1996
    :cond_19
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1999
    :goto_f
    iget v4, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1a

    .line 2000
    invoke-virtual {v10, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2003
    :cond_1a
    iget v4, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    move-object/from16 v4, p17

    move-object/from16 v5, p18

    move v6, v2

    move-object v8, v3

    move v2, v9

    move-object v3, v10

    .line 2005
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 2007
    iget v1, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_10

    :cond_1b
    const/4 v1, 0x0

    :goto_10
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 2009
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_11

    .line 2010
    :cond_1c
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_11
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 2012
    invoke-static {v11, v4}, Lcom/android/server/wm/ActivityRecord;->getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    if-eqz v4, :cond_22

    .line 2015
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->setOptions(Landroid/app/ActivityOptions;)V

    .line 2018
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1d

    .line 2019
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 2020
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_12

    :cond_1d
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mHasSceneTransition:Z

    .line 2021
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 2023
    new-instance v2, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v2, v1}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2027
    :cond_1e
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 2029
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_13

    :cond_1f
    const/4 v1, 0x0

    :goto_13
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2030
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 2031
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 2032
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 2033
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_20

    .line 2034
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v14, 0x1

    aget-boolean v2, v2, v14

    if-eqz v2, :cond_21

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    int-to-long v9, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v1, v2, v9}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v9, 0x5be36860c328358bL    # 4.408214735408358E134

    invoke-static {v3, v9, v10, v15, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_14

    :cond_20
    const/4 v14, 0x1

    :cond_21
    :goto_14
    const/4 v15, 0x0

    :goto_15
    move-object/from16 v1, p19

    goto :goto_16

    :cond_22
    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 2039
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mHasSceneTransition:Z

    goto :goto_15

    .line 2042
    :goto_16
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    move-object/from16 v1, p20

    .line 2043
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2045
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111014c

    .line 2046
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-lez v1, :cond_23

    .line 2049
    iput-wide v12, v0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    .line 2051
    :cond_23
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {v1, v0, v6, v8}, Lcom/android/server/wm/PackageConfigPersister;->updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V

    if-eqz v4, :cond_24

    .line 2054
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->isAllowPassThroughOnTouchOutside()Z

    move-result v1

    if-eqz v1, :cond_24

    move v6, v14

    goto :goto_17

    :cond_24
    move v6, v15

    .line 2055
    :goto_17
    new-instance v1, Lcom/android/server/wm/ActivityRecordInputSink;

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/wm/ActivityRecordInputSink;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

    .line 2058
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isAppActivityEmbeddingSplitsEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppActivityEmbeddingSplitsEnabled:Z

    .line 2059
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getAllowUntrustedEmbeddingStateSharingProperty()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mAllowUntrustedEmbeddingStateSharing:Z

    .line 2061
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 2062
    invoke-static {v11, v1, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Ljava/util/function/Supplier;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mOptInOnBackInvoked:Z

    .line 2074
    new-instance v1, Lcom/android/server/wm/ActivityCallerState;

    invoke-direct {v1, v7}, Lcom/android/server/wm/ActivityCallerState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;JLcom/android/server/wm/ActivityRecord-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p22}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V

    return-void
.end method

.method public static synthetic access$001(Lcom/android/server/wm/ActivityRecord;)F
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getCompatScale()F

    move-result p0

    return p0
.end method

.method public static activityRefreshedLocked(Landroid/os/IBinder;)V
    .locals 5

    .line 6228
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 6229
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0xf78113bedfcb65L

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 6235
    :cond_1
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static activityResumedLocked(Landroid/os/IBinder;Z)V
    .locals 5

    .line 6213
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 6214
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x18127ce0cf0332a5L    # 1.013043612899191E-192

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 6220
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setCustomizeSplashScreenExitAnimation(Z)V

    const/4 p1, 0x0

    .line 6221
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    .line 6223
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 6224
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyAppResumedFinished(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;Lcom/android/server/wm/WindowManagerService;ZZ)Z
    .locals 4

    .line 3145
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const-wide/32 v2, 0x15498ba7

    .line 3149
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 3150
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestLargeScreen:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestSmallScreen:Z

    if-eqz p2, :cond_3

    :goto_1
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3153
    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowManagerConstants;->isPackageOptOutIgnoreActivityOrientationRequest(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    move p2, v0

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    if-nez v2, :cond_4

    if-nez p2, :cond_4

    return v1

    :cond_4
    if-eqz p3, :cond_5

    return v0

    .line 3162
    :cond_5
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3163
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3164
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 3162
    invoke-static {p1, p2, p0}, Lcom/android/server/wm/AppCompatResizeOverrides;->allowRestrictedResizability(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 4763
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4766
    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLockedInner(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 4768
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    if-eqz v1, :cond_2

    .line 4769
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4770
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLockedInner(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public static canShowWhenLockedInner(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 4778
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-nez v0, :cond_0

    .line 4779
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mIsUserAlwaysVisible:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static computeTaskAffinity(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 2109
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 2110
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static createImageFilename(JI)Ljava/lang/String;
    .locals 1

    .line 6917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_activity_icon_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    .line 1235
    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p9

    if-nez p9, :cond_0

    return v0

    :cond_0
    const/4 p9, 0x1

    if-nez p7, :cond_2

    if-nez p6, :cond_1

    .line 1239
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result p7

    if-nez p7, :cond_2

    :cond_1
    move p7, p9

    goto :goto_0

    :cond_2
    move p7, v0

    :goto_0
    if-eqz p10, :cond_3

    .line 1241
    const-string p10, ""

    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    if-eqz p11, :cond_4

    .line 1244
    invoke-interface {p11}, Ljava/lang/Runnable;->run()V

    .line 1247
    :cond_4
    new-instance p10, Ljava/lang/StringBuilder;

    invoke-direct {p10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p10, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p11, "  "

    invoke-virtual {p10, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    .line 1248
    new-array v0, v0, [Ljava/lang/String;

    .line 1249
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v2, "* "

    if-eq p12, v1, :cond_7

    .line 1250
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p12

    .line 1251
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p7, :cond_5

    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v1, p11

    .line 1252
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p1, p12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p7, :cond_6

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p11

    invoke-virtual {p12, p1, p11}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz p6, :cond_7

    .line 1258
    iget-object v1, p12, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_7

    .line 1259
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p1, p11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1261
    iget-object p11, p12, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {p11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object p11

    invoke-virtual {p1, p11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    :cond_7
    :goto_2
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p7, :cond_8

    goto :goto_3

    :cond_8
    const-string v2, "    "

    :goto_3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    const-string p4, " #"

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p7, :cond_9

    .line 1269
    invoke-virtual {p3, p1, p10, p9}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_9
    if-eqz p6, :cond_a

    .line 1272
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1273
    iget-object p2, p3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    iget-object p2, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p2, :cond_a

    .line 1275
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    iget-object p2, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    :goto_4
    if-eqz p8, :cond_b

    .line 1279
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1282
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1284
    :try_start_0
    new-instance p2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1286
    :try_start_1
    iget-object p4, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p4

    .line 1287
    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object p5

    iget-object p3, p3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 1286
    invoke-interface {p4, p5, p3, p10, v0}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    const-wide/16 p3, 0x7d0

    .line 1289
    invoke-virtual {p2, p0, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1291
    :try_start_2
    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 1292
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1296
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Got a RemoteException while dumping the activity"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 1294
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Failure while dumping the activity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    :goto_6
    return p9
.end method

.method public static forToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1772
    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/server/wm/ActivityRecord$Token;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1777
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$Token;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :catch_0
    move-exception v1

    .line 1774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad activity token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1781
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1782
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I
    .locals 1

    .line 2117
    iget v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 2119
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 2125
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    return v0
.end method

.method private getProcessGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 8671
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public static getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;
    .locals 0

    .line 6876
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6878
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .locals 3

    .line 6858
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    .line 6859
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6862
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 v2, 0x1

    .line 6863
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    if-lez p0, :cond_1

    return v0

    .line 6867
    :cond_1
    iget p0, v1, Lcom/android/server/wm/Task;->mTaskId:I

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static hasResizeChange(I)Z
    .locals 0

    .line 0
    and-int/lit16 p0, p0, 0xd80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHomeIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 2839
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.category.HOME"

    .line 2840
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.category.SECONDARY_HOME"

    .line 2841
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2842
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2843
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2844
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 6885
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6886
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isInDeskUiMode(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 9104
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 6871
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6872
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isMainIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 2848
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.category.LAUNCHER"

    .line 2849
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2850
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2851
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2852
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isResolverActivity(Ljava/lang/String;)Z
    .locals 1

    .line 1786
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityRecord;
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 9035
    const-string v2, "launched_from_uid"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 9036
    const-string v4, "launched_from_package"

    invoke-interface {v0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9037
    const-string v5, "launched_from_feature"

    invoke-interface {v0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9038
    const-string v6, "resolved_type"

    invoke-interface {v0, v1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9039
    const-string v6, "component_specified"

    invoke-interface {v0, v1, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 9040
    const-string v7, "user_id"

    invoke-interface {v0, v1, v7, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 9041
    const-string v3, "id"

    const-wide/16 v7, -0x1

    invoke-interface {v0, v1, v3, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 9042
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 9045
    new-instance v15, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v15}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 9046
    invoke-virtual {v15, v0}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    move-object v10, v1

    move-object v11, v10

    .line 9049
    :goto_0
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 9050
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v14

    if-lt v14, v3, :cond_5

    :cond_0
    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 9052
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 9055
    const-string v14, "intent"

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 9056
    invoke-static {v0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 9059
    :cond_1
    const-string v14, "persistable_bundle"

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 9060
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v10

    goto :goto_1

    .line 9063
    :cond_2
    const-string v14, "initial_caller_info"

    .line 9064
    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 9065
    invoke-static {v0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    move-result-object v11

    goto :goto_1

    .line 9067
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreActivity: unexpected name="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "ActivityTaskManager"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9068
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_8

    move-object/from16 v0, p1

    .line 9077
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move-object/from16 v17, v11

    const/4 v11, 0x0

    move-wide/from16 v18, v7

    move-object v7, v0

    move-object v8, v1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-wide/from16 v16, v18

    .line 9078
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;III)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 9084
    new-instance v10, Lcom/android/server/wm/ActivityRecord$Builder;

    invoke-direct {v10, v3}, Lcom/android/server/wm/ActivityRecord$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 9085
    invoke-virtual {v10, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromUid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9086
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9087
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromFeature(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9088
    invoke-virtual {v2, v8}, Lcom/android/server/wm/ActivityRecord$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9089
    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityRecord$Builder;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9090
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9091
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord$Builder;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9092
    invoke-static {v2, v0}, Lcom/android/server/wm/ActivityRecord$Builder;->-$$Nest$msetPersistentState(Lcom/android/server/wm/ActivityRecord$Builder;Landroid/os/PersistableBundle;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 9093
    invoke-static {v0, v15}, Lcom/android/server/wm/ActivityRecord$Builder;->-$$Nest$msetTaskDescription(Lcom/android/server/wm/ActivityRecord$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    move-wide/from16 v2, v16

    .line 9094
    invoke-static {v0, v2, v3}, Lcom/android/server/wm/ActivityRecord$Builder;->-$$Nest$msetCreateTime(Lcom/android/server/wm/ActivityRecord$Builder;J)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 9095
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$Builder;->build()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v1, :cond_6

    .line 9098
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityCallerState;->add(Landroid/os/IBinder;Lcom/android/server/wm/ActivityCallerState$CallerInfo;)V

    :cond_6
    return-object v0

    .line 9081
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreActivity resolver error. Intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " resolvedType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v8, v1

    .line 9074
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreActivity error intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reverseConfigurationOrientation(I)I
    .locals 2

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static splashScreenAttachedLocked(Landroid/os/IBinder;)V
    .locals 1

    .line 6239
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_0

    .line 6241
    const-string p0, "ActivityTaskManager"

    const-string v0, "splashScreenTransferredLocked cannot find activity"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6244
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onSplashScreenAttachComplete()V

    return-void
.end method


# virtual methods
.method public abortAndClearOptionsAnimation()V
    .locals 1

    .line 5226
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 5227
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 5229
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    return-void
.end method

.method public activityPaused(Z)V
    .locals 7

    .line 6292
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x116f4692a6243297L

    const/16 v5, 0xc

    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6295
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6297
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    .line 6299
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v2, p0, :cond_3

    .line 6301
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string p1, "(due to timeout)"

    goto :goto_0

    :cond_1
    const-string p1, " (pause complete)"

    :goto_0
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x5f7964ec0b9834ddL    # 8.312522338834462E151

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, v5, v6, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6303
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 p1, 0x0

    .line 6305
    :try_start_0
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6307
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6308
    throw p1

    .line 6311
    :cond_3
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 6313
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v2, "(none)"

    .line 6311
    :goto_1
    invoke-static {p1, v0, v4, v2}, Lcom/android/server/wm/EventLogTags;->writeWmFailedToPause(IILjava/lang/String;Ljava/lang/String;)V

    .line 6314
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6315
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v0, "activityPausedLocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6316
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_6

    .line 6317
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x25fea89c56f2322cL

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v4, v5, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6319
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 6325
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 6326
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    return-void
.end method

.method public activityStopped(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 7

    .line 6439
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStopTimeout()V

    .line 6440
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 6441
    :goto_0
    const-string v4, "ActivityTaskManager"

    if-nez v1, :cond_1

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v5, :cond_1

    .line 6442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 6446
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    .line 6447
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p2, v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 6453
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    .line 6454
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 6455
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityRecord;->updateTaskDescription(Ljava/lang/CharSequence;)V

    .line 6457
    :cond_3
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 p2, 0x2

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x44304d2f45f0ca84L    # -1.3424835845805755E-20

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, v5, v6, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4
    if-eqz v1, :cond_6

    .line 6460
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x69a81048ad613045L    # 9.209750965846779E200

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, v1, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6461
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/ActivityRecord;->mStoppedTime:J

    .line 6462
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    const-string p2, "activityStopped"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6465
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 6466
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 6470
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object p2, p1, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz p2, :cond_7

    .line 6471
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->clearLastRecentsAnimationTransaction(Z)V

    .line 6473
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6475
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    .line 6477
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces()V

    .line 6479
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 6483
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez p1, :cond_9

    .line 6484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Clear pending relaunch count on stopped "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6485
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearRelaunching()V

    .line 6488
    :cond_9
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_a

    .line 6489
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    goto :goto_1

    .line 6491
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V

    .line 6493
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    return-void
.end method

.method public final addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .locals 1

    .line 4990
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4993
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 7

    .line 4849
    new-instance v0, Lcom/android/server/wm/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityResult;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 4851
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 4852
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4854
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStartingWindow(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;ZZZZZZZ)Z
    .locals 23

    move-object/from16 v0, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    .line 2290
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->okToDisplay()Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    return v10

    .line 2294
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    return v10

    .line 2298
    :cond_1
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2299
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_2

    return v10

    .line 2304
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2, v10}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v7

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p10

    .line 2306
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityRecord;->getStartingWindowType(ZZZZZZLandroid/window/TaskSnapshot;)I

    move-result v11

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v11, v1, :cond_3

    .line 2310
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    new-instance v6, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;

    invoke-direct {v6, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 2311
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/StartingSurfaceController;->isExceptionApp(Ljava/lang/String;ILjava/util/function/Supplier;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v17, v2

    goto :goto_0

    :cond_3
    move/from16 v17, v10

    .line 2322
    :goto_0
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord;->isIconStylePreferred(I)Z

    move-result v20

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v18, p10

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v19, v11

    move/from16 v11, p4

    .line 2320
    invoke-static/range {v11 .. v22}, Lcom/android/server/wm/StartingSurfaceController;->makeStartingWindowTypeParameter(ZZZZZZZZIZLjava/lang/String;I)I

    move-result v3

    move/from16 v4, v19

    if-ne v4, v2, :cond_6

    .line 2325
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2328
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2329
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    .line 2331
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    return v10

    :cond_4
    const/16 v1, 0x10

    .line 2336
    invoke-virtual {v7, v1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 2337
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    .line 2339
    :cond_5
    invoke-virtual {v0, v7, v3}, Lcom/android/server/wm/ActivityRecord;->createSnapshot(Landroid/window/TaskSnapshot;I)Z

    move-result v0

    return v0

    :cond_6
    if-nez v8, :cond_7

    .line 2344
    iget v5, v0, Lcom/android/server/wm/ActivityRecord;->theme:I

    if-eqz v5, :cond_7

    return v10

    :cond_7
    if-eqz v9, :cond_8

    .line 2348
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_8

    return v2

    :cond_8
    if-eq v4, v1, :cond_9

    return v10

    .line 2358
    :cond_9
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x64e3208ccbdf3a92L    # 9.688525390646764E177

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v10, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2359
    :cond_a
    new-instance v1, Lcom/android/server/wm/SplashScreenStartingData;

    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v4, v8, v3}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;II)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2360
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    return v2
.end method

.method public addToFinishingAndWaitForIdle()Z
    .locals 5

    .line 3914
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x2bfabd7d477d3deaL    # 7.824308039454567E-97

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3915
    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "addToFinishingAndWaitForIdle"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 3916
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3917
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3919
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3920
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    move-result p0

    return p0
.end method

.method public addToStopping(ZZLjava/lang/String;)V
    .locals 3

    .line 6497
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6498
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p3}, Lcom/android/server/wm/EventLogTags;->writeWmAddToStopping(IILjava/lang/String;Ljava/lang/String;)V

    .line 6500
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6503
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p3

    .line 6507
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-gt v0, v1, :cond_2

    .line 6508
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 6519
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    return-void

    .line 6510
    :cond_4
    :goto_2
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_5

    xor-int/lit8 p1, p2, 0x1

    sget-object p3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v0, 0x37421def674e3d56L    # 1.624782857863838E-42

    const/16 v2, 0xf

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    if-nez p2, :cond_6

    .line 6514
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    return-void

    .line 6516
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public addWindow(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 4474
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 4475
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    return-void
.end method

.method public final adjustPictureInPictureParamsIfNeeded(Landroid/graphics/Rect;)V
    .locals 2

    .line 9497
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9498
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 9502
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 9503
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.software.leanback"

    .line 9504
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.TV_IMPLICIT_ENTER_PIP"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 9505
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 9507
    const-string p1, "ActivityTaskManager"

    const-string v0, "Auto-enter PiP only allowed on TV if android.permission.TV_IMPLICIT_ENTER_PIP permission is held by the app."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9510
    new-instance p1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {p1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    const/4 v0, 0x0

    .line 9511
    invoke-virtual {p1, v0}, Landroid/app/PictureInPictureParams$Builder;->setAutoEnterEnabled(Z)Landroid/app/PictureInPictureParams$Builder;

    .line 9512
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    :cond_1
    return-void
.end method

.method public final allDrawnStatesConsidered()Z
    .locals 4

    .line 5188
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 5189
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5190
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public allowMoveToFront()Z
    .locals 0

    .line 5269
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final allowTaskSnapshot()Z
    .locals 4

    .line 8959
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 8967
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 8968
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_4

    .line 8969
    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 8973
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastNewIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    goto :goto_1

    .line 8974
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_3

    .line 8975
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V
    .locals 0

    .line 7330
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    .line 7331
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    return-void
.end method

.method public final applyLocaleOverrideIfNeeded(Landroid/content/res/Configuration;)V
    .locals 2

    .line 9520
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mAlignActivityLocaleWithTask:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 9526
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 9528
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9533
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 9535
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 9534
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9538
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9539
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_2
    return-void
.end method

.method public applyOptionsAnimation()V
    .locals 4

    .line 5074
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying options for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    if-eqz v0, :cond_1

    .line 5076
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5077
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v2

    .line 5076
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TransitionController;->setStatusBarTransitionDelay(J)V

    goto :goto_0

    .line 5079
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_2

    return-void

    .line 5081
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 5085
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5086
    invoke-static {}, Landroid/window/TransitionInfo$AnimationOptions;->makeSceneTransitionAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v1

    const/4 v2, 0x0

    .line 5085
    invoke-virtual {v0, v1, p0, v2, v2}, Lcom/android/server/wm/TransitionController;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    return-void

    .line 5089
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation(Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    .line 5091
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimationForSiblings()V

    return-void
.end method

.method public final applyOptionsAnimation(Landroid/app/ActivityOptions;Landroid/content/Intent;)V
    .locals 9

    .line 5098
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    .line 5099
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v5, 0x4

    if-eq v0, v5, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x9

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 p2, 0xc

    if-eq v0, p2, :cond_0

    .line 5160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WindowManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5154
    :cond_0
    invoke-static {}, Landroid/window/TransitionInfo$AnimationOptions;->makeCrossProfileAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p2

    move-object v0, v2

    move-object v2, p2

    move-object p2, v0

    goto/16 :goto_3

    .line 5114
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v1

    .line 5115
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v4

    .line 5113
    invoke-static {v0, v1, v3, v4}, Landroid/window/TransitionInfo$AnimationOptions;->makeClipRevealAnimOptions(IIII)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    .line 5116
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5117
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    .line 5118
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    .line 5119
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 5120
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5117
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    move-object p2, v2

    move-object v2, v0

    :goto_1
    move-object v0, p2

    goto/16 :goto_3

    :cond_3
    if-ne v0, v4, :cond_4

    move v1, v3

    .line 5138
    :cond_4
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 5140
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    .line 5139
    invoke-static {v0, v3, v4, v1}, Landroid/window/TransitionInfo$AnimationOptions;->makeThumbnailAnimOptions(Landroid/hardware/HardwareBuffer;IIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v1

    .line 5141
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 5142
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    .line 5143
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    .line 5144
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    .line 5145
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 5146
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    add-int/2addr v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5143
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_5
    move-object v0, v2

    move-object p2, v3

    move-object v2, v1

    goto :goto_3

    .line 5125
    :cond_6
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v1

    .line 5126
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v4

    .line 5127
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v5

    .line 5124
    invoke-static {v0, v1, v3, v4, v5}, Landroid/window/TransitionInfo$AnimationOptions;->makeScaleUpAnimOptions(IIIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    .line 5128
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5129
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    .line 5130
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    .line 5131
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 5132
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5129
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 5105
    :cond_7
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 5106
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v0

    .line 5107
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v2

    .line 5108
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v3

    .line 5105
    invoke-static {p2, v0, v1, v2, v3}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v2

    .line 5109
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object p2

    .line 5110
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v0

    goto :goto_3

    :cond_8
    :goto_2
    move-object p2, v2

    goto/16 :goto_1

    :goto_3
    if-eqz v2, :cond_9

    .line 5165
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v2, p0, p2, v0}, Lcom/android/server/wm/TransitionController;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 5168
    :cond_9
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCustomBackgroundColor()I

    move-result p1

    if-eqz p1, :cond_a

    .line 5170
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->setOverrideBackgroundColor(I)V

    :cond_a
    return-void
.end method

.method public areBoundsLetterboxed()Z
    .locals 2

    const/4 v0, 0x1

    .line 7817
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState(Z)I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public asActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 0
    return-object p0
.end method

.method public final associateStartingDataWithTask()V
    .locals 1

    .line 2694
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object p0, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 2695
    iput-object v0, p0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    return-void
.end method

.method public associateStartingWindowWithTaskIfNeeded()V
    .locals 1

    .line 2700
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2704
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2710
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingDataWithTask()V

    .line 2711
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachStartingSurfaceToAssociatedTask()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final attachStartingSurfaceToAssociatedTask()V
    .locals 2

    .line 2685
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2687
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v1, v1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowContainer;->overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 2688
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object p0, p0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public attachStartingWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1

    .line 2665
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v0, p1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2666
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 2668
    iget-object p1, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_0

    .line 2671
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2672
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachStartingSurfaceToAssociatedTask()V

    goto :goto_0

    .line 2674
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2675
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingWindowWithTaskIfNeeded()V

    .line 2677
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2678
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    move-result p0

    iput p0, p1, Lcom/android/server/wm/StartingData;->mTransitionId:I

    :cond_2
    return-void
.end method

.method public attachedToProcess()Z
    .locals 1

    .line 2182
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canAffectSystemUiFlags()Z
    .locals 1

    .line 5328
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5329
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->canAffectSystemUiFlags()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5330
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v0, :cond_0

    .line 5331
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canAutoEnterPip()Z
    .locals 2

    .line 1630
    const-string v0, "startActivityUnchecked"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz p0, :cond_0

    .line 1635
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public canBeLaunchedOnDisplay(I)Z
    .locals 3

    .line 3254
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public canBeTopRunning()Z
    .locals 1

    .line 6839
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canCaptureSnapshot()Z
    .locals 2

    .line 9552
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSurfaceShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9555
    :cond_0
    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public canCreateRemoteAnimationTarget()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public canCustomizeAppTransition()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public canDefineOrientationForActivitiesAbove()Z
    .locals 2

    .line 7396
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 7399
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public canForceResizeNonResizable(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 3178
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 3182
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 3183
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    goto :goto_1

    .line 3184
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindow()Z

    move-result v2

    .line 3185
    :goto_1
    invoke-static {p1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez p1, :cond_4

    return v0

    .line 3190
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq p0, v1, :cond_5

    if-eq p0, v3, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method public final canLaunchAssistActivity(Ljava/lang/String;)Z
    .locals 0

    .line 2874
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    .line 2877
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2862
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2863
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 2867
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public canReceiveKeys()Z
    .locals 1

    .line 3106
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canResumeByCompat()Z
    .locals 1

    .line 9193
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

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

.method public canShowWhenLocked()Z
    .locals 2

    .line 4789
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4792
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 4793
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4794
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4800
    :cond_1
    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public canShowWindows()Z
    .locals 1

    .line 4809
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4810
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    return p0
.end method

.method public canStartChangeTransition()Z
    .locals 1

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1486
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->canStartChangeTransition()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canTurnScreenOn()Z
    .locals 2

    .line 9152
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 9155
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 9156
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public cancelInitializing()V
    .locals 3

    .line 7187
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_1

    .line 7189
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found orphaned starting window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 7190
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    .line 7192
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7195
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    :cond_2
    return-void
.end method

.method public checkContentUriPermission(Landroid/os/IBinder;Lcom/android/server/uri/GrantUri;I)Z
    .locals 0

    .line 1834
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityCallerState;->checkContentUriPermission(Landroid/os/IBinder;Lcom/android/server/uri/GrantUri;I)Z

    move-result p0

    return p0
.end method

.method public checkEnterPictureInPictureAppOpsState()Z
    .locals 3

    .line 3347
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkEnterPictureInPictureState(Ljava/lang/String;Z)Z
    .locals 6

    .line 3265
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3270
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3275
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->shouldDisableNonVrUiLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 3281
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq v0, p0, :cond_3

    goto/16 :goto_4

    .line 3286
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 3287
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    .line 3286
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->isEnteringPipAllowed(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3288
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t support enter picture-in-picture mode. caller = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3293
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3294
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_0

    :cond_5
    move p1, v1

    .line 3295
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3296
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_1

    :cond_6
    move v2, v1

    .line 3299
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_7

    if-nez p1, :cond_7

    move v3, v0

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    if-eqz p2, :cond_8

    if-eqz v2, :cond_8

    return v1

    .line 3306
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_d

    const/4 p1, 0x3

    if-eq v4, p1, :cond_b

    const/4 p1, 0x4

    if-eq v4, p1, :cond_b

    const/4 p1, 0x5

    if-eq v4, p1, :cond_9

    goto :goto_3

    .line 3323
    :cond_9
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz p0, :cond_a

    if-eqz v3, :cond_a

    if-nez v2, :cond_a

    return v0

    :cond_a
    :goto_3
    return v1

    :cond_b
    if-eqz v3, :cond_c

    if-nez v2, :cond_c

    .line 3317
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz p0, :cond_c

    return v0

    :cond_c
    return v1

    :cond_d
    if-nez p1, :cond_f

    .line 3310
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-nez p0, :cond_e

    if-nez p2, :cond_f

    :cond_e
    return v0

    :cond_f
    :goto_4
    return v1
.end method

.method public checkKeyguardFlagsChanged()V
    .locals 3

    .line 4699
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v0

    .line 4700
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v1

    .line 4701
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    if-eq v1, v2, :cond_1

    .line 4703
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    .line 4705
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    .line 4706
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    .line 4707
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsTurnScreenOnWindow:Z

    return-void
.end method

.method public cleanUp(ZZ)V
    .locals 4

    .line 4132
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskFragment;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    .line 4133
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearLastParentBeforePip()V

    .line 4136
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4138
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->abortTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 4142
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpSplashScreen()V

    if-eqz p2, :cond_2

    .line 4145
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v0, "cleanUp"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 4146
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/server/wm/ActivityRecord;->TAG_APP:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing app during cleanUp for activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 4151
    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 4154
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz p2, :cond_5

    .line 4155
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4156
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v0, :cond_3

    .line 4158
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;ZI)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 4163
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    :cond_5
    if-eqz p1, :cond_6

    .line 4167
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpActivityServices()V

    .line 4171
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 4174
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearRelaunching()V

    return-void
.end method

.method public final cleanUpActivityServices()V
    .locals 1

    .line 4244
    monitor-enter p0

    .line 4245
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v0, :cond_0

    .line 4246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 4249
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->disconnectActivityFromServices()V

    const/4 v0, 0x0

    .line 4251
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 4252
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cleanUpSplashScreen()V
    .locals 5

    .line 2648
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_3

    .line 2651
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x120645155da2c839L    # -5.812982579296777E221

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2652
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2653
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 2652
    :goto_0
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onAppSplashScreenViewRemoved(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V

    :cond_3
    return-void
.end method

.method public clearAllDrawn()V
    .locals 1

    const/4 v0, 0x0

    .line 5175
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    return-void
.end method

.method public clearCustomTransition(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 9581
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    return-void

    .line 9583
    :cond_0
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    return-void
.end method

.method public clearDeferHidingClient()V
    .locals 0

    .line 0
    return-void
.end method

.method public clearLastParentBeforePip()V
    .locals 2

    .line 1665
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1666
    iput-object v1, v0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1667
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 1669
    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1670
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    .line 1671
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

    return-void
.end method

.method public clearOptionsAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 5233
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 5234
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 5235
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public clearOptionsAnimationForSiblings()V
    .locals 1

    .line 5239
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v0, :cond_0

    .line 5240
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    return-void

    .line 5243
    :cond_0
    new-instance p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public clearRelaunching()V
    .locals 1

    .line 4219
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4222
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    .line 4223
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishOrAbortReplacingWindow()V

    return-void
.end method

.method public clearVoiceSessionLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 6997
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v0, 0x0

    .line 6998
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    return-void
.end method

.method public commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 5628
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 5629
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 5632
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    :cond_1
    return-void
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public commitVisibility(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 5614
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    return-void
.end method

.method public commitVisibility(ZZZ)V
    .locals 8

    const/4 v0, 0x0

    .line 5546
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    .line 5547
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-ne p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 5552
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 5553
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onAppCommitInvisible()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5556
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 5557
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 5558
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v4

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v2, v7, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x6865e59975b8316cL    # 7.992254571324703E194

    const/16 v5, 0xfc

    invoke-static {v6, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_4

    .line 5565
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v2, :cond_4

    .line 5567
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 5568
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v0, v2, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 5574
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    .line 5576
    invoke-virtual {v2, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 5577
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1

    .line 5579
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 5580
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_6

    .line 5582
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x3

    invoke-virtual {p2, v3, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 5584
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5586
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 5587
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    if-nez p1, :cond_7

    .line 5596
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p2, v0, :cond_8

    .line 5597
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    :cond_8
    if-nez p3, :cond_9

    .line 5602
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/SnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    if-eqz p1, :cond_9

    .line 5606
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 5607
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 387
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    return p0
.end method

.method public completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x1

    .line 3743
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 6

    .line 3756
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3762
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 3767
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 3768
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 3770
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result p1

    if-nez p1, :cond_4

    .line 3772
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 3776
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3777
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/KeyguardController;->topActivityOccludesKeyguard(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3786
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v3, v1}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 3801
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3807
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz p1, :cond_5

    if-eqz v4, :cond_5

    .line 3808
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3809
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3811
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_5

    .line 3812
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isDelayLastActivityRemoval()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3813
    new-instance v5, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda2;

    invoke-direct {v5, p1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    if-eqz p1, :cond_6

    .line 3820
    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v5, :cond_7

    .line 3821
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 3824
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3825
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v5, :cond_8

    .line 3826
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    :cond_8
    if-eqz v0, :cond_c

    if-nez v1, :cond_b

    if-nez v4, :cond_b

    if-eqz p1, :cond_9

    .line 3830
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isInTransition()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    .line 3836
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_6

    .line 3843
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    .line 3833
    :cond_b
    :goto_5
    const-string p1, "completeFinishing"

    invoke-virtual {p0, v2, v2, p1}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    .line 3835
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    goto :goto_6

    .line 3848
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    .line 3849
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    move-result v2

    :goto_6
    if-eqz v2, :cond_d

    return-object v3

    :cond_d
    :goto_7
    return-object p0

    .line 3757
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity must be finishing and not resumed to complete, r="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", finishing="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public completeResumeLocked()V
    .locals 3

    const/4 v0, 0x0

    .line 6253
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    const/4 v0, 0x0

    .line 6254
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 6255
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6256
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastNewIntent:Landroid/content/Intent;

    .line 6258
    :cond_0
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 6260
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateHomeProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 6262
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_1

    .line 6263
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 6267
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 6269
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6270
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6272
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->updateAppCompatDisplayInsets()V

    .line 6273
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->executeAppTransitionForAllDisplay()V

    .line 6276
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 6277
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6278
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6279
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 6281
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6282
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p0

    const-string v1, "turnScreenOnFlag"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    return-void

    .line 6287
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    return-void
.end method

.method public computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V
    .locals 0

    .line 1829
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityCallerState;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    return-void
.end method

.method public computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2

    .line 7804
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;)V

    .line 7806
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 7807
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

    return-void
.end method

.method public computeInitialCallerInfo()V
    .locals 6

    .line 1823
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    return-void
.end method

.method public containsDismissKeyguardWindow()Z
    .locals 4

    .line 4713
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4714
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    return p0

    .line 4717
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 4718
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public containsShowWhenLockedWindow()Z
    .locals 4

    .line 4729
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4730
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    return p0

    .line 4733
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 4734
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final containsTurnScreenOnWindow()Z
    .locals 4

    .line 9175
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9176
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsTurnScreenOnWindow:Z

    return p0

    .line 9178
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 9179
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final createSnapshot(Landroid/window/TaskSnapshot;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2369
    :cond_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x2fa12132dcbcc5afL    # -1.4298154306107322E79

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2370
    :cond_1
    new-instance v0, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/window/TaskSnapshot;I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2371
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p1

    if-gt p1, v2, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance p2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;

    invoke-direct {p2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;-><init>()V

    .line 2372
    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2381
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingDataWithTask()V

    .line 2383
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    return v2
.end method

.method public currentLaunchCanTurnScreenOn()Z
    .locals 0

    .line 5675
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    return p0
.end method

.method public deferStartingWindowRemovalForKeyguardUnoccluding()V
    .locals 2

    .line 2720
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2722
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLockedInner(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2723
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2724
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput v1, p0, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    :cond_0
    return-void
.end method

.method public final deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;ZII)V
    .locals 7

    .line 5006
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    move-object v1, p0

    move v4, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    .line 5008
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    move-object p2, v3

    move p4, v4

    .line 5011
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 5012
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p1

    .line 5011
    invoke-interface {p0, p3, p1}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    if-eqz v6, :cond_0

    .line 5014
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 p5, 0x1

    move p1, p6

    move p3, p7

    .line 5015
    invoke-virtual/range {p0 .. p5}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 5018
    :cond_0
    new-instance p0, Lcom/android/internal/content/ReferrerIntent;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v2}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5020
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, p2

    .line 5026
    :goto_0
    iget-object p4, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p4, p5, :cond_2

    sget-object p6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p4, p6, :cond_2

    if-eqz p1, :cond_4

    .line 5027
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5028
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5029
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5033
    new-instance p4, Landroid/app/servertransaction/NewIntentItem;

    iget-object p6, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object p7, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p7, p5, :cond_3

    move p2, p3

    :cond_3
    invoke-direct {p4, p6, p1, p2}, Landroid/app/servertransaction/NewIntentItem;-><init>(Landroid/os/IBinder;Ljava/util/List;Z)V

    .line 5035
    :try_start_0
    iget-object p1, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    iget-object p2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5036
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 5042
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception thrown sending new intent to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5047
    :cond_4
    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    return-void
.end method

.method public destroyIfPossible(Ljava/lang/String;)Z
    .locals 6

    .line 3861
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "destroyIfPossible"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 3864
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3866
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3867
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 3870
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3872
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3873
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3880
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    return v3

    .line 3883
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 3885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish-imm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    move-result p1

    if-nez v2, :cond_1

    .line 3890
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    .line 3892
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3894
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 3898
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 3901
    :cond_2
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x297bcfd520cecc67L    # -5.926592467694985E108

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v4, v5, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    return p1
.end method

.method public destroyImmediately(Ljava/lang/String;)Z
    .locals 7

    .line 3936
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_2

    .line 3937
    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_SWITCH:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing activity from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3938
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "(null)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3937
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    :cond_2
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 3942
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x7d99c1d7cadc3d4aL    # 1.0528206026161453E297

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    return v3

    .line 3947
    :cond_4
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6, p1}, Lcom/android/server/wm/EventLogTags;->writeWmDestroyActivity(IIILjava/lang/String;Ljava/lang/String;)V

    .line 3952
    invoke-virtual {p0, v3, v3}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 3953
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 3955
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3956
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 3957
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3958
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 3963
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_SWITCH:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_7

    .line 3967
    const-string v0, "WindowManager"

    const-string v1, "Failed to schedule DestroyActivityItem because client is inactive"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    move v0, v3

    goto :goto_1

    .line 3970
    :cond_7
    new-instance v1, Landroid/app/servertransaction/DestroyActivityItem;

    iget-object v4, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-direct {v1, v4, v5}, Landroid/app/servertransaction/DestroyActivityItem;-><init>(Landroid/os/IBinder;Z)V

    .line 3973
    :try_start_0
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3974
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    invoke-virtual {v4, p0, v3}, Lcom/mediatek/server/am/AmsExt;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 3977
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_9

    .line 3987
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_9

    .line 3988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exceptionInScheduleDestroy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    move p1, v2

    :goto_2
    move v0, p1

    goto :goto_3

    :cond_9
    move p1, v3

    goto :goto_2

    .line 3994
    :goto_3
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 4001
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_b

    if-nez p1, :cond_b

    .line 4002
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x4eb91e07a7b53ab7L    # 1.733532632468599E71

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v4, v5, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4003
    :cond_a
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 4005
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 4007
    :cond_b
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_c

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x197518f30534c481L    # -9.14493571546782E185

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v4, v5, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4009
    :cond_c
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 4011
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz p1, :cond_d

    sget-object p1, Lcom/android/server/wm/ActivityRecord;->TAG_APP:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing app during destroy for activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    :goto_4
    return v0

    .line 4016
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_f

    .line 4017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hadNoApp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    return v2

    .line 4020
    :cond_f
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_10

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x2d8c3b9664333f3dL    # 2.7719455001043972E-89

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v4, v5, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4021
    :cond_10
    const-string p1, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    return v3
.end method

.method public destroySurfaces()V
    .locals 1

    const/4 v0, 0x0

    .line 5830
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces(Z)V

    return-void
.end method

.method public final destroySurfaces(Z)V
    .locals 6

    .line 5846
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5847
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_0

    .line 5848
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 5849
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 5852
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 5853
    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    const/4 p1, 0x0

    .line 5854
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    :cond_1
    return-void
.end method

.method public destroyed(Ljava/lang/String;)V
    .locals 5

    .line 4105
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeDestroyTimeout()V

    .line 4107
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x6f0ba7649b4ccba8L    # -5.367906016571137E-227

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4109
    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4114
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->killTaskProcessesOnDestroyedIfNeeded(Lcom/android/server/wm/Task;)V

    .line 4115
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4116
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 4117
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    .line 4120
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    return-void

    .line 4110
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reported destroyed for activity that is not destroying: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detachFromProcess()V
    .locals 2

    .line 4053
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4054
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 4056
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4057
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    return-void
.end method

.method public final determineLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)I
    .locals 1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 2230
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    .line 2233
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2234
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V
    .locals 0

    .line 387
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->dispatchConfigurationToChild(Lcom/android/server/wm/WindowState;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchConfigurationToChild(Lcom/android/server/wm/WindowState;Landroid/content/res/Configuration;)V
    .locals 1

    .line 8401
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8404
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 957
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 958
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "packageName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 959
    const-string v2, " processName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchedFromUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 961
    const-string v2, " launchedFromPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 962
    const-string v2, " launchedFromFeature="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 963
    const-string v2, " userId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 964
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "app="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 965
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "rootOfTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 967
    const-string v2, " task="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 968
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "taskAffinity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 972
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "baseDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 974
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "resDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "dataDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 978
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "splitDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "stateNotNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 982
    const-string v2, " componentSpecified="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 983
    const-string v2, " mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 983
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v2, :cond_2

    .line 986
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "rootVoiceInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 988
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 990
    const-string v2, " theme=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastReportedConfigurations:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/MergedConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 994
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 995
    const-string v2, "mLastReportedActivityWindowInfo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 998
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "CurrentConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 999
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RequestedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ResolvedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1004
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 1011
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "resultTo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1012
    const-string v2, " resultWho="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1013
    const-string v2, " resultCode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1015
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const-string v3, "null"

    if-eqz v2, :cond_a

    .line 1016
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1017
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1018
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    if-eqz v2, :cond_a

    .line 1019
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "taskDescription:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    const-string v2, " label=\""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    const-string v2, " icon="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_9
    move-object v2, v3

    .line 1022
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    const-string v2, " iconResource="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1026
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconResourcePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1029
    const-string v2, " iconFilename="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1030
    const-string v2, " primaryColor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  backgroundColor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    const-string v2, " statusBarColor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    const-string v2, " navigationBarColor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1037
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " backgroundColorFloating="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1040
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v2

    .line 1039
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 1044
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "results="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1046
    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    const-string v4, "  - "

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 1047
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Results:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_c

    .line 1049
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_2

    :cond_c
    const/4 v5, 0x0

    .line 1050
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v5, :cond_d

    .line 1052
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1054
    :cond_d
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1055
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    .line 1059
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 1060
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending New Intents:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    .line 1061
    :goto_3
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_10

    .line 1062
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 1063
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v6, :cond_f

    .line 1065
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    const/4 v7, 0x1

    .line 1067
    invoke-virtual {v6, v5, v7, v5, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1071
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_11

    .line 1072
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "pendingOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1074
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    if-eqz v2, :cond_12

    .line 1075
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    const-string v2, "pendingRemoteAnimationCallingPid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1079
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v2, :cond_13

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pendingRemoteTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    .line 1081
    invoke-virtual {v3}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1080
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v2, :cond_14

    .line 1084
    invoke-virtual {v2, p1, p2, v5}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1086
    :cond_14
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v2, :cond_15

    .line 1087
    invoke-virtual {v2, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1089
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchFailed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1090
    const-string v2, " launchCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1091
    const-string v2, " lastLaunchTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, "0"

    if-nez v6, :cond_16

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 1093
    :cond_16
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1094
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1095
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v2, :cond_17

    .line 1096
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1097
    const-string v2, "launchCookie="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1100
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v2, :cond_18

    .line 1101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    const-string v2, "mLaunchRootTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1105
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHaveState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1106
    const-string v2, " mIcicle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1107
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1108
    const-string v2, " delayedResume="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1109
    const-string v2, " finishing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "keysPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1111
    const-string v2, " inHistory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1112
    const-string v2, " idle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1113
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "occludesParent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1114
    const-string v2, " mNoDisplay="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1115
    const-string v2, " immersive="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1116
    const-string v2, " launchMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_19

    .line 1120
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    const-string v2, "requestedVrComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1124
    :cond_19
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1125
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz p3, :cond_1a

    .line 1126
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mVoiceInteraction=true"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mOccludesParent="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1129
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "overrideOrientation="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p3

    invoke-static {p3}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "requestedOrientation="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1132
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result p3

    invoke-static {p3}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mVisibleRequested="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVisible="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mClientVisible="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1135
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mDeferHidingClient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_1b
    const-string v2, ""

    :goto_6
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reportedDrawn="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reportedVisible="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1133
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    iget-boolean p3, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz p3, :cond_1c

    .line 1138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "paused="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1140
    :cond_1c
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz p3, :cond_1d

    .line 1141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mAppStopped="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1143
    :cond_1d
    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    if-nez p3, :cond_1e

    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    if-nez p3, :cond_1e

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz p3, :cond_1f

    .line 1144
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mNumInterestingWindows="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1145
    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1146
    const-string p3, " mNumDrawnWindows="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1147
    const-string p3, " allDrawn="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1148
    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    :cond_1f
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p3, :cond_20

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz p3, :cond_21

    .line 1151
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "startingData="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1152
    const-string p3, " firstWindowDrawn="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1154
    :cond_21
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-nez p3, :cond_22

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p3, :cond_22

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-nez p3, :cond_22

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez p3, :cond_22

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    if-eqz p3, :cond_23

    .line 1156
    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "startingWindow="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1157
    const-string p3, " startingSurface="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1158
    const-string p3, " startingDisplayed="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isStartingWindowDisplayed()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1159
    const-string p3, " startingMoved="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1160
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVisibleSetFromTransferredStartingWindow="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    :cond_23
    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-eqz p3, :cond_24

    .line 1164
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mPendingRelaunchCount="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 1166
    :cond_24
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    if-eqz p3, :cond_25

    .line 1167
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mRemovingFromDisplay="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    :cond_25
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long p3, v2, v4

    if-nez p3, :cond_26

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz p3, :cond_28

    .line 1170
    :cond_26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "nowVisible="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1171
    const-string p3, " lastVisibleTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long p3, v2, v4

    if-nez p3, :cond_27

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 1173
    :cond_27
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1174
    :goto_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1176
    :cond_28
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz p3, :cond_29

    .line 1177
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mDeferHidingClient="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    :cond_29
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz p3, :cond_2a

    .line 1180
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "connections="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1182
    :cond_2a
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_31

    .line 1183
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "resizeMode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mLastReportedMultiWindowMode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mLastReportedPictureInPictureMode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 1187
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "supportsPictureInPicture="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "supportsEnterPipOnTaskSwitch: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz p3, :cond_2b

    .line 1191
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "autoEnterPipEnabled: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 1192
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1191
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    :cond_2b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mPauseSchedulePendingForPip="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_2d

    .line 1197
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "maxAspectRatio="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1199
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result p3

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_2e

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "minAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_2f

    .line 1205
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "manifestMinAspectRatio="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1206
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1205
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    :cond_2f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "supportsSizeChanges="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1210
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->supportsSizeChanges()I

    move-result v0

    .line 1209
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->sizeChangesSupportModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1208
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p3, p3, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-eqz p3, :cond_30

    .line 1212
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "configChanges=0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1214
    :cond_30
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "neverSandboxDisplayApis="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v1, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1216
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "alwaysSandboxDisplayApis="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v1, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    :cond_31
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_32

    .line 1220
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lastParentTaskIdBeforePip="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1222
    :cond_32
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p3, :cond_33

    .line 1223
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "launchIntoPipHostActivity="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    :cond_33
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-eqz p3, :cond_34

    .line 1226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mWaitForEnteringPinnedMode=true"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1229
    :cond_34
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 4

    const-wide v0, 0x10900000001L

    .line 9271
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v0, 0x10b00000002L

    .line 9272
    invoke-super {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowToken;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v0, 0x10800000003L

    .line 9273
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 p2, 0x7

    const/16 v0, 0x11

    .line 9274
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p2

    const-wide v0, 0x10800000005L

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000007L

    .line 9276
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000008L

    .line 9277
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9278
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-wide v0, 0x1080000001eL

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000018L

    .line 9279
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000009L

    .line 9280
    iget-boolean p2, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000aL

    .line 9281
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000bL

    .line 9282
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000cL

    .line 9283
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000dL

    .line 9284
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1050000000eL

    .line 9285
    iget p2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000fL

    .line 9286
    iget p2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000010L

    .line 9287
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9288
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_0

    const-wide v0, 0x10b00000013L

    .line 9289
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    const-wide v0, 0x10800000014L

    .line 9291
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isStartingWindowDisplayed()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x108000000c9L

    .line 9292
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000016L

    .line 9293
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9296
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide v0, 0x1090000001bL

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x1080000001cL

    .line 9297
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9298
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9299
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p2

    const-wide v0, 0x1050000001dL

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9301
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {p2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result p2

    const-wide v0, 0x1080000001fL

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000020L

    .line 9302
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10200000021L

    .line 9303
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10800000022L

    .line 9306
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->providesMaxBounds()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000023L

    .line 9307
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000024L

    .line 9308
    iget p2, p0, Lcom/android/server/wm/ActivityRecord;->mLastDropInputMode:I

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000025L

    .line 9309
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000026L

    .line 9310
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldSendCompatFakeFocus()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9311
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 9312
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p2

    .line 9314
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldForceRotateForCameraCompat()Z

    move-result v0

    const-wide v1, 0x10800000027L

    .line 9313
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000028L

    .line 9316
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityForCameraCompat()Z

    move-result v2

    .line 9315
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000029L

    .line 9318
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityViaPauseForCameraCompat()Z

    move-result p2

    .line 9317
    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9319
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 9320
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object p2

    .line 9322
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldOverrideMinAspectRatio()Z

    move-result v0

    const-wide v1, 0x1080000002aL

    .line 9321
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9323
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 9324
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v0

    .line 9325
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOrientationOverrides;->shouldIgnoreOrientationRequestLoop()Z

    move-result v0

    const-wide v1, 0x1080000002bL

    .line 9323
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9326
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 9327
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->shouldOverrideForceResizeApp()Z

    move-result v0

    const-wide v1, 0x1080000002cL

    .line 9326
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000002dL

    .line 9329
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldEnableUserAspectRatioSettings()Z

    move-result v2

    .line 9328
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000002eL

    .line 9331
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isUserFullscreenOverrideEnabled()Z

    move-result p2

    .line 9330
    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1030000002fL

    .line 9332
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->mRequestOpenInBrowserEducationTimestamp:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 9345
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9349
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 9350
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/ActivityRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V

    .line 9351
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public ensureActivityConfiguration()Z
    .locals 1

    const/4 v0, 0x0

    .line 8472
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    move-result p0

    return p0
.end method

.method public ensureActivityConfiguration(Z)Z
    .locals 5

    .line 8487
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 8488
    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 8489
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x77c3fe8c2696c108L    # -5.30114781034195E-269

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, v4, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return v2

    .line 8495
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 8496
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x373115ed2975c856L    # -5.386039383742283E42

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, v4, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    return v2

    .line 8501
    :cond_3
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8502
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0xe63523b1d82c378L    # -1.867485893045515E239

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, v4, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4
    return v2

    :cond_5
    if-nez p1, :cond_8

    .line 8507
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result p1

    if-nez p1, :cond_8

    .line 8508
    :cond_6
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x5acdaef40021c514L    # -1.65153005661337E-129

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, v4, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7
    return v2

    .line 8513
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result p1

    if-eqz p1, :cond_9

    return v2

    .line 8517
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedConfigurationAndSend()Z

    move-result p0

    return p0
.end method

.method public final evaluateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;II)I
    .locals 1

    .line 2195
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->validateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p4, :cond_1

    .line 2199
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/ActivityRecord;->validateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return p4

    :cond_1
    return p3
.end method

.method public fillsParent()Z
    .locals 1

    const/4 v0, 0x1

    .line 3016
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    return p0
.end method

.method public findMainWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    const/4 v0, 0x1

    .line 7227
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public findMainWindow(Z)Lcom/android/server/wm/WindowState;
    .locals 6

    .line 7239
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 7240
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 7241
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 7249
    :cond_0
    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_2

    move-object v2, v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    return-object v2
.end method

.method public final finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 10

    .line 3462
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3463
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_0

    .line 3464
    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_RESULTS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " who="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, v2, :cond_1

    if-eqz p2, :cond_1

    .line 3470
    invoke-virtual {p2, v2}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 3473
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_2

    .line 3474
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 3475
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v2

    .line 3474
    invoke-interface {v0, p3, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 3477
    :cond_2
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 3480
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3481
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v5, p2

    .line 3480
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3491
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p2

    if-eqz p2, :cond_3

    move v6, p1

    move-object v8, v4

    move-object v7, v5

    move-object v4, p0

    goto :goto_0

    .line 3503
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    move-object v7, v5

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move-object v9, v4

    move-object v8, v7

    move-object v4, p0

    move v7, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_4
    move v6, p1

    move-object v8, v4

    move-object v4, p0

    move-object v7, v5

    .line 3494
    :goto_0
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 3495
    iget-object p0, v4, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3506
    :goto_1
    iput-object v1, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 3488
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    move-object v4, p0

    .line 3507
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz p0, :cond_6

    .line 3508
    sget-object p0, Lcom/android/server/wm/ActivityRecord;->TAG_RESULTS:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No result destination from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    :cond_6
    :goto_2
    iput-object v1, v4, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3515
    iput-object v1, v4, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3516
    iput-object v1, v4, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3517
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    return-void
.end method

.method public finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I
    .locals 13

    .line 3556
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v8, 0x1

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v3, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x3374792b5daf3e85L    # 7.962860654113133E-61

    const/4 v5, 0x4

    invoke-static {v7, v3, v4, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3559
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v3, "ActivityTaskManager"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 3560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate finish request for r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3564
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish request when not in root task for r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3569
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3570
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_4

    .line 3571
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 3573
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v8

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    if-eqz v5, :cond_5

    .line 3574
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3577
    invoke-virtual {v6, v0}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v8

    goto :goto_1

    :cond_5
    move v0, v4

    .line 3579
    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 3581
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3582
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 3585
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 3586
    iget v6, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget v10, v9, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v11, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v12, p4

    invoke-static {v6, v7, v10, v11, v12}, Lcom/android/server/wm/EventLogTags;->writeWmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V

    .line 3588
    invoke-virtual {v9, p0}, Lcom/android/server/wm/WindowContainer;->getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 3590
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v10, 0x80000

    and-int/2addr v7, v10

    if-eqz v7, :cond_6

    .line 3594
    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 3598
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 3600
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_7

    .line 3601
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v6

    if-nez v6, :cond_7

    move v10, v8

    goto :goto_3

    :cond_7
    move v10, v4

    :goto_3
    if-eqz v10, :cond_8

    move-object v6, v9

    goto :goto_4

    :cond_8
    move-object v6, p0

    .line 3603
    :goto_4
    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3604
    invoke-virtual {v7, v6}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v7

    if-eqz v7, :cond_9

    move-object v11, v7

    goto :goto_5

    .line 3606
    :cond_9
    iget-object v11, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v11}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v11

    :goto_5
    if-eqz v11, :cond_a

    .line 3608
    invoke-virtual {v11, v6}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    :cond_a
    if-eqz v5, :cond_b

    .line 3612
    invoke-virtual {v9, v8}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_b

    .line 3614
    const-string v5, "finish-top"

    invoke-virtual {v9, v5, v4, v0}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 3618
    :cond_b
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/ActivityRecord;->finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3620
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v10, :cond_c

    .line 3622
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    .line 3623
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 3622
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 3629
    :cond_c
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_e

    .line 3630
    :cond_d
    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_TRANSITION:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare close transition: finishing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3639
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3640
    filled-new-array {v9}, [Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 3641
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 3642
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 3643
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    .line 3647
    :cond_f
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3650
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3651
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 3653
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    .line 3657
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_13

    .line 3658
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_11

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v5, -0x333b2ba35a5ccca2L    # -6.694355630287763E61

    invoke-static {v2, v5, v6, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3659
    :cond_11
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v0, :cond_12

    .line 3660
    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_USER_LEAVING:Ljava/lang/String;

    const-string v2, "finish() => pause with userLeaving=false"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    const-string v2, "finish"

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v4, v3, v2}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 3665
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3667
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 3669
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    .line 3672
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    .line 3669
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/server/am/AmsExt;->onBeforeActivitySwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZIZZZ)V

    :cond_13
    if-eqz v10, :cond_1a

    .line 3679
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    goto :goto_8

    .line 3681
    :cond_14
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3682
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_16

    .line 3684
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3685
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    if-eqz v7, :cond_16

    .line 3689
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_6

    .line 3692
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimation()V

    .line 3696
    :cond_16
    :goto_6
    const-string v0, "finishIfPossible"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_17

    move v0, v8

    goto :goto_7

    :cond_17
    move v0, v4

    :goto_7
    if-eqz p5, :cond_18

    .line 3699
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3700
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 3710
    :cond_18
    invoke-virtual {v9, v4}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3711
    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v9, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_19
    if-eqz v0, :cond_1a

    const/4 v8, 0x2

    .line 3722
    :cond_1a
    :goto_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v8

    .line 3717
    :cond_1b
    :try_start_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v5, 0x50ae2f9377be3f40L    # 4.4739608754666086E80

    invoke-static {v2, v5, v6, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 3722
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3723
    throw v0
.end method

.method public finishIfPossible(Ljava/lang/String;Z)I
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    .line 3539
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public finishIfSameAffinity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 3449
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 3451
    :cond_0
    const-string p0, "request-affinity"

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    const/4 p0, 0x0

    return p0
.end method

.method public finishIfSubActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .locals 1

    .line 3439
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_1

    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 3441
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3443
    :cond_0
    const-string p1, "request-sub"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_1
    :goto_0
    return-void
.end method

.method public finishOrAbortReplacingWindow()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4227
    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    .line 4228
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->removeRelaunchingApp(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public finishRelaunching()V
    .locals 2

    .line 4195
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v0

    const/4 v1, 0x0

    .line 4196
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatOrientationOverrides;->setRelaunchingAfterRequestedOrientationChanged(Z)V

    .line 4197
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityRelaunched(Lcom/android/server/wm/ActivityRecord;)V

    .line 4199
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 4200
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-nez v0, :cond_1

    .line 4201
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4203
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishOrAbortReplacingWindow()V

    goto :goto_0

    .line 4207
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    .line 4210
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4211
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 4214
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    :cond_2
    return-void
.end method

.method public finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V
    .locals 1

    .line 9462
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->isDifferentSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9463
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->allSyncFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    .line 9464
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    return-void
.end method

.method public forAllActivities(Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 4820
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public forAllActivities(Ljava/util/function/Predicate;Z)Z
    .locals 0

    .line 4815
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 4826
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivityWindowInfo()Landroid/window/ActivityWindowInfo;
    .locals 4

    .line 2985
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2986
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object p0

    .line 2988
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2992
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2993
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Landroid/window/ActivityWindowInfo;->set(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2995
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 2996
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbeddedInHostContainer()Z

    move-result v1

    .line 2997
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2998
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2995
    invoke-virtual {v0, v1, v2, v3}, Landroid/window/ActivityWindowInfo;->set(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3000
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object p0
.end method

.method public final getAllowUntrustedEmbeddingStateSharingProperty()Z
    .locals 4

    .line 2960
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.window.PROPERTY_ALLOW_UNTRUSTED_ACTIVITY_EMBEDDING_STATE_SHARING"

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2962
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2963
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2961
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 2964
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 0

    .line 8264
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8265
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 9385
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 9389
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getAnimationLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getAnimationPosition(Landroid/graphics/Point;)V
    .locals 0

    const/4 p0, 0x0

    .line 8272
    invoke-virtual {p1, p0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;
    .locals 0

    .line 7584
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p0

    return-object p0
.end method

.method public getAppCompatState()I
    .locals 1

    const/4 v0, 0x0

    .line 7836
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState(Z)I

    move-result p0

    return p0
.end method

.method public final getAppCompatState(Z)I
    .locals 0

    if-nez p1, :cond_0

    .line 7847
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 7851
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7852
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedAppCompatState()I

    move-result p0

    return p0

    .line 7854
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7855
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p1

    .line 7856
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->isInSizeCompatModeForBounds()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x3

    return p0

    .line 7863
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7864
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object p0

    .line 7865
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x4

    return p0

    .line 7869
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForAspectRatioOnly()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 3

    .line 8213
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 8214
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 8215
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v1

    .line 8216
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda14;-><init>()V

    .line 8217
    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;)V

    .line 8218
    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCallerPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 0

    .line 1815
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->getPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallerUid(Landroid/os/IBinder;)I
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->getUid(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public getCompatScale()F
    .locals 2

    .line 7630
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 7631
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getCompatScaleIfAvailable(Ljava/util/function/DoubleSupplier;)F

    move-result p0

    return p0
.end method

.method public final getConfigurationChanges(Landroid/content/res/Configuration;)I
    .locals 2

    .line 8773
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 8775
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    .line 8774
    invoke-static {v0, p1, v1, p0}, Landroid/window/SizeConfigurationBuckets;->filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I

    move-result p0

    const/high16 p1, 0x20000000

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    const p1, -0x20000001

    and-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public getCustomAnimation(Z)Lcom/android/server/wm/ActivityRecord$CustomAppTransition;
    .locals 0

    if-eqz p1, :cond_0

    .line 9588
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    return-object p0
.end method

.method public bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 387
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    .line 3006
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 6894
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_0

    .line 6895
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 9136
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 9137
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;
    .locals 5

    .line 2134
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    if-nez v0, :cond_0

    .line 2135
    new-instance p1, Landroid/view/InputApplicationHandle;

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 2138
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2139
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    iget-wide v3, v2, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, v2, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 2140
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2141
    :cond_1
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 2145
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    return-object p0
.end method

.method public bridge synthetic getInsetsSourceProviders()Landroid/util/SparseArray;
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getLastEmbeddedParentTfTokenBeforePip()Landroid/os/IBinder;
    .locals 0

    .line 1679
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

    return-object p0
.end method

.method public getLastParentBeforePip()Lcom/android/server/wm/Task;
    .locals 0

    .line 1675
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getLastWindowCreateTime()J
    .locals 3

    .line 9484
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9485
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 9486
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getCreateTime()J

    move-result-wide v0

    return-wide v0

    .line 9487
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    return-wide v0
.end method

.method public getLaunchedFromBubble()Z
    .locals 0

    .line 5061
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    return p0
.end method

.method public getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1745
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getLetterboxInsets()Landroid/graphics/Rect;
    .locals 0

    .line 1740
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycleItemForCurrentStateForResult()Landroid/app/servertransaction/ActivityLifecycleItem;
    .locals 3

    .line 4973
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-object v2

    .line 4981
    :cond_0
    new-instance v0, Landroid/app/servertransaction/StopActivityItem;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, p0}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 4978
    :cond_1
    new-instance v0, Landroid/app/servertransaction/PauseActivityItem;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, p0}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 4975
    :cond_2
    new-instance v0, Landroid/app/servertransaction/StartActivityItem;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, p0, v2}, Landroid/app/servertransaction/StartActivityItem;-><init>(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    return-object v0
.end method

.method public getLocusId()Landroid/content/LocusId;
    .locals 0

    .line 6944
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    return-object p0
.end method

.method public getMaxAspectRatio()F
    .locals 0

    .line 8460
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result p0

    return p0
.end method

.method public getMinAspectRatio()F
    .locals 0

    .line 8456
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result p0

    return p0
.end method

.method public getMinDimensions()Landroid/graphics/Point;
    .locals 2

    .line 9469
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9473
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget p0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getOptions()Landroid/app/ActivityOptions;
    .locals 0

    .line 5248
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getOrCreateServiceConnectionsHolder()Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .locals 1

    .line 4232
    monitor-enter p0

    .line 4233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v0, :cond_0

    .line 4234
    new-instance v0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 4236
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    monitor-exit p0

    return-object v0

    .line 4237
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOrganizedTask()Lcom/android/server/wm/Task;
    .locals 0

    .line 2928
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 0

    .line 2934
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2935
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrientation(I)I
    .locals 2

    .line 7513
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, -0x2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldIgnoreOrientationRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 7521
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    return p0

    .line 7527
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7528
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getOverrideOrientation()I
    .locals 2

    .line 7541
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result v0

    .line 7542
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isRestrictedFixedOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    .line 7545
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getOrientationPolicy()Lcom/android/server/wm/AppCompatOrientationPolicy;

    move-result-object p0

    .line 7546
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatOrientationPolicy;->overrideOrientationIfNeeded(I)I

    move-result p0

    return p0
.end method

.method public getParentAppBoundsOverride()Landroid/graphics/Rect;
    .locals 0

    .line 7799
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-static {p0}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public getPersistentSavedState()Landroid/os/PersistableBundle;
    .locals 0

    .line 1327
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    .line 9120
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 0

    .line 9108
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public getProtoFieldId()J
    .locals 2

    .line 0
    const-wide v0, 0x10b00000006L

    return-wide v0
.end method

.method public getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .locals 0

    .line 7324
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object p0
.end method

.method public getRequestedConfigurationOrientation(Z)I
    .locals 1

    .line 7340
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(ZI)I

    move-result p0

    return p0
.end method

.method public getRequestedConfigurationOrientation(ZI)I
    .locals 2

    .line 7355
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->hasInheritedOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7356
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 7357
    invoke-virtual {p2}, Lcom/android/server/wm/RootDisplayArea;->isOrientationDifferentFromDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7358
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7359
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedOrientation()I

    move-result p0

    .line 7358
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->reverseConfigurationOrientation(I)I

    move-result p0

    return p0

    .line 7361
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedOrientation()I

    move-result p0

    return p0

    .line 7364
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 7367
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelowForDefiningOrientation(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7369
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(Z)I

    move-result p0

    return p0

    .line 7372
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation(ZI)I

    move-result p0

    return p0
.end method

.method public getRequestedOrientation()I
    .locals 0

    .line 7558
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result p0

    return p0
.end method

.method public getRootTask()Lcom/android/server/wm/Task;
    .locals 0

    .line 2918
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootTaskId()I
    .locals 0

    .line 2922
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSavedState()Landroid/os/Bundle;
    .locals 0

    .line 1313
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getScreenResolvedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 7988
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7989
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7990
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7991
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p0

    .line 7992
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->replaceResolvedBoundsIfNeeded(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getSplashscreenTheme(Landroid/app/ActivityOptions;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7105
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getSplashScreenThemeResName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 7106
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7108
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 7109
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 7115
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7117
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 7118
    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 7119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 7120
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return v1
.end method

.method public final getStartingWindowType(ZZZZZZLandroid/window/TaskSnapshot;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p5, :cond_2

    .line 2410
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2414
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2415
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v3, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda28;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2417
    invoke-virtual {v2, p7}, Lcom/android/server/wm/ActivityRecord;->isSnapshotCompatible(Landroid/window/TaskSnapshot;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2419
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    .line 2420
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2421
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p0

    .line 2419
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result p0

    .line 2421
    invoke-virtual {p7}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1

    .line 2429
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    const/4 v3, 0x2

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_4

    if-nez p5, :cond_4

    :cond_3
    if-nez v2, :cond_4

    return v3

    :cond_4
    if-eqz p2, :cond_8

    if-eqz p4, :cond_6

    .line 2436
    invoke-virtual {p0, p7}, Lcom/android/server/wm/ActivityRecord;->isSnapshotCompatible(Landroid/window/TaskSnapshot;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    if-nez v2, :cond_6

    return v3

    :cond_6
    if-nez p6, :cond_8

    if-nez v2, :cond_8

    .line 2446
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object p2, p1, Lcom/android/server/wm/Task;->mTaskFragmentHostProcessName:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 2449
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 2451
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 2452
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v3

    :cond_8
    return v1
.end method

.method public getState()Lcom/android/server/wm/ActivityRecord$State;
    .locals 0

    .line 5781
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    return-object p0
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public getTask()Lcom/android/server/wm/Task;
    .locals 0

    .line 1455
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 0

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTurnScreenOnFlag()Z
    .locals 1

    .line 9168
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

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

.method public getUid()I
    .locals 0

    .line 9112
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;
    .locals 2

    .line 4840
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-nez v0, :cond_0

    .line 4841
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-direct {v0, v1, p0}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 4843
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    return-object p0
.end method

.method public final getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 6821
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v0, :cond_2

    .line 6822
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6827
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6829
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public handleAlreadyVisible()V
    .locals 2

    .line 6202
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 6203
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 6204
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6205
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 6206
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object p0

    .line 6205
    invoke-interface {v0, v1, p0}, Landroid/app/IApplicationThread;->scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public handleAppDied()V
    .locals 11

    .line 4265
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move v3, v2

    goto :goto_1

    .line 4270
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    const/4 v4, 0x3

    if-ge v0, v4, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 4276
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    .line 4277
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    goto :goto_0

    .line 4280
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-le v0, v1, :cond_6

    iget-wide v4, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 4281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    sub-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz v3, :cond_a

    .line 4290
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x826bc31d70d318aL

    const/16 v1, 0xcc

    invoke-static {v10, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4293
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4294
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": app died, no saved state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4295
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4296
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_9

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_2

    :cond_9
    const/4 v4, -0x1

    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v6, "proc died without state saved"

    .line 4295
    invoke-static {v0, v1, v4, v5, v6}, Lcom/android/server/wm/EventLogTags;->writeWmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4302
    :cond_a
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v0, :cond_b

    .line 4303
    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_APP:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keeping entry during removeHistory for activity "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    if-eqz v1, :cond_c

    .line 4307
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTimeoutOfKillProcessesOnProcessDied(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    :cond_c
    if-eqz v3, :cond_d

    .line 4311
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 4312
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_4

    :cond_d
    move-object v0, p0

    .line 4313
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 4315
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_5

    .line 4316
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4317
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    .line 4319
    :cond_f
    :goto_5
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    if-eqz v3, :cond_11

    .line 4321
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_10

    .line 4326
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4327
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4328
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    .line 4331
    :cond_10
    const-string v0, "appDied"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public handlesOrientationChangeFromDescendant(I)Z
    .locals 1

    .line 8065
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldIgnoreOrientationRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 8068
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant(I)Z

    move-result p0

    return p0
.end method

.method public hasActivity()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public hasCaller(Landroid/os/IBinder;)Z
    .locals 0

    .line 1807
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->hasCaller(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public hasDeskResources()Z
    .locals 4

    .line 8747
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mHasDeskResources:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 8749
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 8752
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mHasDeskResources:Ljava/lang/Boolean;

    .line 8754
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 8755
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 8754
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 8755
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8757
    invoke-virtual {v0}, Landroid/content/res/Resources;->getSizeAndUiModeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    .line 8758
    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isInDeskUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8759
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mHasDeskResources:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8764
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown during checking for desk resources "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8766
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mHasDeskResources:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasOverlayOverUntrustedModeEmbedded()Z
    .locals 3

    .line 5944
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbeddedInUntrustedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5952
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v2, p0, v1, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public hasProcess()Z
    .locals 0

    .line 2178
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSavedState()Z
    .locals 0

    .line 1322
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    return p0
.end method

.method public hasSizeCompatBounds()Z
    .locals 0

    .line 7611
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result p0

    return p0
.end method

.method public hasStartingWindow()Z
    .locals 4

    .line 4457
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4460
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 4461
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hasWallpaperBackgroundForLetterbox()Z
    .locals 0

    .line 1726
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    move-result p0

    return p0
.end method

.method public inSizeCompatMode()Z
    .locals 0

    .line 7592
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->inSizeCompatMode()Z

    move-result p0

    return p0
.end method

.method public inputDispatchingTimedOut(Lcom/android/internal/os/TimeoutRecord;I)Z
    .locals 13

    const-wide/16 v1, 0x40

    .line 6786
    :try_start_0
    const-string v0, "ActivityRecord#inputDispatchingTimedOut()"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6791
    iget-object v0, p1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnGlobalLockStarted()V

    .line 6792
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6793
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnGlobalLockEnded()V

    .line 6794
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6795
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6796
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6797
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v5

    if-eq v5, p2, :cond_0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    :cond_0
    move v5, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    move v5, v7

    .line 6798
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v5, :cond_2

    .line 6801
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v6, v4, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v11, 0x0

    move-object v12, p1

    invoke-virtual/range {v5 .. v12}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLcom/android/internal/os/TimeoutRecord;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6813
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    move-object v12, p1

    .line 6808
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p2, v7, v12}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLcom/android/internal/os/TimeoutRecord;)J

    move-result-wide p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-gtz p0, :cond_3

    goto :goto_1

    :cond_3
    move v6, v7

    .line 6813
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v6

    .line 6798
    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6813
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6814
    throw p0
.end method

.method public final isAlwaysFocusable()Z
    .locals 1

    .line 3352
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAlwaysOnTop()Z
    .locals 1

    .line 9236
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

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

.method public final isAppActivityEmbeddingSplitsEnabled()Z
    .locals 5

    .line 2078
    invoke-static {}, Landroid/view/WindowManager;->hasWindowExtensionsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2082
    :cond_0
    sget-boolean v0, Landroid/view/WindowManager;->ACTIVITY_EMBEDDING_GUARD_WITH_ANDROID_15:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2085
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    const-wide/32 v3, 0x12475a62

    .line 2082
    invoke-static {v3, v4, v0, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 2090
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED"

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v4, 0x0

    .line 2091
    invoke-virtual {v0, v2, v3, v4, p0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 2093
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public isCallerShareIdentityEnabled(Landroid/os/IBinder;)Z
    .locals 0

    .line 1819
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->isShareIdentityEnabled(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public isConfigurationDispatchPaused()Z
    .locals 0

    .line 8449
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDestroyable()Z
    .locals 2

    .line 6899
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6903
    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6904
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p0, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 6909
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public isEmbedded()Z
    .locals 0

    .line 2940
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2941
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEmbeddedInHostContainer()Z
    .locals 0

    .line 2979
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2980
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedWithBoundsOverride()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEmbeddedInUntrustedMode()Z
    .locals 1

    .line 1619
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1625
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 4432
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4433
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    if-eq p1, v1, :cond_2

    return v0

    :cond_2
    if-eq p0, v1, :cond_3

    if-ne p1, v1, :cond_3

    return p2

    :cond_3
    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .line 3102
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isFocusedActivityOnDisplay()Z
    .locals 2

    .line 9205
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1753
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final isIconStylePreferred(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 7044
    :cond_0
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    if-ne p1, v1, :cond_1

    .line 7045
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mWindowStyle:Lcom/android/server/wm/ActivityRecord$WindowStyle;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v2, p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getWindowStyle(Ljava/lang/String;II)Lcom/android/server/wm/ActivityRecord$WindowStyle;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 7047
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mSplashScreenBehavior:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method public isImmersiveMode(Landroid/graphics/Rect;)Z
    .locals 2

    .line 7975
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mInsetsDecoupledConfiguration:Z

    if-eqz v0, :cond_0

    return v1

    .line 7979
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    .line 7980
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    .line 7982
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    .line 7980
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    .line 7984
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {p1, p0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInHistory()Z
    .locals 0

    .line 3086
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    return p0
.end method

.method public isInRootTaskLocked()Z
    .locals 1

    .line 3090
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3091
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInTransition()Z
    .locals 0

    .line 8006
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    move-result p0

    return p0
.end method

.method public isInterestingToUserLocked()Z
    .locals 1

    .line 6847
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .line 4694
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result p0

    return p0

    .line 4695
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method public isLastWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    .line 4469
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public isLaunchSourceType(I)Z
    .locals 0

    .line 2217
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNoDisplay()Z
    .locals 0

    .line 3020
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    return p0
.end method

.method public isNoHistory()Z
    .locals 2

    .line 8987
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p0, p0, 0x80

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

.method public isPersistable()Z
    .locals 2

    .line 3095
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_2

    .line 3097
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isProcessRunning()Z
    .locals 2

    .line 8948
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_0

    .line 8950
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    :cond_0
    if-eqz v0, :cond_1

    .line 8952
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isRegisteredForScreenCaptureCallback()Z
    .locals 0

    .line 6988
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRelaunching()Z
    .locals 0

    .line 4178
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isReportedDrawn()Z
    .locals 0

    .line 6695
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    return p0
.end method

.method public isResizeable()Z
    .locals 1

    .line 3168
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 3169
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 3170
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3171
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3173
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

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

.method public isResolverOrChildActivity()Z
    .locals 3

    .line 1795
    const-string v0, "android"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1799
    :cond_0
    :try_start_0
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    const-class v2, Ljava/lang/Object;

    .line 1800
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 1799
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public isResolverOrDelegateActivity()Z
    .locals 1

    .line 1790
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1791
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getSystemChooserActivity()Landroid/content/ComponentName;

    move-result-object p0

    .line 1790
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final isRestrictedFixedOrientation(I)Z
    .locals 1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    .line 3116
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3117
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRootOfTask()Z
    .locals 3

    .line 9218
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 9221
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public isSleeping()Z
    .locals 1

    .line 4997
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result p0

    return p0
.end method

.method public isSnapshotCompatible(Landroid/window/TaskSnapshot;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2472
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isSnapshotComponentCompatible(Landroid/window/TaskSnapshot;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isSnapshotOrientationCompatible(Landroid/window/TaskSnapshot;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isSnapshotComponentCompatible(Landroid/window/TaskSnapshot;)Z
    .locals 0

    .line 2479
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSnapshotOrientationCompatible(Landroid/window/TaskSnapshot;)Z
    .locals 5

    .line 2486
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 2487
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2493
    :goto_0
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_1

    return v3

    .line 2496
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 2497
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2498
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 2499
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object p1

    sub-int/2addr v1, v0

    .line 2500
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v4, v2

    move v2, p0

    move p0, v4

    .line 2507
    :cond_2
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, v2

    .line 2508
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    sub-float/2addr v0, p1

    .line 2507
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method public final isStartingOrientationCompatible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 4504
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4505
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4507
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public isStartingWindowDisplayed()Z
    .locals 1

    .line 2658
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_1

    .line 2659
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2660
    iget-boolean p0, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isState(Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 0

    .line 5788
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 0

    .line 5795
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, p0, :cond_1

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 0

    .line 5802
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, p0, :cond_1

    if-eq p2, p0, :cond_1

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 0

    .line 5809
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, p0, :cond_1

    if-eq p2, p0, :cond_1

    if-eq p3, p0, :cond_1

    if-ne p4, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 0

    .line 5816
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, p0, :cond_1

    if-eq p2, p0, :cond_1

    if-eq p3, p0, :cond_1

    if-eq p4, p0, :cond_1

    if-ne p5, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSurfaceShowing()Z
    .locals 0

    .line 7303
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    return p0
.end method

.method public isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z
    .locals 3

    .line 9405
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_0

    .line 9406
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topStartingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9407
    iget v0, v0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 9408
    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 9413
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BackNavigationController;->isStartingSurfaceShown(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 9416
    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    .line 9417
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 9418
    invoke-virtual {p1, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->isVisibilityUnknown(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    .line 9421
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-nez p1, :cond_8

    .line 9423
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-ne p1, p0, :cond_7

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9425
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result p1

    if-nez p1, :cond_7

    .line 9430
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    .line 9431
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance p1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_6

    .line 9435
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    .line 9438
    :cond_5
    const-string p0, "ActivityTaskManager"

    const-string p1, "Assuming sync-finish while pausing due to visible target"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1

    .line 9443
    :cond_8
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez p1, :cond_9

    return v0

    .line 9447
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result p1

    if-nez p1, :cond_a

    return v0

    .line 9449
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_3
    if-ltz p1, :cond_c

    .line 9450
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_b

    return v1

    :cond_b
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_c
    return v0
.end method

.method public isTaskOverlay()Z
    .locals 0

    .line 9231
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    return p0
.end method

.method public isTopRunningActivity()Z
    .locals 1

    .line 9197
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTransferringSplashScreen()Z
    .locals 2

    .line 2571
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public isTransitionForward()Z
    .locals 1

    .line 7260
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/StartingData;->mIsTransitionForward:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7261
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isUid(I)Z
    .locals 0

    .line 9116
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUniversalResizeable()Z
    .locals 5

    .line 3125
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3126
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3127
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/wm/ActivityRecord;->canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;Lcom/android/server/wm/WindowManagerService;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 3131
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->allowRestrictedResizability()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 3135
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object p0

    .line 3136
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->userPreferenceCompatibleWithNonResizability()Z

    move-result p0

    return p0
.end method

.method public isUntrustedEmbeddingStateSharingAllowed()Z
    .locals 0

    .line 2952
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mAllowUntrustedEmbeddingStateSharing:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 5338
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    return p0
.end method

.method public final synthetic lambda$addStartingWindow$3()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 2313
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2314
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    .line 2313
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2316
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$finishActivityResults$5(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 11

    .line 3496
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 3497
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    iget-boolean v10, p0, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 3500
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$getCompatScale$15()D
    .locals 2

    .line 7631
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->access$001(Lcom/android/server/wm/ActivityRecord;)F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public final synthetic lambda$hasOverlayOverUntrustedModeEmbedded$10(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    .line 5953
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 5954
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 5953
    invoke-static {p1, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$isFocusedActivityOnDisplay$19(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 0

    .line 9206
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$makeFinishingLocked$7(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 4071
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0([F[F)V
    .locals 3

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    if-nez v1, :cond_0

    .line 850
    new-instance v1, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;-><init>(Lcom/android/server/wm/ActivityRecord-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 853
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->setSaturation([F[F)V

    .line 854
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateColorTransform()V

    .line 855
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$new$1([F[F)V
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/wm/ActivityRecord;[F[F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$new$2()Landroid/content/Context;
    .locals 5

    const/4 v0, 0x0

    .line 2066
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2068
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x4

    .line 2066
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 2069
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->setTheme(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public final synthetic lambda$restartProcessIfVisible$17()V
    .locals 3

    .line 8901
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 8902
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 8903
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 8906
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 8907
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8908
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v2, "resetConfig"

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8904
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8907
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$restartProcessIfVisible$18(Lcom/android/server/wm/Transition;Z)V
    .locals 2

    .line 8917
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 8923
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 8924
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 8925
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 8927
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleStopForRestartProcess()V

    return-void

    .line 8918
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    return-void
.end method

.method public final synthetic lambda$showStartingWindow$13(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    .line 7004
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$showStartingWindow$14(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 7169
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$transferStartingWindowFromHiddenAboveTokenIfNeeded$8(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4673
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_2

    .line 4674
    iget-object v2, v1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 4675
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v1, v1, Lcom/android/server/wm/SnapshotStartingData;

    if-eqz v1, :cond_2

    .line 4677
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 4678
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4679
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4681
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4682
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 4683
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 4685
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    return v0

    .line 4689
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final launchedFromSystemSurface()Z
    .locals 2

    .line 2211
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public layoutLetterboxIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1722
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->start(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final logAppCompatState()V
    .locals 1

    .line 7825
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatState(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public logStartActivity(ILcom/android/server/wm/Task;)V
    .locals 9

    .line 4830
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4831
    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4833
    :goto_1
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4834
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4835
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4836
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    .line 4833
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 12

    .line 6062
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6063
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    .line 6064
    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resume visible activity, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6066
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    return p0

    .line 6068
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    const-string v2, "ActivityTaskManager"

    const-string v0, "makeActiveIfNeeded"

    if-eqz p1, :cond_3

    .line 6069
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p1, :cond_2

    .line 6070
    sget-object p1, Lcom/android/server/wm/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pause visible activity, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6074
    :cond_2
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6075
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v4, "userLeaving=false"

    const-string v5, "make-active"

    invoke-static {p1, v0, v3, v4, v5}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6077
    new-instance v6, Landroid/app/servertransaction/PauseActivityItem;

    iget-object v7, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-boolean v8, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;ZZZZ)V

    .line 6080
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    .line 6082
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    invoke-virtual {p1, p0, v1}, Lcom/mediatek/server/am/AmsExt;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 6086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending pause: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6088
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldStartActivity()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6089
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p1, :cond_4

    .line 6090
    sget-object p1, Lcom/android/server/wm/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start visible activity, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6092
    :cond_4
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6094
    new-instance p1, Landroid/app/servertransaction/StartActivityItem;

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->takeSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v3

    invoke-direct {p1, v0, v3}, Landroid/app/servertransaction/StartActivityItem;-><init>(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 6096
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 6099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending start: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6103
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return v1
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 0

    .line 387
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public makeFinishingLocked()V
    .locals 10

    .line 4061
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4064
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 4067
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-nez v2, :cond_2

    .line 4068
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4069
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4074
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    int-to-long v7, v7

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v3, v4, v6, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x65dcffae4065c998L    # -8.943649126631814E-183

    const/16 v5, 0x110

    invoke-static {v9, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4078
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    const/4 v1, 0x0

    .line 4079
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 4083
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4085
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4086
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4087
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_3

    .line 4088
    iput-boolean v0, v1, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    .line 4090
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    .line 4092
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v0, :cond_5

    .line 4093
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 4095
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_6

    .line 4096
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public makeInvisible()V
    .locals 7

    .line 6014
    const-string v0, "makeInvisible"

    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v1, :cond_0

    .line 6015
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already invisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6020
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_1

    .line 6021
    sget-object v1, Lcom/android/server/wm/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making invisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    .line 6024
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6028
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 6029
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6031
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 6033
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearDeferHidingClient()V

    :goto_0
    const/4 v3, 0x0

    .line 6035
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 6037
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v1, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    goto :goto_2

    .line 6043
    :cond_3
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 6052
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown making hidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 3

    .line 5981
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v0, :cond_1

    :cond_0
    if-ne p0, p1, :cond_3

    .line 5982
    :cond_1
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/server/wm/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not making visible, r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " starting="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 5988
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making visible and scheduling visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5990
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 5992
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_5

    .line 5993
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 5994
    iget-object v0, v0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 5996
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 5997
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->postPendingUiCleanMsg(Z)V

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 5999
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 6000
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_1

    .line 6002
    :cond_6
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 6005
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 6008
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception thrown making visible: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6010
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    return-void
.end method

.method public matchParentBounds()Z
    .locals 3

    .line 7616
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7617
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 7623
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7624
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public moveFocusableActivityToTop(Ljava/lang/String;)Z
    .locals 7

    .line 3387
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3388
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x7d3ea8930f1bc258L    # -2.12129502900972E-295

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 3393
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveFocusableActivityToTop: invalid root task: activity="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " task="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3404
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 3405
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3406
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_7

    .line 3408
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3409
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-ne v3, v5, :cond_7

    .line 3410
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v5, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda24;

    invoke-direct {v5}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/DisplayArea;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3413
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v5, v3, :cond_7

    if-ne v2, p0, :cond_4

    .line 3415
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x1dcf887f97f389aL

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1

    .line 3418
    :cond_4
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0xeb0fb648a69c7d2L    # -6.311903457092669E237

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3420
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 3421
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v1, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3424
    :cond_6
    :goto_1
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    .line 3428
    :cond_7
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0xa250eb5f02138a4L

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v5, v6, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3430
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 3432
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_9

    .line 3433
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_9
    return v4
.end method

.method public final notifyActivityRefresherAboutConfigurationChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    .line 8662
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8666
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraPolicy;->onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final notifyActivityStartedToContentCaptureService()V
    .locals 6

    .line 5765
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 5766
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v0, :cond_1

    .line 5770
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    new-instance v3, Landroid/app/assist/ActivityId;

    .line 5772
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    invoke-direct {v3, v4, v5}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    const/16 v4, 0x2710

    .line 5770
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->notifyActivityEvent(ILandroid/content/ComponentName;ILandroid/app/assist/ActivityId;)V

    .line 5775
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->sendActivityStartAssistData(ILandroid/os/IBinder;Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public notifyAppResumed()V
    .locals 7

    .line 5859
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to notify resumed of non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5863
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 5864
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0xcd9f3665a413b47L

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    .line 5866
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 5868
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStartController;->isInExecution()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5869
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    :cond_2
    if-nez v0, :cond_3

    .line 5873
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces(Z)V

    :cond_3
    return-void
.end method

.method public notifyUnknownVisibilityLaunchedForKeyguardTransition()V
    .locals 1

    .line 5885
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5889
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyLaunched(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public occludesParent()Z
    .locals 1

    const/4 v0, 0x0

    .line 3034
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    return p0
.end method

.method public occludesParent(Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3039
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_0

    return v0

    .line 3042
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 387
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 387
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onCancelFixedRotationTransform(I)V
    .locals 1

    .line 7406
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 7410
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p1

    if-eqz p1, :cond_1

    .line 7411
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7412
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 7418
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p1}, Lcom/android/server/wm/PinnedTaskController;->onCancelFixedRotationTransform()V

    .line 7421
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    .line 7422
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7424
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetSurfaceControlTransforms()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 8281
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8282
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8284
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 8285
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    goto :goto_0

    .line 8286
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    .line 8287
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 8293
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8294
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 8297
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    .line 8298
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8302
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8303
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    if-eq v3, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    .line 8304
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v4

    if-eqz v4, :cond_4

    .line 8306
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_4

    .line 8309
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_4

    iget-object v5, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8310
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 8311
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 8312
    iget-object p1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8313
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 8312
    invoke-virtual {p1, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 8314
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_4
    if-eqz v3, :cond_5

    if-nez v4, :cond_5

    .line 8316
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8317
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 8319
    iget-object p1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, v2}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 8320
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .line 8325
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    .line 8326
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8327
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    if-eqz v0, :cond_8

    .line 8328
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    .line 8335
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->pauseConfigurationDispatch()V

    .line 8336
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8337
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_6

    .line 8338
    invoke-virtual {v3, p0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    if-eq p1, v2, :cond_6

    .line 8340
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 8341
    invoke-virtual {v3, p0, p1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 8345
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 8346
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_4

    .line 8345
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8346
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    .line 8348
    :cond_7
    throw p1

    .line 8350
    :cond_8
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_9
    :goto_4
    if-eqz v4, :cond_b

    .line 8353
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p1

    if-eq v4, p1, :cond_b

    .line 8354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change activity type once set: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " activityType="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8355
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", was "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8356
    invoke-static {v4}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8357
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v2, :cond_a

    .line 8360
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8358
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_5
    if-nez v0, :cond_c

    .line 8366
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_c

    .line 8367
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 8368
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    :cond_c
    if-nez v3, :cond_d

    goto :goto_7

    .line 8374
    :cond_d
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p1, :cond_e

    .line 8376
    invoke-virtual {v3, p0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 8377
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_f

    .line 8378
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result p1

    if-nez p1, :cond_11

    .line 8384
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getCurrentOverrideConfigurationChanges()I

    move-result p1

    .line 8387
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x20000480

    and-int v1, p1, v0

    if-eq v1, v0, :cond_10

    goto :goto_6

    :cond_10
    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_11

    .line 8394
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    :cond_11
    :goto_7
    return-void
.end method

.method public onCopySplashScreenFinish(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .locals 4

    .line 2590
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTransferSplashScreenTimeout()V

    if-eqz p1, :cond_1

    .line 2591
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2595
    :cond_0
    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->applyStartingWindowAnimation(Lcom/android/server/wm/WindowState;)Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 2600
    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->clearIfNeeded()V

    .line 2602
    :cond_2
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2603
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    return-void

    :cond_3
    const/4 v2, 0x2

    .line 2606
    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2607
    new-instance v2, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    iget-object v3, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v2, v3, p1, v0}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;-><init>(Landroid/os/IBinder;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

    .line 2611
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2612
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 2611
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2615
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCopySplashScreenComplete fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 2619
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleTransferSplashScreenTimeout()V

    goto :goto_3

    .line 2621
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 2622
    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->clearIfNeeded()V

    .line 2623
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    :goto_3
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 1696
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1697
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1698
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1702
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1707
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    .line 1708
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayPolicy;->removeRelaunchingApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 1710
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p0, :cond_2

    const/4 v1, 0x0

    .line 1711
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1712
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 1713
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1717
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->onMovedToDisplay(I)V

    .line 1718
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->onMovedToDisplay()V

    return-void
.end method

.method public onFirstWindowDrawn(Lcom/android/server/wm/WindowState;)V
    .locals 5

    const/4 v0, 0x1

    .line 6524
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 6526
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    .line 6528
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/BackNavigationController;->removePredictiveSurfaceIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 6529
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    .line 6530
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x60a9b6713b00c96dL    # -1.014566262701883E-157

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6535
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 6541
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 6543
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    goto :goto_1

    .line 6544
    :cond_3
    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_4

    .line 6547
    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6549
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 6552
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 5

    .line 1491
    check-cast p2, Lcom/android/server/wm/TaskFragment;

    .line 1492
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1493
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 1494
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 1495
    :goto_1
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1497
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->shouldStartChangeTransition(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1498
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 1501
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1503
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    .line 1505
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_3
    if-eqz v2, :cond_4

    .line 1508
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_4
    const/4 v1, 0x1

    if-nez p2, :cond_6

    if-eqz p1, :cond_6

    .line 1514
    iget-object v3, v2, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_5

    move v4, v1

    :cond_5
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    .line 1518
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()V

    .line 1522
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 1526
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1527
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-ne v3, v4, :cond_7

    if-eqz v3, :cond_7

    .line 1529
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1530
    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;)V

    .line 1532
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearLastParentBeforePip()V

    .line 1535
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateColorTransform()V

    if-eqz p2, :cond_8

    .line 1538
    invoke-virtual {p2, p0}, Lcom/android/server/wm/TaskFragment;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    .line 1540
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    :cond_8
    if-eqz p1, :cond_a

    .line 1544
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1545
    const-string p2, "onParentChanged"

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1547
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TransparentPolicy;->start()V

    .line 1548
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isRestrictedFixedOrientation(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1549
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring manifest-declared fixed orientation "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1550
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " since target sdk 36"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1549
    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v2, :cond_b

    .line 1555
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-ne p1, p0, :cond_b

    .line 1557
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz p1, :cond_b

    .line 1558
    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 1563
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateUntrustedEmbeddingInputProtection()V

    return-void
.end method

.method public onRemovedFromDisplay()V
    .locals 9

    .line 4354
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4357
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    .line 4359
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x1991eb36f1b7cb81L    # -2.5563623042206153E185

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4361
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    .line 4362
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/SnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 4363
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4365
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 4366
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4368
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->stop()V

    .line 4369
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransparentPolicy;->stop()V

    const/16 v1, 0x10

    const/4 v3, 0x4

    .line 4373
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 4374
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v0

    :goto_1
    if-nez v1, :cond_4

    .line 4377
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    goto :goto_2

    .line 4379
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 4383
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 4385
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {p0, v6, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v4, v8, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x4cff131c375e3d79L    # 7.989605786594591E62

    const/16 v8, 0xcc

    invoke-static {v7, v5, v6, v8, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4390
    :cond_5
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v4, v7, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v7, -0x85940474870ce4bL

    const/16 v5, 0xc

    invoke-static {v6, v7, v8, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4393
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_7

    .line 4394
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_7
    if-eqz v1, :cond_9

    .line 4397
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 4399
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x3045197f7e2035ebL    # 3.644394323113405E-76

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v7, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4401
    :cond_8
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    goto :goto_3

    .line 4405
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 4406
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->removeIfPossible()V

    .line 4409
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 4410
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, p0, :cond_b

    .line 4411
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x6448ad8c59f9cb69L    # -3.683407431929128E-175

    invoke-static {v8, v6, v7, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_a
    const/4 v3, 0x0

    .line 4414
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 4415
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_b
    if-nez v1, :cond_c

    .line 4419
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 4421
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    .line 4422
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    return-void
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 387
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onSplashScreenAttachComplete()V
    .locals 2

    .line 2628
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTransferSplashScreenTimeout()V

    .line 2630
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2631
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 2632
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_0
    const/4 v0, 0x3

    .line 2635
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2636
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    return-void
.end method

.method public onStartingWindowDrawn()V
    .locals 3

    .line 6570
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6571
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    .line 6572
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->setTaskHasBeenVisible()V

    .line 6574
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6577
    :cond_1
    iput-boolean v1, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    .line 6582
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6583
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6586
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-boolean v1, v0, Lcom/android/server/wm/StartingData;->mIsTransitionForward:Z

    .line 6588
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq p0, v0, :cond_2

    .line 6589
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    .line 6591
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSyncTransactionCommitted(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 2753
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onSyncTransactionCommitted(Landroid/view/SurfaceControl$Transaction;)V

    .line 2754
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2758
    :cond_0
    iget v0, p1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2759
    iget-boolean p1, p1, Lcom/android/server/wm/StartingData;->mPrepareRemoveAnimation:Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    return-void

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    .line 2761
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onWindowsDrawn()V
    .locals 10

    .line 6597
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6598
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyWindowsDrawn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 6600
    iget v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 6602
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getLaunchState()I

    move-result v1

    :cond_2
    move v9, v1

    if-nez v2, :cond_4

    .line 6606
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p0, v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, p0

    goto :goto_3

    .line 6607
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, 0x0

    int-to-long v7, v3

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 6610
    :goto_3
    iget-object p0, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_5

    .line 6611
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->setTaskHasBeenVisible()V

    :cond_5
    const/4 p0, 0x0

    .line 6615
    iput-object p0, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 6616
    iget-object p0, v6, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz p0, :cond_6

    const-string v0, ".FallbackHome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "service.bootanim.exit"

    .line 6617
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 6618
    iget-object p0, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopBootAnimation()V

    :cond_6
    return-void
.end method

.method public onWindowsGone()V
    .locals 3

    .line 6642
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting gone in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6643
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_SWITCH:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowsGone(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 6644
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    return-void
.end method

.method public onWindowsVisible()V
    .locals 3

    .line 6624
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting visible in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6625
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 6626
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ActivityRecord;->TAG_SWITCH:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowsVisibleLocked(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6627
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 6628
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 6629
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    .line 6630
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 6636
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    :cond_2
    return-void
.end method

.method public final onlyDeskInUiModeChanged(Landroid/content/res/Configuration;)Z
    .locals 4

    .line 8730
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 8732
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInDeskUiMode(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInDeskUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 8736
    :goto_0
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, -0x10

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, -0x10

    if-eq p0, p1, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z
    .locals 1

    .line 8720
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    .line 8721
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result p0

    .line 8722
    invoke-static {p2}, Lcom/android/server/wm/AppCompatUtils;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final orientationRespectedWithInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 11

    .line 8027
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 8028
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 8031
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-nez v0, :cond_1

    return v1

    .line 8036
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 8041
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x2

    if-lt v2, v3, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 8044
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8045
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    :goto_1
    move-object v9, v3

    goto :goto_2

    .line 8046
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    goto :goto_1

    .line 8047
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 8048
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v10, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    move-object v8, p1

    move-object v7, p2

    move-object v6, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/TaskFragment;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;Z)V

    .line 8051
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-lt p0, p1, :cond_5

    move v4, v1

    :cond_5
    if-eq v2, v4, :cond_7

    if-ne v4, v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_3
    return v1
.end method

.method public overrideCustomTransition(ZIII)V
    .locals 1

    .line 9564
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->getCustomAnimation(Z)Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9566
    new-instance v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;-><init>()V

    if-eqz p1, :cond_0

    .line 9568
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    goto :goto_0

    .line 9570
    :cond_0
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 9574
    :cond_1
    :goto_0
    iput p2, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    .line 9575
    iput p3, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    .line 9576
    iput p4, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    return-void
.end method

.method public pauseConfigurationDispatch()V
    .locals 4

    .line 8418
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    if-ne v0, v1, :cond_0

    .line 8420
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v1, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v2, 0x244067a8f0f9318aL    # 4.514047213319695E-134

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public pauseKeyDispatchingLocked()V
    .locals 1

    .line 5280
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5281
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 5283
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5284
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_0
    return-void
.end method

.method public postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V
    .locals 2

    .line 7200
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    .line 7203
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz p1, :cond_0

    .line 7205
    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->remove(ZZ)V

    :cond_0
    const/4 p1, 0x0

    .line 7207
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 7208
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 7209
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 7211
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    if-eqz p1, :cond_2

    .line 7215
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method public final prepareActivityHideTransitionAnimation()V
    .locals 2

    .line 3737
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    .line 3738
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3739
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    return-void
.end method

.method public final prepareActivityHideTransitionAnimationIfOvarlay()V
    .locals 1

    .line 3731
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v0, :cond_0

    .line 3732
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimation()V

    :cond_0
    return-void
.end method

.method public prepareSurfaces()V
    .locals 4

    .line 7277
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDecorSurfaceBoosted()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 7278
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    const/16 v3, 0x101

    .line 7282
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    .line 7285
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_4

    .line 7286
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    if-nez v0, :cond_4

    .line 7287
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    .line 7288
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    if-eqz v0, :cond_5

    .line 7289
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 7292
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecordInputSink;->applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V

    .line 7295
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    .line 7296
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    return-void
.end method

.method public providesMaxBounds()Z
    .locals 3

    .line 8225
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 8229
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->sandboxDisplayApis()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 8233
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v1, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 8237
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v1, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    .line 8244
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public providesOrientation()Z
    .locals 1

    .line 3011
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

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

.method public recomputeConfiguration()V
    .locals 2

    .line 7999
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda30;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda30;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransparentPolicy;->applyOnOpaqueActivityBelow(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8001
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public registerCaptureObserver(Landroid/app/IScreenCaptureObserver;)V
    .locals 2

    .line 6971
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6972
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    .line 6973
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6975
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6976
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 1

    .line 7312
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-eqz p1, :cond_0

    .line 7314
    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p1, v0}, Landroid/view/RemoteAnimationDefinition;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    :cond_0
    return-void
.end method

.method public relaunchActivityLocked(ZI)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v8, p1

    .line 8790
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_2

    .line 8796
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8797
    invoke-interface {v2}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8798
    invoke-interface {v2}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    .line 8800
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v10

    :goto_0
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    .line 8803
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v11, 0x0

    if-eqz v2, :cond_3

    .line 8804
    iget-object v3, v2, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-ne v3, v1, :cond_3

    .line 8805
    invoke-virtual {v2, v11}, Lcom/android/server/wm/Task;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 8807
    :cond_3
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityRecord;->shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v12, v10

    goto :goto_2

    :cond_5
    :goto_1
    move v12, v0

    :goto_2
    if-eqz v12, :cond_6

    .line 8811
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 8812
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object v4, v2

    move-object v5, v3

    goto :goto_3

    :cond_6
    move-object v4, v11

    move-object v5, v4

    .line 8814
    :goto_3
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/wm/ActivityRecord;->TAG_SWITCH:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Relaunching: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with results="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " newIntents="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " andResume="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " preserveWindow="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v12, :cond_8

    .line 8819
    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 8820
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 8819
    invoke-static {v2, v3, v6, v7, v9}, Lcom/android/server/wm/EventLogTags;->writeWmRelaunchResumeActivity(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 8822
    :cond_8
    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 8823
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 8822
    invoke-static {v2, v3, v6, v7, v9}, Lcom/android/server/wm/EventLogTags;->writeWmRelaunchActivity(IIILjava/lang/String;Ljava/lang/String;)V

    .line 8826
    :goto_4
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v13, 0x2

    aget-boolean v2, v2, v13

    if-eqz v2, :cond_a

    if-eqz v12, :cond_9

    const-string v2, "RESUMED"

    goto :goto_5

    :cond_9
    const-string v2, "PAUSED"

    :goto_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v14, 0x4902470505436aeL

    filled-new-array {v2, v3, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v14, v15, v10, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8828
    :cond_a
    new-instance v2, Landroid/app/servertransaction/ActivityRelaunchItem;

    iget-object v3, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    new-instance v7, Landroid/util/MergedConfiguration;

    .line 8830
    invoke-direct {v1}, Lcom/android/server/wm/ActivityRecord;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 8831
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v7, v6, v9}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 8832
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    move-result-object v9

    move/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Landroid/app/servertransaction/ActivityRelaunchItem;-><init>(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;)V

    if-eqz v12, :cond_b

    .line 8835
    new-instance v3, Landroid/app/servertransaction/ResumeActivityItem;

    iget-object v4, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isTransitionForward()Z

    move-result v5

    .line 8836
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->shouldSendCompatFakeFocus()Z

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;ZZ)V

    goto :goto_6

    .line 8838
    :cond_b
    new-instance v3, Landroid/app/servertransaction/PauseActivityItem;

    iget-object v4, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v3, v4}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;)V

    .line 8842
    :goto_6
    :try_start_0
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 8843
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    new-array v6, v13, [Landroid/app/servertransaction/ClientTransactionItem;

    aput-object v2, v6, v10

    aput-object v3, v6, v0

    .line 8842
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItems(Landroid/app/IApplicationThread;[Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 8846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to relaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    :goto_7
    if-eqz v0, :cond_c

    .line 8850
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->startRelaunching()V

    :cond_c
    if-eqz v12, :cond_e

    .line 8857
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x3778a4d26bfdcda1L    # -2.54326106948074E41

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v10, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8858
    :cond_d
    iput-object v11, v1, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 8859
    iput-object v11, v1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 8860
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 8862
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    invoke-virtual {v0, v1}, Lcom/mediatek/server/am/AmsExt;->onAfterActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_8

    .line 8865
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    .line 8866
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v2, "relaunchActivityLocked"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 8870
    :goto_8
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 387
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeChild(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowState;)V
    .locals 1

    .line 4480
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4484
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 4485
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    .line 4486
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final removeDestroyTimeout()V
    .locals 1

    .line 6344
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromHistory(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4030
    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/ActivityRecord;->finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 4032
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4034
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x7aa1b7cc22363407L    # 5.145879686594025E282

    filled-new-array {v0, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4, v5, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4037
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 4038
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 4039
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x73da80cc3a8b344dL    # 1.1859690636769237E250

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4041
    :cond_1
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v0, "removeFromHistory"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 4042
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/server/wm/ActivityRecord;->TAG_APP:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing app during remove for activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 4045
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4046
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->removeAppToken(Landroid/os/IBinder;)V

    .line 4048
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpActivityServices()V

    .line 4049
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeUriPermissionsLocked()V

    return-void
.end method

.method public removeImmediately()V
    .locals 2

    .line 4337
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v1, :cond_0

    .line 4338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force remove immediately "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    const-string v0, "removeImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 4344
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyed(Ljava/lang/String;)V

    goto :goto_0

    .line 4346
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onRemovedFromDisplay()V

    .line 4348
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecordInputSink;->releaseSurfaceControl()V

    .line 4350
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    return-void
.end method

.method public final removePauseTimeout()V
    .locals 1

    .line 6340
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .locals 3

    .line 4859
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 4860
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 4861
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityResult;

    .line 4862
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mFrom:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_0

    goto :goto_1

    .line 4863
    :cond_0
    iget-object v2, v1, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_1

    if-eqz p2, :cond_2

    goto :goto_1

    .line 4866
    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 4868
    :cond_2
    iget v1, v1, Landroid/app/ResultInfo;->mRequestCode:I

    if-eq v1, p3, :cond_3

    goto :goto_1

    .line 4870
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public removeStartingWindow()V
    .locals 4

    .line 2729
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v0

    .line 2731
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isEligibleForLetterboxEducation()Z

    move-result v1

    .line 2733
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 2738
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->transferSplashScreenIfNeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 2741
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    .line 2743
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2745
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isEligibleForLetterboxEducation()Z

    move-result v0

    if-eq v1, v0, :cond_2

    .line 2747
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeStartingWindowAnimation(Z)V
    .locals 9

    const/4 v0, 0x0

    .line 2766
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2767
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_0

    .line 2768
    iput-object v2, v3, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    .line 2770
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    if-eqz v1, :cond_9

    .line 2774
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x1b0bb40900a0c6d7L    # -2.056192109559436E178

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v3, v4, v0, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2775
    :cond_1
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2778
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    return-void

    :cond_2
    if-eqz v1, :cond_8

    .line 2787
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransactionCommitCallbackDepth()I

    move-result v1

    if-gtz v1, :cond_7

    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 2792
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1}, Lcom/android/server/wm/StartingData;->needRevealAnimation()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 2793
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_0

    :cond_4
    move p1, v0

    .line 2794
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v1}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result v1

    .line 2795
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v3, v5, v8, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v5, 0x4cf7144c5c41334aL    # 5.9339183045577455E62

    const/16 v8, 0x30

    invoke-static {v7, v5, v6, v8, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2798
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 2799
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2800
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 2801
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 2802
    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    and-int/lit8 v5, v5, -0x9

    iput v5, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    if-nez v3, :cond_6

    .line 2804
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean p0, p0, v4

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x477bf7706596cf2aL    # -1.88393575763248E-36

    invoke-static {p0, v3, v4, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 2814
    :cond_6
    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->remove(ZZ)V

    return-void

    .line 2788
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput v4, p0, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    .line 2789
    iput-boolean p1, p0, Lcom/android/server/wm/StartingData;->mPrepareRemoveAnimation:Z

    return-void

    .line 2809
    :cond_8
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_9

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x1e3c80421c30ca0cL    # -8.77242806676582E162

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public final removeStopTimeout()V
    .locals 1

    .line 6348
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeTimeouts()V
    .locals 1

    .line 6352
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 6353
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    .line 6354
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStopTimeout()V

    .line 6355
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeDestroyTimeout()V

    return-void
.end method

.method public final removeTransferSplashScreenTimeout()V
    .locals 1

    .line 2541
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeUriPermissionsLocked()V
    .locals 1

    .line 5273
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v0, :cond_0

    .line 5274
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions()V

    const/4 v0, 0x0

    .line 5275
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    :cond_0
    return-void
.end method

.method public reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V
    .locals 5

    .line 2823
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2824
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reparent: Attempted to reparent non-existing app token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2827
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 2833
    sget-object p3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v0, 0x2

    aget-boolean p3, p3, v0

    if-eqz p3, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    int-to-long v2, p2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p3

    const-wide v0, 0x4c9f5f2199703fc7L    # 1.2603056972755501E61

    const/16 v2, 0x14

    invoke-static {v4, v0, v1, v2, p3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2835
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    return-void

    .line 2829
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": task fragment ="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already the parent of r="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public reportDescendantOrientationChangeIfNeeded()V
    .locals 1

    .line 7483
    invoke-virtual {p0, p0}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7486
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_0
    return-void
.end method

.method public reportScreenCaptured()V
    .locals 3

    .line 6957
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_1

    .line 6958
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6960
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IScreenCaptureObserver;

    .line 6962
    :try_start_0
    invoke-interface {v2}, Landroid/app/IScreenCaptureObserver;->onScreenCaptured()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6966
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method

.method public final requestCopySplashScreen()V
    .locals 3

    const/4 v0, 0x1

    .line 2576
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2577
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 2578
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    iget-object v2, v2, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 2577
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskOrganizerController;->copySplashScreenView(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    .line 2579
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2580
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 2582
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleTransferSplashScreenTimeout()V

    return-void
.end method

.method public requestOpenInBrowserEducation()V
    .locals 2

    .line 6948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mRequestOpenInBrowserEducationTimestamp:J

    .line 6949
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6951
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6952
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_1
    return-void
.end method

.method public requestUpdateWallpaperIfNeeded()V
    .locals 2

    .line 7220
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 7221
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 7222
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final resolveFixedOrientationConfiguration(Landroid/content/res/Configuration;)V
    .locals 10

    .line 8083
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    .line 8084
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8085
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 8088
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/wm/ActivityRecord;->orientationRespectedWithInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8090
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v4

    .line 8089
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->handlesOrientationChangeFromDescendant(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 8098
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8099
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 8104
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 8105
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-le v5, v6, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    move v5, v7

    .line 8107
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v6, v6, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-eqz v6, :cond_3

    goto :goto_1

    .line 8108
    :cond_3
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    .line 8112
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v6

    .line 8113
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 8114
    invoke-virtual {v9}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v9

    .line 8115
    invoke-virtual {v9, v6, v5}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->resolveFixedOrientationLetterboxEligibility(II)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v6, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    .line 8121
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v9

    .line 8122
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 8123
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    if-eqz v9, :cond_6

    .line 8125
    iget-boolean v5, v9, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    if-nez v5, :cond_6

    :cond_5
    :goto_2
    return-void

    .line 8134
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v5, v5, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-eqz v5, :cond_7

    goto :goto_3

    .line 8135
    :cond_7
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_3
    if-eqz v2, :cond_8

    move-object v0, v1

    :cond_8
    move v1, v6

    .line 8140
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 8141
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    if-ne v1, v8, :cond_9

    .line 8150
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 8151
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v7

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 8150
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8152
    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v2, v7, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8154
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v2, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 8162
    :cond_9
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 8163
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 8162
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8164
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v2, v7, v1, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 8166
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v2, v7, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8171
    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8172
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8174
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 8175
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v1

    move-object v2, p1

    .line 8177
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz v9, :cond_b

    .line 8181
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8182
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 8181
    invoke-virtual {v9, p1, v5}, Lcom/android/server/wm/AppCompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 8183
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne p1, v5, :cond_a

    .line 8184
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq p1, v5, :cond_b

    .line 8188
    :cond_a
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 8197
    :cond_b
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 8198
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 8204
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iput-object v9, p1, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 8205
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 8206
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->setLetterboxBoundsForFixedOrientationAndAspectRatio(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7636
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7637
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v2

    .line 7638
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeIfNeededOnResolveOverrideConfiguration()V

    .line 7639
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 7640
    iget v4, v3, Landroid/content/res/Configuration;->assetsSeq:I

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget v6, v1, Landroid/content/res/Configuration;->assetsSeq:I

    if-le v6, v4, :cond_0

    .line 7642
    iput v5, v3, Landroid/content/res/Configuration;->assetsSeq:I

    .line 7644
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/WindowToken;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 7645
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 7647
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityRecord;->applyLocaleOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 7649
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7655
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 7656
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v10}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 7657
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    :cond_1
    move-object v9, v1

    .line 7659
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7660
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v1

    .line 7661
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->reset()V

    .line 7662
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7663
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object v3

    .line 7664
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->resetFixedOrientationLetterboxEligibility()V

    .line 7665
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7666
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getLatestSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 7665
    invoke-virtual {v4, v6, v9, v7, v3}, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->resolveTmpOverrides(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;ZLandroid/graphics/Rect;)V

    .line 7671
    iget-object v3, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7672
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 7675
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getLaunchedFromBubble()Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    if-eq v3, v6, :cond_2

    .line 7678
    invoke-static {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v4, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v4, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7684
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    if-ne v4, v6, :cond_3

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    if-eqz v4, :cond_4

    .line 7689
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityRecord;->resolveFixedOrientationConfiguration(Landroid/content/res/Configuration;)V

    .line 7694
    :cond_4
    invoke-virtual {v1, v9}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->resolveAspectRatioRestrictionIfNeeded(Landroid/content/res/Configuration;)V

    .line 7695
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 7697
    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v9, v7, v8}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/AppCompatDisplayInsets;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 7699
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v4, :cond_6

    .line 7702
    iput v5, v10, Landroid/content/res/Configuration;->orientation:I

    .line 7705
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v7

    if-nez v7, :cond_6

    .line 7706
    invoke-virtual {v0, v10, v9}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 7714
    :cond_6
    :goto_1
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v7}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object v7

    invoke-virtual {v7, v10, v9}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->resolveSafeRegionBoundsConfigurationIfNeeded(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    if-nez v4, :cond_7

    .line 7718
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasAppCompatDisplayInsetsWithoutInheritance()Z

    move-result v4

    if-nez v4, :cond_7

    .line 7720
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_8

    .line 7721
    :cond_7
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityRecord;->updateResolvedBoundsPosition(Landroid/content/res/Configuration;)V

    .line 7724
    :cond_8
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v4, :cond_9

    .line 7725
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v6

    goto :goto_2

    :cond_9
    move v4, v5

    .line 7726
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasAppCompatDisplayInsetsWithoutInheritance()Z

    move-result v7

    if-nez v7, :cond_b

    .line 7731
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v7

    if-nez v7, :cond_a

    if-eqz v4, :cond_b

    .line 7739
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isAspectRatioApplied()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 7742
    :cond_a
    iget v1, v10, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 7743
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 7749
    :cond_b
    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    .line 7750
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    iput v4, v1, Landroid/content/res/Configuration;->seq:I

    .line 7756
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->providesMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 7757
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v4, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7758
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 7761
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v4, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7763
    :cond_c
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_d

    .line 7764
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v4, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v1, v4}, Landroid/content/pm/ActivityInfo;->neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v4, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v1, v4}, Landroid/content/pm/ActivityInfo;->alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasAppCompatDisplayInsetsWithoutInheritance()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v17

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, -0x1b3ea7976d0bceb6L    # -2.196496030229186E177

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v7, v8, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 7778
    :cond_d
    iget-object v1, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 7781
    :cond_e
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getSandboxingPolicy()Lcom/android/server/wm/AppCompatSandboxingPolicy;

    move-result-object v1

    invoke-virtual {v1, v10, v3}, Lcom/android/server/wm/AppCompatSandboxingPolicy;->sandboxBoundsIfNeeded(Landroid/content/res/Configuration;I)V

    .line 7784
    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v11, v0, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    .line 7790
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v12

    .line 7791
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v1

    if-eqz v1, :cond_f

    move v13, v6

    goto :goto_3

    :cond_f
    move v13, v5

    :goto_3
    iget-object v14, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 7784
    invoke-static/range {v7 .. v14}, Lcom/android/server/wm/ConfigurationContainer;->applySizeOverrideIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZZZLcom/android/server/wm/Task;)V

    .line 7793
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->resetTmpOverrides()V

    .line 7795
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->logAppCompatState()V

    return-void
.end method

.method public restartProcessIfVisible()V
    .locals 5

    .line 8880
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8881
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to restart process of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8885
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatMode()V

    .line 8886
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->onProcessRestarted()V

    .line 8888
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 8893
    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "restartActivityProcess"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 8895
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8913
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8914
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 8916
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    return-void

    .line 8930
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleStopForRestartProcess()V

    return-void

    .line 8899
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resumeConfigurationDispatch()Z
    .locals 6

    .line 8427
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    .line 8431
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x4785ebb0c5bb3ef1L    # 3.6421953804033705E36

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8432
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    if-gez v0, :cond_2

    .line 8433
    const-string v0, "ActivityTaskManager"

    const-string v1, "Trying to resume non-paused configuration dispatch"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8434
    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    return v2

    .line 8437
    :cond_2
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 8438
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 8441
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 8442
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->dispatchConfigurationToChild(Lcom/android/server/wm/WindowState;Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8444
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedConfigurationAndSend()Z

    return v1
.end method

.method public resumeKeyDispatchingLocked()V
    .locals 1

    .line 5290
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5291
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 5293
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_0
    return-void
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4

    .line 8992
    const-string v0, "id"

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 8993
    const-string v0, "launched_from_uid"

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-interface {p1, v3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 8994
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8995
    const-string v1, "launched_from_package"

    invoke-interface {p1, v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8997
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8998
    const-string v1, "launched_from_feature"

    invoke-interface {p1, v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9000
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9001
    const-string v1, "resolved_type"

    invoke-interface {p1, v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9003
    :cond_2
    const-string v0, "component_specified"

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-interface {p1, v3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 9004
    const-string v0, "user_id"

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {p1, v3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 9006
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_3

    .line 9007
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 9010
    :cond_3
    const-string v0, "intent"

    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9011
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 9012
    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9014
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_4

    .line 9015
    const-string v0, "persistable_bundle"

    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9016
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 9017
    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9021
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityCallerState;->getCallerInfoOrNull(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 9024
    const-string v0, "initial_caller_info"

    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9025
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 9026
    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    return-void
.end method

.method public final scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V
    .locals 6

    .line 1340
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 1341
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    const/4 p3, 0x3

    aget-boolean p2, p2, p3

    if-eqz p2, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    int-to-long p1, p1

    sget-object p3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-wide p1, -0x5a558eb85b17cfe8L    # -3.051787900657849E-127

    invoke-static {p3, p1, p2, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 1346
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v2, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x3a0d3686310dc307L    # -9.302879184568893E28

    invoke-static {v5, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1350
    :cond_1
    new-instance v0, Landroid/app/servertransaction/MoveToDisplayItem;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/app/servertransaction/MoveToDisplayItem;-><init>(Landroid/os/IBinder;ILandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    .line 1353
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final scheduleAddStartingWindow()V
    .locals 7

    .line 2388
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x4e88dd20260a3223L    # 2.1450430772303076E70

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v6, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2391
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz v0, :cond_1

    .line 2393
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x682b0bf11a7d37f0L    # 6.169936201174548E193

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v4, v5, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 2397
    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0xe8b6a5da6ca3e94L

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final scheduleConfigurationChanged(Landroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V
    .locals 6

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1363
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    const/4 p2, 0x3

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x672f6ae374fc35f9L    # 1.0936022160278257E189

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 1367
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x66f5248af2dbce7fL

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1370
    :cond_1
    new-instance v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, v1, p1, p2}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;-><init>(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    .line 1373
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public schedulePauseTimeout()V
    .locals 4

    .line 6334
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    .line 6335
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6336
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide v2, -0x239e074ab729ca2eL    # -1.0449915116439603E137

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final scheduleStopForRestartProcess()V
    .locals 3

    .line 8937
    new-instance v0, Landroid/app/servertransaction/StopActivityItem;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/IBinder;)V

    .line 8939
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown during restart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8944
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public scheduleTopResumedActivityChanged(Z)Z
    .locals 6

    .line 1381
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 1388
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 1390
    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x6488aa2d097530e7L    # 1.9521095833020158E176

    const/16 v5, 0xc

    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1393
    :cond_2
    new-instance v0, Landroid/app/servertransaction/TopResumedActivityChangeItem;

    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, v2, p1}, Landroid/app/servertransaction/TopResumedActivityChangeItem;-><init>(Landroid/os/IBinder;Z)V

    if-eqz p1, :cond_3

    .line 1397
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    invoke-virtual {v2, p0, p1}, Lcom/mediatek/server/am/AmsExt;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 1400
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1404
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send top-resumed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 1382
    :cond_4
    :goto_2
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v0, 0x3

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x3b772521f7d0c89aL    # -1.4671773110816423E22

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    return v1
.end method

.method public final scheduleTransferSplashScreenTimeout()V
    .locals 3

    .line 2536
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final searchCandidateLaunchingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 6

    .line 7017
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7019
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 7022
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 7025
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 7026
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 7027
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_3

    goto :goto_1

    .line 7029
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    :goto_1
    if-eq v3, v2, :cond_5

    .line 7032
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 7033
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 7034
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    return-object v0

    :cond_6
    :goto_3
    return-object v1
.end method

.method public sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 4877
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    return-void
.end method

.method public sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V
    .locals 7

    .line 4884
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    .line 4885
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityCallerState;->hasCaller(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4887
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4888
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move-object v3, p5

    move-object v2, p6

    .line 4887
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4894
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    move v4, p1

    :goto_0
    if-lez v4, :cond_1

    .line 4898
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4899
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v0

    .line 4898
    invoke-interface {p1, p7, v0}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 4902
    :cond_1
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    const-string p7, "ActivityTaskManager"

    if-eqz p1, :cond_2

    .line 4903
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Send activity result to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : who="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " req="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " res="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " data="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " forceSendForMediaProjection="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p7, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4909
    :cond_2
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    const-string v1, "Exception thrown sending result to "

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4911
    new-instance p1, Landroid/app/ResultInfo;

    invoke-direct/range {p1 .. p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object p6, p2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4912
    new-instance p1, Landroid/app/servertransaction/ActivityResultItem;

    iget-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p1, p2, v0}, Landroid/app/servertransaction/ActivityResultItem;-><init>(Landroid/os/IBinder;Ljava/util/List;)V

    .line 4914
    :try_start_1
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4915
    invoke-virtual {p3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_4

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 4921
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p7, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object p6, p2

    :cond_4
    :goto_1
    if-eqz p8, :cond_7

    .line 4926
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p3, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p4, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p5, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    move-object p8, p0

    if-eqz p1, :cond_6

    .line 4929
    new-instance p0, Landroid/app/ResultInfo;

    move-object p1, p6

    move p2, v2

    move p3, v3

    move-object p4, v4

    move-object p5, v5

    invoke-direct/range {p0 .. p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 4931
    new-instance p1, Landroid/app/servertransaction/ActivityResultItem;

    iget-object p2, p8, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p1, p2, p0}, Landroid/app/servertransaction/ActivityResultItem;-><init>(Landroid/os/IBinder;Ljava/util/List;)V

    .line 4935
    invoke-virtual {p8}, Lcom/android/server/wm/ActivityRecord;->getLifecycleItemForCurrentStateForResult()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 4938
    :try_start_2
    iget-object p2, p8, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p2

    iget-object p3, p8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4939
    invoke-virtual {p3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/app/servertransaction/ClientTransactionItem;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const/4 p1, 0x1

    aput-object p0, p4, p1

    .line 4938
    invoke-virtual {p2, p3, p4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItems(Landroid/app/IApplicationThread;[Landroid/app/servertransaction/ClientTransactionItem;)Z

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 4941
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to get the lifecycle item for state "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p8, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " so couldn\'t immediately send result"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    iget-object p0, p8, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p0

    iget-object p2, p8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4944
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p2

    .line 4943
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 4948
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p7, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    :cond_6
    :goto_4
    move-object p2, p6

    move p3, v2

    move p4, v3

    move-object p5, v4

    move-object p6, v5

    goto :goto_5

    :cond_7
    move-object p8, p0

    goto :goto_4

    :goto_5
    const/4 p1, 0x0

    move-object p0, p8

    .line 4956
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

.method public final setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2885
    invoke-virtual {p0, p2, p5}, Lcom/android/server/wm/ActivityRecord;->canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2886
    :cond_0
    invoke-static {p3}, Lcom/android/server/wm/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2890
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq p2, v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 2893
    :cond_1
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2895
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/RecentTasks;->isRecentsComponent(Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    .line 2898
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 2899
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->canLaunchAssistActivity(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    .line 2901
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 2902
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->canLaunchDreamActivity(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-class p1, Landroid/service/dreams/DreamActivity;

    .line 2903
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne p1, p2, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    .line 2906
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    return-void
.end method

.method public setAllowCrossUidActivitySwitchFromBelow(Z)V
    .locals 0

    .line 9164
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mAllowCrossUidActivitySwitchFromBelow:Z

    return-void
.end method

.method public setClientVisible(Z)V
    .locals 0

    .line 6705
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    return-void
.end method

.method public setCurrentLaunchCanTurnScreenOn(Z)V
    .locals 0

    .line 5661
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    return-void
.end method

.method public setCustomizeSplashScreenExitAnimation(Z)V
    .locals 1

    .line 2515
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2518
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    return-void
.end method

.method public setDeferHidingClient()V
    .locals 0

    .line 0
    return-void
.end method

.method public setDropInputMode(I)V
    .locals 1

    .line 1610
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastDropInputMode:I

    if-eq v0, p1, :cond_0

    .line 1611
    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastDropInputMode:I

    .line 1612
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 1613
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 1614
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method public setForceSendResultForMediaProjection()V
    .locals 1

    const/4 v0, 0x1

    .line 3727
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    return-void
.end method

.method public setInheritShowWhenLocked(Z)V
    .locals 0

    .line 4748
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    .line 4749
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    return-void
.end method

.method public setIsNoDisplay(Z)V
    .locals 0

    .line 3028
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    return-void
.end method

.method public setLastParentBeforePip(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1647
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    .line 1648
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 1649
    iput-object p0, v0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1650
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez p1, :cond_1

    .line 1652
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_1

    .line 1653
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 1655
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 1656
    :goto_2
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 1660
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

    :cond_3
    return-void
.end method

.method public setLastReportedActivityWindowInfo(Landroid/window/ActivityWindowInfo;)V
    .locals 0

    .line 7579
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p0, p1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    return-void
.end method

.method public setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0

    .line 7575
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V
    .locals 0

    .line 7566
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setLocusId(Landroid/content/LocusId;)V
    .locals 1

    .line 6937
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6938
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    .line 6939
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6940
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMainWindowOpaque(Z)V
    .locals 1

    .line 3067
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 3071
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr p1, v0

    .line 3072
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    return-void
.end method

.method public setNeedsSafeRegionBounds(Z)V
    .locals 0

    .line 5622
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->setNeedsSafeRegionBounds(Z)V

    return-void
.end method

.method public setOccludesParent(Z)Z
    .locals 2

    .line 3046
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3047
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 3048
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setMainWindowOpaque(Z)V

    if-eqz v0, :cond_2

    .line 3050
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    .line 3052
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/Task;->convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    .line 3054
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/Task;->convertActivityFromTranslucent(Lcom/android/server/wm/ActivityRecord;)V

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    return v0

    .line 3061
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    return v0
.end method

.method public final setOptions(Landroid/app/ActivityOptions;)V
    .locals 2

    .line 5065
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchedFromBubble()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    .line 5066
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 5067
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 5068
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 5070
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public setOverrideGender(Landroid/content/res/Configuration;I)Z
    .locals 1

    .line 8255
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGrammaticalManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    .line 8256
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    .line 8255
    invoke-static {p1, p2, v0, p0}, Lcom/android/server/wm/WindowProcessController;->applyConfigGenderOverride(Landroid/content/res/Configuration;ILcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;I)Z

    move-result p0

    return p0
.end method

.method public setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 1

    .line 9393
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, p1}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 9394
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->adjustPictureInPictureParamsIfNeeded(Landroid/graphics/Rect;)V

    .line 9395
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onPictureInPictureParamsChanged()V

    return-void
.end method

.method public setProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    .line 2161
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2162
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p0, :cond_1

    .line 2164
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setRootProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 2166
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2167
    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/ActivityRecord;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    .line 2171
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2173
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    :cond_2
    return-void
.end method

.method public setRecentsScreenshotEnabled(Z)V
    .locals 0

    .line 5640
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 8

    .line 7429
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getOrientationPolicy()Lcom/android/server/wm/AppCompatOrientationPolicy;

    move-result-object v0

    .line 7430
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatOrientationPolicy;->shouldIgnoreRequestedOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7433
    :cond_0
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    const/4 v1, 0x0

    .line 7436
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(ZI)I

    move-result v2

    .line 7437
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(Z)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 7440
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeAttributes()V

    .line 7442
    :cond_1
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x7f5ed8954e91c6aaL

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, v7, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 7445
    :cond_2
    invoke-virtual {p0, p1, p0}, Lcom/android/server/wm/WindowContainer;->setOrientation(ILcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-eq v2, p1, :cond_3

    .line 7447
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isRestrictedFixedOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring requested fixed orientation "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7449
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " since target sdk 36"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7448
    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7455
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 7456
    invoke-virtual {v4}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 7455
    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7457
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 7458
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-le v1, v0, :cond_4

    .line 7459
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v0

    .line 7460
    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppCompatOrientationOverrides;->setRelaunchingAfterRequestedOrientationChanged(Z)V

    .line 7462
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7463
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7467
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRequestedOrientationChanged(II)V

    .line 7470
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->onSetRequestedOrientation()V

    return-void
.end method

.method public setSavedState(Landroid/os/Bundle;)V
    .locals 0

    .line 1304
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1305
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    return-void
.end method

.method public setShouldDockBigOverlays(Z)V
    .locals 0

    .line 9399
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    .line 9400
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onShouldDockBigOverlaysChanged()V

    return-void
.end method

.method public setShowWhenLocked(Z)V
    .locals 0

    .line 4743
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 4744
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    return-void
.end method

.method public setSizeConfigurations(Landroid/window/SizeConfigurationBuckets;)V
    .locals 0

    .line 1335
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    return-void
.end method

.method public setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V
    .locals 9

    .line 5679
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, -0x5f634207b38ec40eL    # -1.371956168164014E-151

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v7, v8, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5682
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, v0, :cond_1

    .line 5684
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x3d9436bd9a6c341fL    # 4.5960929618198E-12

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 5689
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 5691
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5692
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 5698
    :cond_2
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result p2

    if-nez p2, :cond_3

    .line 5699
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    if-nez p2, :cond_3

    .line 5700
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to notify stopping on non-existing app token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5705
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateVisibleForServiceConnection()V

    .line 5706
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p2, :cond_4

    .line 5707
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, p2, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 5710
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v1, :cond_e

    const/4 p2, 0x2

    if-eq p1, p2, :cond_d

    const/4 v3, 0x4

    if-eq p1, v3, :cond_c

    const/4 v3, 0x5

    if-eq p1, v3, :cond_a

    const/4 p2, 0x6

    if-eq p1, p2, :cond_9

    const/16 p2, 0x8

    if-eq p1, p2, :cond_8

    const/16 p2, 0x9

    if-eq p1, p2, :cond_5

    goto :goto_0

    .line 5744
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p1, :cond_7

    .line 5746
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5748
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 p2, 0x18

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 5749
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 5752
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result p1

    if-nez p1, :cond_b

    .line 5756
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    return-void

    .line 5738
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 p2, 0x17

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 5739
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_b

    .line 5740
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 5733
    :cond_a
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, p1, :cond_b

    .line 5734
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    :cond_b
    :goto_0
    return-void

    .line 5726
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5727
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    return-void

    .line 5712
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5713
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 5718
    :cond_e
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_f

    .line 5719
    invoke-virtual {p1, v2, v1, v1, v1}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    .line 5723
    :cond_f
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance p2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1568
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1570
    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastDropInputMode:I

    .line 1571
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateUntrustedEmbeddingInputProtection()V

    :cond_0
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 4

    .line 6923
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6924
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6925
    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    move-result-object v1

    .line 6926
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6928
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 6929
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 6930
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 6932
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 6933
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    return-void
.end method

.method public final setTaskHasBeenVisible()V
    .locals 2

    .line 6557
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6561
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6564
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 6566
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    return-void
.end method

.method public setTaskOverlay(Z)V
    .locals 0

    .line 9226
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 9227
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    return-void
.end method

.method public setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 2910
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2911
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method public setTurnScreenOn(Z)V
    .locals 0

    .line 9160
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    .line 5393
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5397
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5398
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 5403
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    .line 5405
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(ZZ)V

    .line 5406
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    .line 5408
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V

    .line 5409
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    return-void
.end method

.method public final setVisibility(ZZ)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5420
    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_e

    .line 5422
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastDeferHidingClient:Z

    if-eqz p1, :cond_e

    .line 5425
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mLastDeferHidingClient:Z

    .line 5426
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    return-void

    .line 5431
    :cond_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    const/4 v5, 0x6

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v1, v7, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, 0x38028419cd1a3e6cL    # 6.801711054826395E-39

    const/16 v5, 0xfc

    invoke-static {v6, v3, v4, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5439
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5440
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5442
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    move v1, v0

    move v3, v2

    goto :goto_1

    .line 5448
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    .line 5451
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5452
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5453
    invoke-static {v2, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v4

    .line 5452
    invoke-virtual {v3, p0, v4}, Lcom/android/server/wm/TransitionController;->onVisibleWithoutCollectingTransition(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    goto :goto_0

    .line 5455
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-nez v3, :cond_5

    .line 5456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set invisible without transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    move v3, v0

    goto :goto_1

    :cond_6
    move v1, v0

    move v3, v1

    .line 5462
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v4, p0, p1}, Lcom/android/server/wm/BackNavigationController;->onAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5464
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 5465
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mLastDeferHidingClient:Z

    if-nez p1, :cond_7

    .line 5472
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez p2, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 5473
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    goto :goto_2

    .line 5476
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 5479
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz p2, :cond_9

    .line 5480
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    .line 5487
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    .line 5489
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-nez p2, :cond_a

    .line 5490
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    .line 5493
    :cond_a
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean p2, p2, v2

    if-eqz p2, :cond_b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x17fb359aba2e3d2aL

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v4, v5, v6, v0, p2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5494
    :cond_b
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 5496
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindowFromHiddenAboveTokenIfNeeded()V

    .line 5498
    :cond_c
    :goto_2
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz p2, :cond_d

    .line 5499
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    :cond_d
    if-eqz v3, :cond_10

    if-nez p1, :cond_f

    .line 5507
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 5508
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const p2, 0x8000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    .line 5509
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    if-eqz p1, :cond_e

    .line 5510
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 5511
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const p2, 0x48000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    :cond_e
    return-void

    .line 5515
    :cond_f
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const p2, -0x8001

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    return-void

    :cond_10
    if-eqz v1, :cond_11

    .line 5522
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 5526
    :cond_11
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 5527
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 5342
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eq p1, v0, :cond_1

    .line 5343
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 5344
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_0

    .line 5345
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 5347
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_1
    return-void
.end method

.method public setVisibleRequested(Z)Z
    .locals 3

    .line 5357
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setVisibleRequested(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 5358
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowToken;->setInsetsFrozen(Z)V

    .line 5359
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateVisibleForServiceConnection()V

    .line 5360
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1

    .line 5361
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 5363
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->logAppCompatState()V

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 5365
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5366
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5367
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, p0, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_2

    .line 5369
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v0

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    .line 5370
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishOrAbortReplacingWindow()V

    :cond_3
    return v0
.end method

.method public setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 0

    .line 6992
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 p1, 0x0

    .line 6993
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    return-void
.end method

.method public setWillCloseOrEnterPip(Z)V
    .locals 0

    .line 3336
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    return-void
.end method

.method public final shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 6141
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6142
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    if-nez p1, :cond_0

    .line 6144
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldBeVisible()Z
    .locals 1

    const/4 v0, 0x0

    .line 5965
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result p0

    return p0
.end method

.method public shouldBeVisible(Z)Z
    .locals 3

    .line 5969
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 5974
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5975
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 5976
    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public final shouldBeVisible(ZZ)Z
    .locals 0

    .line 5894
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateVisibilityIgnoringKeyguard(Z)V

    if-eqz p2, :cond_0

    .line 5897
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    return p0

    .line 5900
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleUnchecked()Z

    move-result p0

    return p0
.end method

.method public shouldBeVisibleUnchecked()Z
    .locals 3

    .line 5904
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 5905
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 5915
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5920
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasOverlayOverUntrustedModeEmbedded()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5925
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPresentationController:Lcom/android/server/wm/PresentationController;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/PresentationController;->shouldOccludeActivities(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5932
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5933
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result p0

    return p0

    .line 5935
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public shouldCreateAppCompatDisplayInsets()Z
    .locals 0

    .line 7606
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->shouldCreateAppCompatDisplayInsets()Z

    move-result p0

    return p0
.end method

.method public shouldIgnoreOrientationRequests()Z
    .locals 2

    .line 7497
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppActivityEmbeddingSplitsEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7498
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 7499
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7503
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 6

    .line 6171
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    .line 6174
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    return v1

    .line 6182
    :cond_1
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    .line 6187
    :cond_2
    iget-boolean p0, v0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz p0, :cond_3

    return v1

    .line 6194
    :cond_3
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 6197
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-ne p0, v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1

    .line 6195
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Activity not found in its task"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    return v1
.end method

.method public shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 6118
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z
    .locals 5

    .line 8683
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 8693
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z

    move-result v1

    .line 8699
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x200

    .line 8707
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipActivityRelaunchWhenDocking:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->onlyDeskInUiModeChanged(Landroid/content/res/Configuration;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8708
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasDeskResources()Z

    move-result p0

    if-nez p0, :cond_2

    or-int/lit16 v0, v0, 0x200

    :cond_2
    not-int p0, v0

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method public shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 6132
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldSendCompatFakeFocus()Z
    .locals 0

    .line 9548
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getFocusOverrides()Lcom/android/server/wm/AppCompatFocusOverrides;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatFocusOverrides;->shouldSendFakeFocus()Z

    move-result p0

    return p0
.end method

.method public final shouldStartActivity()Z
    .locals 1

    .line 6154
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldStartChangeTransition(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1467
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canStartChangeTransition()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1471
    :cond_0
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1472
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v0

    .line 1473
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p0, :cond_2

    return v0

    .line 1479
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public shouldUpdateConfigForDisplayChanged()Z
    .locals 1

    .line 8468
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldUseAppThemeSnapshot()Z
    .locals 2

    .line 5652
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final shouldUseSolidColorSplashScreen(Lcom/android/server/wm/ActivityRecord;ZLandroid/app/ActivityOptions;IZ)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 7064
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    .line 7071
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getSplashScreenStyle()I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    :goto_0
    if-nez p3, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    if-eq p3, v0, :cond_b

    .line 7076
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityRecord;->isIconStylePreferred(I)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_3

    .line 7082
    :cond_3
    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_4

    return v0

    :cond_4
    if-nez p1, :cond_5

    .line 7087
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->searchCandidateLaunchingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    :cond_5
    if-eqz p1, :cond_6

    .line 7090
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    return p0

    .line 7091
    :cond_6
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_a

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    const/16 p3, 0x7d0

    if-ne p0, p3, :cond_7

    goto :goto_2

    :cond_7
    if-ne p1, v0, :cond_9

    if-nez p2, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v0

    :cond_a
    :goto_2
    xor-int/lit8 p0, p5, 0x1

    return p0

    :cond_b
    :goto_3
    return v1
.end method

.method public showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V
    .locals 8

    .line 7131
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .locals 11

    .line 7145
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p7, :cond_1

    move-object/from16 v3, p7

    goto :goto_0

    .line 7150
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    .line 7152
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v6, 0x0

    if-eqz p5, :cond_3

    .line 7157
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->getSplashscreenTheme(Landroid/app/ActivityOptions;)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v6

    .line 7158
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    invoke-virtual {p0, p1, v2, v4, v1}, Lcom/android/server/wm/ActivityRecord;->evaluateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;II)I

    move-result v2

    move-object v0, p0

    move v5, p2

    move-object/from16 v1, p6

    move v4, v2

    move/from16 v2, p5

    .line 7161
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->shouldUseSolidColorSplashScreen(Lcom/android/server/wm/ActivityRecord;ZLandroid/app/ActivityOptions;IZ)Z

    move-result v1

    move v2, v4

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    .line 7164
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 7165
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-lt v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-gt v1, v3, :cond_4

    move v8, v4

    goto :goto_2

    :cond_4
    move v8, v6

    :goto_2
    if-nez p2, :cond_5

    if-nez v8, :cond_5

    .line 7168
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v3, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 7169
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v4

    goto :goto_3

    :cond_5
    move v1, v6

    .line 7171
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez p2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v4, v6

    .line 7173
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->allowTaskSnapshot()Z

    move-result v7

    iget-boolean v9, p0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    iget-boolean v10, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    move-object v0, p0

    move v5, p3

    move v6, p4

    move-object v1, v3

    move-object v3, p1

    .line 7171
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityRecord;->addStartingWindow(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;ZZZZZZZ)Z

    move-result v1

    .line 7174
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 7175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduled starting window for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    return-void
.end method

.method public showStartingWindow(Z)V
    .locals 8

    .line 7003
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p1

    .line 7005
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public showSurfaceOnCreation()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public showToCurrentUser()Z
    .locals 1

    .line 9241
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->isUserVisible(I)Z

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

.method public startRelaunching()V
    .locals 2

    .line 4183
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-nez v0, :cond_0

    .line 4184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    .line 4185
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 4186
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->addRelaunchingApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 4189
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    .line 4191
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    return-void
.end method

.method public stopIfPossible()V
    .locals 9

    .line 6359
    const-string v0, "ActivityTaskManager"

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/ActivityRecord;->TAG_SWITCH:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6360
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_c

    .line 6363
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 6364
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6365
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x68111dd5cb08319aL    # 1.9523303294450152E193

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6366
    :cond_1
    const-string v1, "stop-no-history"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    move-result v1

    if-eqz v1, :cond_3

    .line 6368
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    return-void

    .line 6372
    :cond_2
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x2c82159e9cde336aL    # 2.709297565515935E-94

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6377
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    .line 6380
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 6381
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    const-wide v4, -0x231eeb25dd27c9c5L    # -2.542686590137254E139

    if-eqz v1, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6385
    :cond_5
    :try_start_0
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v1, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6386
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    invoke-virtual {v1, p0, v2}, Lcom/mediatek/server/am/AmsExt;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6389
    const-string v6, "Exception in onActivityStateChanged"

    invoke-static {v0, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6393
    :cond_6
    :goto_0
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v6, "stopIfPossible"

    invoke-virtual {p0, v1, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6394
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_7

    .line 6395
    sget-object v1, Lcom/android/server/wm/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stopping:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6397
    :cond_7
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 6398
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 6397
    invoke-static {v1, v7, v8}, Lcom/android/server/wm/EventLogTags;->writeWmStopActivity(IILjava/lang/String;)V

    .line 6399
    new-instance v1, Landroid/app/servertransaction/StopActivityItem;

    iget-object v7, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v1, v7}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/IBinder;)V

    .line 6402
    :try_start_1
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v4, v5, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    .line 6404
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6405
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    .line 6404
    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 6410
    :goto_2
    const-string v4, "Exception thrown during pause"

    invoke-static {v0, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    :goto_3
    if-eqz v0, :cond_a

    .line 6414
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6415
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 6416
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 6417
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 6421
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 6423
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2af8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 6426
    :cond_a
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 6427
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mStoppedTime:J

    .line 6428
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x74e93f8d5abac5feL

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6429
    :cond_b
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    :goto_4
    return-void

    .line 6361
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to stop a finishing activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsFreeform()Z
    .locals 1

    .line 3204
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 1

    .line 3212
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_0

    .line 3213
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsMultiWindow()Z
    .locals 1

    .line 3217
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 3

    .line 3225
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3228
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 3235
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 3240
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_5

    .line 3241
    iget v2, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 3242
    invoke-virtual {p1, v2, v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public supportsPictureInPicture()Z
    .locals 1

    .line 3199
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 3200
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public takeFromHistory()V
    .locals 1

    .line 3076
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3077
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 3078
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3079
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 3081
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    :cond_1
    return-void
.end method

.method public takeRemoteTransition()Landroid/window/RemoteTransition;
    .locals 2

    .line 5263
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    const/4 v1, 0x0

    .line 5264
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public takeSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;
    .locals 2

    .line 5252
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_0

    .line 5253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Taking SceneTransitionInfo for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    .line 5254
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5253
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5256
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 5258
    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 5259
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 9251
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 9252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9253
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v2, ""

    if-eqz v1, :cond_1

    const-string v1, " f}"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    if-eqz p0, :cond_2

    const-string v2, " isExiting"

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9255
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9256
    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9257
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9258
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9259
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 9260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9261
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public final transferSplashScreenIfNeeded()Z
    .locals 3

    .line 2545
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/wm/StartingData;->mResizedFromTransfer:Z

    if-nez v2, :cond_4

    iget v0, v0, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    if-eq v0, v1, :cond_4

    .line 2553
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2556
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTransferringSplashScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 2560
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_3

    .line 2561
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransactionCommitCallbackDepth()I

    move-result v0

    if-lez v0, :cond_3

    .line 2562
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    return v1

    .line 2566
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->requestCopySplashScreen()V

    .line 2567
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTransferringSplashScreen()Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 11

    .line 4513
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    .line 4514
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz v4, :cond_10

    .line 4516
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_1

    .line 4517
    :cond_0
    const-string v4, "WindowManager"

    const-string v5, "transferStartingWindow, fromToken already add a starting window."

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 4522
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-nez v4, :cond_2

    return v3

    .line 4532
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4533
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, p0, v3}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 4538
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isStartingOrientationCompatible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_4

    return v3

    .line 4544
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_5

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v4, v4, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-nez v4, :cond_5

    .line 4546
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowContainer;->getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    .line 4547
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    if-nez v4, :cond_5

    return v3

    .line 4552
    :cond_5
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, 0x7409a3aa906e3d16L    # 9.178525759499134E250

    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v9, v10, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4555
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4558
    :try_start_0
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 4559
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    iput-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 4560
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 4561
    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    .line 4562
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 4563
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 4564
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 4565
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 4566
    iput-object p0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 4567
    iput-object p0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4569
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget v4, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    if-ne v4, v5, :cond_7

    .line 4570
    iput v3, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 4572
    :cond_7
    :goto_0
    iget v1, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    if-ne v1, v2, :cond_9

    .line 4575
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 4576
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-nez v1, :cond_9

    .line 4577
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput v3, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    .line 4578
    iput-boolean v3, v1, Lcom/android/server/wm/StartingData;->mPrepareRemoveAnimation:Z

    .line 4582
    :cond_9
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v9, -0x2fe11762c7afcf6bL    # -8.947442604099203E77

    invoke-static {v8, v9, v10, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4584
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    const v1, 0x7fffffff

    .line 4585
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 4591
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->clearFrozenInsetsState()V

    .line 4596
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v1, :cond_b

    .line 4597
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 4599
    :cond_b
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v1, :cond_c

    .line 4600
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 4602
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4603
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 4604
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 4605
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    .line 4607
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    .line 4609
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4610
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->transferAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 4615
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    goto :goto_1

    .line 4616
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 4618
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    .line 4621
    :cond_f
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 4622
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    .line 4624
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4626
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4627
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4629
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4630
    throw p0

    .line 4632
    :cond_10
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_14

    .line 4633
    instance-of v0, v0, Lcom/android/server/wm/SnapshotStartingData;

    if-eqz v0, :cond_12

    .line 4634
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isStartingOrientationCompatible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    check-cast v0, Lcom/android/server/wm/SnapshotStartingData;

    .line 4635
    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotStartingData;->isValid()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    return v3

    .line 4641
    :cond_12
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_13

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x77e609a44b5535a5L    # 3.638242793076849E269

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v6, v7, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4643
    :cond_13
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 4644
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 4645
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 4646
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    return v2

    :cond_14
    return v3
.end method

.method public transferStartingWindowFromHiddenAboveTokenIfNeeded()V
    .locals 2

    const/4 v0, 0x0

    .line 4660
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4661
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4667
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public unregisterCaptureObserver(Landroid/app/IScreenCaptureObserver;)V
    .locals 1

    .line 6980
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 6981
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_0

    .line 6982
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6984
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public unregisterRemoteAnimations()V
    .locals 1

    const/4 v0, 0x0

    .line 7319
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-void
.end method

.method public updateAllDrawn()V
    .locals 3

    .line 5202
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v0, :cond_2

    .line 5205
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    if-lez v0, :cond_2

    .line 5210
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->allDrawnStatesConsidered()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    if-lt v1, v0, :cond_2

    .line 5211
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5212
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allDrawn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " interesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " drawn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 5214
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 5217
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    .line 5218
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5220
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 1331
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object p1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public final updateColorTransform()V
    .locals 4

    .line 1687
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    if-eqz v0, :cond_0

    .line 1688
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    .line 1690
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_0
    return-void
.end method

.method public updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z
    .locals 8

    const/4 v0, 0x1

    .line 6715
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 6717
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_0

    .line 6718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWindows: starting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isOnScreen="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " allDrawn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6722
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    .line 6726
    :cond_1
    iget-wide v4, p0, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    int-to-long v4, v1

    .line 6727
    iput-wide v4, p0, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    .line 6728
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 6731
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 6734
    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 6738
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v4, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6739
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v4}, Lcom/android/internal/protolog/WmProtoLogGroups;->isLogToLogcat()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v4, 0x3

    .line 6740
    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v4

    .line 6742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Eval win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": isDrawn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isAnimationSet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6744
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v5

    if-nez v5, :cond_5

    .line 6745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not displayed: s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " pv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6746
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mDrawState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6747
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ph="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6748
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " th="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " a="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6745
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6753
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v1, :cond_9

    .line 6754
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6756
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eq v1, p1, :cond_6

    .line 6757
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 6759
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6760
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 6762
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v1}, Lcom/android/internal/protolog/WmProtoLogGroups;->isLogToLogcat()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6763
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tokenMayBeDrawn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " w="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " numInteresting="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v0

    :cond_9
    return v3
.end method

.method public updateLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 2221
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->determineLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    return-void
.end method

.method public updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1735
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public updateMultiWindowMode()V
    .locals 2

    .line 1410
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1415
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    .line 1416
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    .line 1417
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1418
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    return-void

    .line 1420
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 5052
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update options for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1

    .line 5054
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 5056
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setOptions(Landroid/app/ActivityOptions;)V

    :cond_2
    return-void
.end method

.method public updatePictureInPictureMode(Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1432
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1433
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_5

    .line 1438
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 1439
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-nez p2, :cond_3

    .line 1440
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1442
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    :cond_4
    if-eqz p1, :cond_5

    .line 1444
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1445
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-ne p1, p0, :cond_5

    const/4 p1, -0x1

    .line 1448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, ""

    const-string v0, "265293293"

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x534e4554

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1449
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeImmediately()V

    :cond_5
    :goto_1
    return-void
.end method

.method public updateReportedConfigurationAndSend()Z
    .locals 15

    .line 8521
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8522
    const-string v0, "ActivityTaskManager"

    const-string v1, "trying to update reported(client) config while dispatch is paused"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8524
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x31cdb6f31616c7bdL    # -4.929721496946967E68

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8527
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    .line 8528
    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    if-eq v3, v0, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 8530
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    .line 8539
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v4, :cond_4

    .line 8542
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->updateAppCompatDisplayInsets()V

    .line 8549
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v5}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8550
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    move-result-object v4

    .line 8551
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 8552
    invoke-virtual {v5, v4}, Landroid/window/ActivityWindowInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v3, :cond_6

    if-eqz v5, :cond_6

    .line 8554
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 8555
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x40d78ed72a0c31d5L    # 24123.361941383995

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    return v1

    .line 8565
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityRecord;->getConfigurationChanges(Landroid/content/res/Configuration;)I

    move-result v5

    .line 8568
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 8570
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 8571
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->setLastReportedActivityWindowInfo(Landroid/window/ActivityWindowInfo;)V

    .line 8573
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v7, v8, :cond_8

    .line 8577
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x77af9746bf74cabaL

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7
    return v1

    :cond_8
    if-nez v5, :cond_b

    .line 8583
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_9

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0x227dca4ed3c73babL    # 1.526850216325029E-142

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, v9, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_9
    if-eqz v3, :cond_a

    .line 8588
    invoke-virtual {p0, v0, v6, v4}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    goto :goto_1

    .line 8591
    :cond_a
    invoke-virtual {p0, v6, v4}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    .line 8593
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 8594
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 8593
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->notifyActivityRefresherAboutConfigurationChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return v1

    .line 8598
    :cond_b
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_c

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x7ba565cbbcd4ccb2L

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v10, v11, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8603
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v7

    if-nez v7, :cond_e

    .line 8604
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x6fb1ad2428a1cfd2L

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_d
    return v1

    .line 8609
    :cond_e
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v9

    invoke-static {v9}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v10

    not-int v10, v10

    and-int/2addr v10, v5

    invoke-static {v10}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v13, 0x53232581aac23f99L    # 3.120170344631149E92

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12, v13, v14, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8616
    :cond_f
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v5, v7}, Lcom/android/server/wm/ActivityRecord;->shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 8617
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 8618
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v3

    if-ne v0, v3, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8619
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 8620
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 8619
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2

    :cond_10
    and-int/lit16 v0, v5, -0xd81

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_3

    :cond_11
    :goto_2
    move v0, v2

    .line 8626
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v3

    not-int v3, v3

    and-int/2addr v3, v5

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 8628
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x2

    goto :goto_4

    :cond_12
    move v3, v1

    .line 8630
    :goto_4
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    goto :goto_5

    .line 8632
    :cond_13
    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 8634
    :goto_5
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_14

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x5e155c8e8a7d3275L    # 1.6671346938309107E145

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v6, v7, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8635
    :cond_14
    iget-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v3, :cond_15

    .line 8636
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_15

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x7c79b78539643a95L    # 4.009904604152005E291

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v6, v7, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8639
    :cond_15
    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(ZI)V

    return v2

    :cond_16
    if-eqz v3, :cond_17

    .line 8650
    invoke-virtual {p0, v0, v6, v4}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    goto :goto_6

    .line 8653
    :cond_17
    invoke-virtual {p0, v6, v4}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    .line 8655
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 8656
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 8655
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->notifyActivityRefresherAboutConfigurationChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return v1
.end method

.method public updateReportedVisibilityLocked()V
    .locals 8

    .line 6648
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update reported visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6649
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6651
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->reset()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 6654
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 6655
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6658
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v3, v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 6659
    iget v4, v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 6660
    iget v5, v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 6661
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    const/4 v6, 0x1

    if-lez v3, :cond_2

    if-lt v5, v3, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-lez v3, :cond_3

    if-lt v4, v3, :cond_3

    .line 6664
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v6

    :cond_3
    if-nez v0, :cond_5

    if-nez v5, :cond_4

    .line 6668
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    :cond_4
    if-nez v2, :cond_5

    .line 6671
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    .line 6674
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VIS "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": interesting="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " visible="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6676
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    if-eq v5, v0, :cond_8

    if-eqz v5, :cond_7

    .line 6678
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onWindowsDrawn()V

    .line 6680
    :cond_7
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    .line 6682
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    if-eq v2, v0, :cond_b

    .line 6683
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Visibility changed in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": vis="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6685
    :cond_9
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    if-eqz v2, :cond_a

    .line 6687
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onWindowsVisible()V

    return-void

    .line 6689
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onWindowsGone()V

    :cond_b
    return-void
.end method

.method public final updateResolvedBoundsPosition(Landroid/content/res/Configuration;)V
    .locals 14

    .line 7887
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7888
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 7889
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 7892
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7893
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v2

    .line 7894
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->replaceResolvedBoundsIfNeeded(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 7895
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v5, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 7896
    iget-object v4, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    .line 7897
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 7898
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    .line 7899
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->isImmersiveMode(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7902
    iget-object v9, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v9

    .line 7903
    invoke-virtual {v9}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v9

    .line 7905
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    const/4 v11, 0x1

    .line 7903
    invoke-virtual {v9, v4, v10, v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v9

    goto :goto_0

    .line 7908
    :cond_1
    sget-object v9, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 7910
    :goto_0
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7911
    invoke-virtual {v10}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object v10

    .line 7914
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v11, v6

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    cmpg-float v11, v6, v7

    if-gtz v11, :cond_2

    .line 7916
    invoke-virtual {v10, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result v11

    .line 7920
    iget v13, v9, Landroid/graphics/Insets;->right:I

    int-to-float v13, v13

    add-float/2addr v7, v13

    float-to-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    mul-float/2addr v7, v11

    float-to-double v6, v7

    .line 7921
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v12

    .line 7930
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    .line 7931
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    .line 7932
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v11, v11, v13

    if-eqz v11, :cond_3

    cmpg-float v11, v13, v7

    if-gtz v11, :cond_3

    .line 7937
    invoke-virtual {v10, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getVerticalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result v10

    .line 7941
    iget v9, v9, Landroid/graphics/Insets;->bottom:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    float-to-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v7, v13

    mul-float/2addr v7, v10

    float-to-double v9, v7

    .line 7942
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    iget v3, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 7952
    :cond_3
    invoke-virtual {v2, v1, v0, v6, v12}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->applyOffsetIfNeeded(Landroid/graphics/Rect;Landroid/content/res/Configuration;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7953
    invoke-static {v0, v6, v12}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    .line 7958
    :cond_4
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ne v3, v5, :cond_5

    if-nez v8, :cond_5

    .line 7960
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 7961
    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->alignToTopIfNeeded(Landroid/graphics/Rect;)V

    .line 7965
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 7971
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->applySizeCompatScaleIfNeeded(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final updateTaskDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 5300
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object p1, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public final updateUntrustedEmbeddingInputProtection()V
    .locals 1

    .line 1593
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1596
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsInputDroppedForAnimation:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1598
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setDropInputMode(I)V

    return-void

    .line 1599
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbeddedInUntrustedMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 1601
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setDropInputMode(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 1604
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setDropInputMode(I)V

    return-void
.end method

.method public updateVisibilityIgnoringKeyguard(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5960
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz p1, :cond_1

    .line 5961
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    return-void
.end method

.method public final updateVisibleForServiceConnection()V
    .locals 2

    .line 4256
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleForServiceConnection:Z

    return-void
.end method

.method public final validateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z
    .locals 11

    .line 2245
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p3

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x4b2e6b0352c343fL

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    .line 2250
    :cond_1
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    if-ne p3, v2, :cond_2

    .line 2251
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mWindowStyle:Lcom/android/server/wm/ActivityRecord$WindowStyle;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getWindowStyle(Ljava/lang/String;II)Lcom/android/server/wm/ActivityRecord$WindowStyle;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_3

    return v0

    .line 2257
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->isTranslucent()Z

    move-result p3

    .line 2258
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->isFloating()Z

    move-result v2

    .line 2259
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->showWallpaper()Z

    move-result v3

    .line 2260
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->disablePreview()Z

    move-result p2

    .line 2261
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x238d5172ed39cb05L    # -2.1725895730886493E137

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v9, v10, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4
    if-nez p3, :cond_a

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 2270
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p3}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object p3

    if-eqz p3, :cond_6

    return v0

    :cond_6
    if-eqz p2, :cond_9

    .line 2273
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->launchedFromSystemSurface()Z

    move-result p0

    if-nez p0, :cond_9

    if-eqz p1, :cond_8

    .line 2275
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    if-ne p0, v1, :cond_8

    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    if-nez p0, :cond_8

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p0, :cond_7

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_8

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz p0, :cond_8

    :cond_7
    return v1

    :cond_8
    return v0

    :cond_9
    return v1

    :cond_a
    :goto_1
    return v0
.end method

.method public willCloseOrEnterPip()Z
    .locals 0

    .line 3340
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    return p0
.end method

.method public windowsAreFocusable()Z
    .locals 1

    const/4 v0, 0x0

    .line 3356
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    move-result p0

    return p0
.end method

.method public windowsAreFocusable(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3363
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v1, 0x1d

    if-ge p1, v1, :cond_0

    .line 3364
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result p1

    .line 3365
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    .line 3366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    return v0

    .line 3377
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canReceiveKeys()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 9360
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 9361
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 9362
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9363
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x10900000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 9364
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 0

    .line 9355
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method
