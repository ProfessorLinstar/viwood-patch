.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# static fields
.field public static final ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

.field public static final ALLOWED_PKGS:Ljava/util/Set;

.field public static final ALLOWLIST_TOKEN:Landroid/os/IBinder;

.field public static final BITMAP_DURATION:Ljava/time/Duration;

.field public static final DBG:Z

.field public static final DEBUG_INTERRUPTIVENESS:Z

.field public static final DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

.field public static final DEFAULT_ALLOWED_ADJUSTMENT_KEY_TYPES:[Ljava/lang/Integer;

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field public static final MY_PID:I

.field public static final MY_UID:I

.field public static final NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

.field public static final NOTIFICATION_MAX_AGE_AT_POST:J

.field public static final NOTIFICATION_TTL:J

.field public static final POST_WAKE_LOCK_TIMEOUT:Ljava/time/Duration;

.field public static final TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

.field public static final ZEN_BROADCAST_DELAY:Ljava/time/Duration;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mAdservicesModuleInfo:Landroid/content/pm/ModuleInfo;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

.field public mAm:Landroid/app/IActivityManager;

.field public mAmi:Landroid/app/ActivityManagerInternal;

.field public mAppOps:Landroid/app/AppOpsManager;

.field public mAppOpsListener:Landroid/app/AppOpsManager$OnOpChangedListener;

.field public mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field public mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field public mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

.field public mAutoGroupAtCount:I

.field public final mAutobundledSummaries:Landroid/util/ArrayMap;

.field public final mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

.field mCompanionManager:Landroid/companion/ICompanionDeviceManager;

.field public mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field public mDefaultSearchSelectorPkg:Ljava/lang/String;

.field public mDefaultUnsupportedAdjustments:[Ljava/lang/String;

.field public mDeviceIdleManager:Landroid/os/DeviceIdleManager;

.field public mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mEffectsSuppressors:Ljava/util/List;

.field public final mEnqueuedNotifications:Ljava/util/ArrayList;

.field public mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

.field public final mForegroundToken:Landroid/os/IBinder;

.field public mGroupHelper:Lcom/android/server/notification/GroupHelper;

.field mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field public mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

.field public final mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field public mInterruptionFilter:I

.field public mIsCurrentToastShown:Z

.field public mIsTelevision:Z

.field public mLastOverRateLogTime:J

.field public mListenerHints:I

.field public mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final mListenersDisablingEffects:Landroid/util/SparseArray;

.field public final mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mLockScreenAllowSecureNotifications:Z

.field public mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaxPackageEnqueueRate:F

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMsgPkgsAllowedAsConvos:Ljava/util/Set;

.field public mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field public mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public final mNotificationList:Ljava/util/ArrayList;

.field public mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

.field public final mNotificationLock:Ljava/lang/Object;

.field public mNotificationManagerPrivate:Lcom/android/server/notification/NotificationManagerPrivate;

.field public mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

.field public final mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field public final mNotificationsByKey:Landroid/util/ArrayMap;

.field public final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field mPackageManager:Landroid/content/pm/IPackageManager;

.field public mPackageManagerClient:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

.field public mPermissionManager:Landroid/permission/PermissionManager;

.field public mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field public mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mPolicyFile:Landroid/util/AtomicFile;

.field public mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

.field public mPowerManager:Landroid/os/PowerManager;

.field mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field public mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

.field public mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field public final mRankingThread:Landroid/os/HandlerThread;

.field public mRedactOtpNotifications:Z

.field public final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field public mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

.field public volatile mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

.field public final mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

.field final mService:Landroid/os/IBinder;

.field public mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field public mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

.field public mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

.field protected mShowReviewPermissionsNotification:Z

.field public mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

.field public mStatsManager:Landroid/app/StatsManager;

.field public mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStripRemoteViewsSizeBytes:I

.field public mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

.field public final mSummaryByGroupKey:Landroid/util/ArrayMap;

.field public mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mToastQueue:Ljava/util/ArrayList;

.field public mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

.field public final mToastRateLimitingDisabledUids:Ljava/util/Set;

.field public mTtlHelper:Lcom/android/server/notification/TimeToLiveHelper;

.field public mUgm:Landroid/app/IUriGrantsManager;

.field public mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public mUm:Landroid/os/UserManager;

.field public mUmInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field public mWarnRemoteViewsSizeBytes:I

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public static synthetic $r8$lambda$1y8sKtk_8HyOufwSTjE5MlYWWQk(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$doChannelWarningToast$13(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2iqMwe2IQP8Md-GGAj8leluN7x8(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$notifyListenersPostedAndLogLocked$18(Ljava/util/List;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6eKorDCCxIYHMwpAqnmOw3vsRMo(Lcom/android/server/notification/NotificationManagerService;ZLjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$sendAppBlockStateChangedBroadcast$8(ZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AksEhefUr0mq8xo8Ea7je9NeZ90(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$onUserStopping$9(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FQq4D-8lhApzIKNeeM1zty6OffA(I)Z
    .locals 1

    .line 0
    and-int/lit8 v0, p0, 0x40

    if-nez v0, :cond_1

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$MbigTpdYqYVeJwlfwtywuRvkol0(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$cancelNotificationLocked$16(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Os8GlU1qTM9ciDMkJqkDSf7A38g(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->lambda$onBootPhase$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$SEiDsxpGNQZwvB8jzhcrw5y8Ypc(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$updateNotificationChannelInt$10(ILjava/lang/String;Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T483C3_BlmQaNvdld5jC-PLIr-k(Lcom/android/server/notification/NotificationManagerService;ZLandroid/app/Notification;ILjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->lambda$reportForegroundServiceUpdate$11(ZLandroid/app/Notification;ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UrLihhgwm79YgkH7EOA2ISYP8QI(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$onStart$4(ILcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YC33IbBzokLEU0mV1vIgr2hBSjM(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->lambda$acquireWakeLockForPost$12(Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k9JzBdFHcNErlC5__-VPpTsbaCo(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$maybeNotifySystemUiListenerLifetimeExtendedLocked$19(Lcom/android/server/notification/NotificationRecord;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYFIDEcWoLAYUYKeGjvl50FfPbY(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->isChildOfCurrentGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mSUFX9o_tbmsae0r9w2sI6ayWco(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$onUserUnlocked$7(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sFLUZXni7YtX5mTWYK2XWyB1Lig(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->lambda$cancelNotificationLocked$15(Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$x1g3PZOBx2XfrX5NXZlalT0ROM4(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$postNotificationsWhenExitLockDownMode$17(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowedManagedServicePackages(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmi(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmArchive(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffectsSuppressors(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlagResolver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterruptionFilter(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCurrentToastShown(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerHints(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxPackageEnqueueRate(Lcom/android/server/notification/NotificationManagerService;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationChannelLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationChannelLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationInstanceIdSequence(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationListenerStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationListenerStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/policy/PermissionPolicyInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyFile(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPostNotificationTrackerFactory(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRedactOtpNotifications(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRedactOtpNotifications:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$RoleObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToastRateLimiter(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/utils/quota/MultiRateLimiter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToastRateLimitingDisabledUids(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTtlHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/TimeToLiveHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mTtlHelper:Lcom/android/server/notification/TimeToLiveHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUgmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/uri/UriGrantsManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxPackageEnqueueRate(Lcom/android/server/notification/NotificationManagerService;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/policy/PermissionPolicyInternal;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRedactOtpNotifications(Lcom/android/server/notification/NotificationManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRedactOtpNotifications:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyAdjustmentLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustmentLocked(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mareNotificationsEnabledForPackageInt(Lcom/android/server/notification/NotificationManagerService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->areNotificationsEnabledForPackageInt(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mblockToast(Lcom/android/server/notification/NotificationManagerService;IZZZ)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->blockToast(IZZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p13}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelGroupChildrenLocked(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotificationsWhenEnterLockDownMode(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationsWhenEnterLockDownMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrShell(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckUseFullScreenIntentPermission(Lcom/android/server/notification/NotificationManagerService;Landroid/content/AttributionSource;Landroid/content/pm/ApplicationInfo;Z)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkUseFullScreenIntentPermission(Landroid/content/AttributionSource;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdestroyPermissionOwner(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpNotificationRecords(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpRemoteViewStats(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpRemoteViewStats(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexitIdle(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->exitIdle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindAppNotificationByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findAppNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindInCurrentAndSnoozedNotificationByKeyLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindNotificationByKeyLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNotificationCount(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCount(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPackageImportanceWithIdentity(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getPackageImportanceWithIdentity(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetToastRecord(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/notification/NotificationManagerService;->getToastRecord(IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgrantUriPermission(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDurationReached(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleDurationReached(Lcom/android/server/notification/toast/ToastRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleGroupedNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleListenerHintsChanged(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleListenerInterruptionFilterChanged(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotificationPermissionChange(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->handleNotificationPermissionChange(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRankingReconsideration(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendRankingUpdate(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasCompanionDevice(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILjava/util/Set;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Ljava/lang/String;ILjava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misCallNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCallerSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUiOrShell()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCritical(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misNotificationAssistant(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IInterface;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationAssistant(Landroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misNotificationRecent(Lcom/android/server/notification/NotificationManagerService;J)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isNotificationRecent(J)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPackageInForegroundForToast(Lcom/android/server/notification/NotificationManagerService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isPackageInForegroundForToast(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mkeepProcessAliveForToastIfNeededLocked(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeNotifySystemUiListenerLifetimeExtendedListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifySystemUiListenerLifetimeExtendedListLocked(Ljava/util/List;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyListenersPostedAndLogLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->notifyListenersPostedAndLogLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monConversationRemovedInternal(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILjava/util/Set;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->onConversationRemovedInternal(Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostNotificationsWhenExitLockDownMode(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->postNotificationsWhenExitLockDownMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpullNotificationStates(Lcom/android/server/notification/NotificationManagerService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->pullNotificationStates(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveBitmapAndRepost(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeBitmapAndRepost(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveFromNotificationListsLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendAppBlockStateChangedBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->sendAppBlockStateChangedBroadcast(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munsnoozeAll(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeAll()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateInterruptionFilterLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNotificationBubbleFlags(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationBubbleFlags(Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetACTION_NOTIFICATION_TIMEOUT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMY_PID()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMY_UID()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smfindNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smfindNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smfindNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisBitmapExpired(JJJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->isBitmapExpired(JJJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisChildOfCurrentGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->isChildOfCurrentGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnotificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smwasChildOfForceRegroupedGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->wasChildOfForceRegroupedGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 431
    const-string v0, "NotificationService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 433
    const-string v0, "debug.child_notifs"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 438
    const-string v0, "debug.notification.interruptiveness"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    .line 441
    const-string v0, "com.android.dialer"

    const-string v3, "com.android.mms"

    invoke-static {v0, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ALLOWED_PKGS:Ljava/util/Set;

    const-wide/16 v3, 0x18

    .line 458
    invoke-static {v3, v4}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->BITMAP_DURATION:Ljava/time/Duration;

    .line 480
    const-string v13, "key_type"

    const-string v14, "key_summarization"

    const-string v3, "key_people"

    const-string v4, "key_snooze_criteria"

    const-string v5, "key_user_sentiment"

    const-string v6, "key_contextual_actions"

    const-string v7, "key_text_replies"

    const-string v8, "key_importance"

    const-string v9, "key_importance_proposal"

    const-string v10, "key_sensitive_content"

    const-string v11, "key_ranking_score"

    const-string v12, "key_not_conversation"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    .line 496
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 497
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    .line 498
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    .line 499
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENT_KEY_TYPES:[Ljava/lang/Integer;

    .line 502
    const-string v0, "android.app.role.DIALER"

    const-string v2, "android.app.role.EMERGENCY"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    const-wide/16 v2, 0x14

    .line 516
    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v0

    const-wide/16 v1, 0x2a

    .line 517
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v1

    const-wide/16 v2, 0x44

    .line 518
    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    .line 547
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    .line 636
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->POST_WAKE_LOCK_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v0, 0x3

    .line 638
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/notification/NotificationManagerService;->NOTIFICATION_TTL:J

    const-wide/16 v0, 0xe

    .line 640
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/notification/NotificationManagerService;->NOTIFICATION_MAX_AGE_AT_POST:J

    const-wide/16 v0, 0xfa

    .line 645
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ZEN_BROADCAST_DELAY:Ljava/time/Duration;

    .line 763
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 764
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 765
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2547
    new-instance v0, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationRecordLoggerImpl;-><init>()V

    new-instance v1, Lcom/android/internal/logging/InstanceIdSequence;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/notification/NotificationRecordLogger;Lcom/android/internal/logging/InstanceIdSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/NotificationRecordLogger;Lcom/android/internal/logging/InstanceIdSequence;)V
    .locals 2

    .line 2556
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 681
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 684
    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo v0, "ranker"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 689
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 691
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    const/4 p1, 0x0

    .line 693
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 698
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 701
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 703
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 707
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 711
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    .line 713
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 716
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    .line 751
    new-instance p1, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    const/4 p1, 0x1

    .line 758
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 759
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 768
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 770
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRedactOtpNotifications:Z

    .line 791
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    .line 794
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    .line 1337
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 2030
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationManagerPrivate:Lcom/android/server/notification/NotificationManagerPrivate;

    .line 2128
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2140
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 2160
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 2195
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2304
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3967
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$12;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 8018
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$13;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 8997
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$14;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$14;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    .line 2557
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 2558
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 2559
    sget-object p0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    sput-object p0, Landroid/app/Notification;->processAllowlistToken:Landroid/os/IBinder;

    return-void
.end method

.method public static clamp(III)I
    .locals 0

    .line 0
    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 3

    .line 11644
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 11646
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11647
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .locals 5

    .line 11614
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 11616
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11617
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x700

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-static {v3, p4, v4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11618
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11619
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6

    .line 11628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11629
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 11631
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 11632
    invoke-static {v4, p4, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne v5, p3, :cond_0

    .line 11633
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11634
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11635
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isBigPictureWithBitmapOrIcon(Landroid/app/Notification;)Z
    .locals 4

    .line 8262
    const-class v0, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8267
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.picture"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 8268
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    return v3

    .line 8273
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.pictureIcon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 8274
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public static isBitmapExpired(JJJ)Z
    .locals 0

    .line 0
    sub-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isChildOfCurrentGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 11301
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 11302
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11303
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11304
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-nez p1, :cond_0

    .line 11305
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 11216
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    .line 11222
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 11224
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public static privateSpaceFlagsEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static sendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 11035
    :try_start_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 11036
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V

    .line 11038
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 11041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canceled PendingIntent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static wasChildOfForceRegroupedGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 11318
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 11319
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11320
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11321
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-nez p1, :cond_0

    .line 11322
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getOriginalGroupKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final acquireWakeLockForPost(Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
    .locals 1

    .line 8392
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    return-object p0
.end method

.method public final addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .locals 6

    .line 7530
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 7531
    const-string p0, "key_group_key"

    invoke-virtual {v3, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7532
    new-instance v0, Landroid/service/notification/Adjustment;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 7533
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 7534
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method public addAutogroupKeyLocked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 7484
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7488
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7490
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7492
    invoke-virtual {v0, p2}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 7494
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 7497
    invoke-virtual {p0, v0, p2}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 7498
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 7501
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 7505
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7506
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1, v0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 7508
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_FORCE_GROUP:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p0, p1, v0}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 2

    .line 3670
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 3671
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3674
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 3675
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3657
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 3661
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    :cond_1
    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    .line 3665
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    :cond_2
    return-void
.end method

.method public addEnqueuedNotification(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1

    .line 2625
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2626
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2627
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3

    .line 2614
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2615
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2616
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2618
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2620
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final allowAssistant(ILandroid/content/ComponentName;)Z
    .locals 3

    .line 1126
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/4 v1, 0x0

    const/high16 v2, 0xc0000

    .line 1127
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1130
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1131
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    return v0

    :cond_0
    return v1
.end method

.method public allowDefaultApprovedServices(I)V
    .locals 3

    .line 948
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getDefaultComponents()Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    .line 949
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 950
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 951
    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->allowNotificationListener(ILandroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 954
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->allowDndPackages(I)V

    .line 956
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    return-void
.end method

.method public final allowDndPackage(ILjava/lang/String;)V
    .locals 1

    .line 1109
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p2, p1, v0}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1111
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public allowDndPackages(I)V
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getDefaultPackages()Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    .line 962
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 963
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDndPackage(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 965
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isDNDMigrationDone(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 966
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->setDNDMigrationDone(I)V

    :cond_1
    return-void
.end method

.method public final allowNotificationListener(ILandroid/content/ComponentName;)V
    .locals 1

    .line 1118
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p2, p1, v0, v0}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1121
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final applyAdjustmentLocked(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;Z)V
    .locals 8

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 7400
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 7401
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    .line 7402
    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 7404
    const-string v2, "key_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7405
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setBundleType(I)V

    .line 7407
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7408
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7409
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentAllowed(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 7410
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7412
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7413
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 7414
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v7

    .line 7413
    invoke-virtual {v6, v7, v5, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setAdjustmentTypeSupportedState(ILjava/lang/String;Z)V

    .line 7415
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentKeyTypeAllowed(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 7416
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7433
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 7434
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 7436
    :cond_5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7437
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->getClassificationChannelLocked(Lcom/android/server/notification/NotificationRecord;Landroid/os/Bundle;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 7439
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 7441
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    const/high16 v4, 0x40000

    invoke-virtual {p0, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7444
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 7447
    :cond_7
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 7449
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7450
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/server/notification/NotificationManagerService;->logClassificationChannelAdjustmentReceived(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_3

    .line 7440
    :cond_8
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7453
    :cond_9
    :goto_3
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 7454
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_sensitive_content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7456
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 7457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result p1

    .line 7455
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/notification/NotificationManagerService;->logSensitiveAdjustmentReceived(ZZI)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1

    .line 10690
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 10691
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10692
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 10693
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 10692
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 10695
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    return-void
.end method

.method public final areNotificationsEnabledForPackageInt(I)Z
    .locals 0

    .line 9239
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result p0

    return p0
.end method

.method public final blockToast(IZZZ)Z
    .locals 0

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    const-wide/32 p2, 0x7aa7659

    .line 10567
    invoke-static {p2, p3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 4

    if-eqz p1, :cond_2

    .line 14152
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    if-eqz p3, :cond_0

    .line 14156
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/ICallNotificationEventCallback;

    .line 14157
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/ICallNotificationEventCallback;->onCallNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 14159
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/ICallNotificationEventCallback;

    .line 14160
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 14161
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 14160
    invoke-interface {v1, v2, v3}, Landroid/app/ICallNotificationEventCallback;->onCallNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14165
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 14167
    :cond_1
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_2
    return-void
.end method

.method public final calculateHints()I
    .locals 4

    .line 3680
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 3681
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3682
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 3684
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final calculateSuppressedEffects()J
    .locals 4

    .line 3693
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    :cond_1
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_2
    return-wide v0
.end method

.method public calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I
    .locals 3

    const/4 p0, 0x7

    .line 3751
    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p1

    .line 3754
    :cond_0
    new-array v0, p0, [I

    fill-array-data v0, :array_0

    const/16 v1, 0x1c

    if-ge p3, v1, :cond_4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p0, :cond_1

    .line 3768
    aget v1, v0, p3

    not-int v2, v1

    and-int/2addr p1, v2

    .line 3769
    iget v2, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, v2

    or-int/2addr p1, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_2

    or-int/lit8 p1, p1, 0xc

    :cond_2
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_3

    or-int/lit8 p0, p1, 0x10

    return p0

    :cond_3
    return p1

    :cond_4
    add-int/lit8 p0, p1, -0x3

    if-lez p0, :cond_7

    and-int/lit8 p0, p1, -0x4

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    or-int/lit8 p0, p0, 0x2

    :cond_5
    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_6

    and-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_6

    and-int/lit16 p1, p0, 0x80

    if-eqz p1, :cond_6

    or-int/lit8 p0, p0, 0x1

    :cond_6
    return p0

    :cond_7
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_8

    or-int/lit16 p1, p1, 0x8c

    :cond_8
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_9

    or-int/lit8 p0, p1, 0x10

    return p0

    :cond_9
    return p1

    nop

    :array_0
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public final canBeNonDismissible(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)Z
    .locals 1

    .line 8860
    invoke-virtual {p2}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isEnterpriseExempted(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Landroid/app/Notification$CallStyle;

    .line 8861
    invoke-virtual {p2, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 8862
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isDefaultSearchSelectorPackage(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 8863
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isDefaultAdservicesPackage(Ljava/lang/String;)Z

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

.method public canUseManagedServices(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 12073
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p3, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 12078
    const-string p1, "NotificationService"

    const-string p2, "can\'t talk to pm"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZI)V
    .locals 12

    .line 11444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 11445
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$17;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v2, p5

    move/from16 v8, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService$17;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIIZJ)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelAllNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p7

    .line 11332
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    const/4 v2, 0x0

    move v13, v1

    move-object v14, v2

    :goto_0
    if-ltz v13, :cond_8

    .line 11333
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-eqz p6, :cond_0

    .line 11335
    invoke-virtual {v0, v1, v11}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move-object/from16 v15, p5

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 11338
    invoke-static {v1, v11, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    if-nez v9, :cond_2

    .line 11342
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 11345
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v2

    move-object/from16 v15, p5

    invoke-interface {v15, v2}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v9, :cond_4

    .line 11348
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v10, :cond_5

    .line 11351
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 11354
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupChild()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v14, :cond_6

    .line 11356
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 11358
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11361
    :cond_7
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11362
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11363
    invoke-virtual {v1, v12}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    move/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v5, p10

    move/from16 v4, p11

    move-wide/from16 v6, p12

    .line 11364
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v14, :cond_b

    .line 11368
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v12

    move v9, v1

    :goto_3
    if-ltz v9, :cond_a

    .line 11370
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 11371
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 11374
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11375
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11376
    invoke-virtual {v1, v12}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    move/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v5, p10

    move/from16 v4, p11

    move-wide/from16 v6, p12

    .line 11377
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    :cond_9
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 11381
    :cond_a
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    :cond_b
    return-void
.end method

.method public cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 13

    .line 11245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 11246
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$16;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v5, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService$16;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;IIIILjava/lang/String;J)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelGroupChildrenByListLocked(Ljava/util/ArrayList;ILjava/lang/String;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    .line 11506
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    .line 11507
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 11508
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    move/from16 v11, p2

    move-object/from16 v8, p3

    move-object/from16 v4, p10

    move-object/from16 v6, p11

    .line 11509
    invoke-interface {v4, v5, v11, v8, v6}, Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;->apply(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v1, :cond_0

    .line 11510
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v7

    invoke-interface {v1, v7}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11511
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    move/from16 v9, p12

    if-eq v9, v7, :cond_2

    goto :goto_1

    :cond_1
    move/from16 v9, p12

    .line 11512
    :goto_1
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    .line 11513
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v12, 0x0

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v15, p6

    .line 11512
    invoke-static/range {v6 .. v15}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 11514
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v3, p0

    .line 11515
    iget-object v6, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xc

    move-object/from16 v9, p6

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v10, p13

    move-object v4, v3

    .line 11516
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final cancelGroupChildrenLocked(ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V
    .locals 15

    if-nez p2, :cond_1

    .line 11487
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    const-string v1, "No package for group summary"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 11491
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v8, 0x1

    move-object v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-wide/from16 v13, p11

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;ILjava/lang/String;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    .line 11494
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;ILjava/lang/String;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    return-void
.end method

.method public cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 18

    move-object/from16 v1, p0

    .line 11204
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object v2, v0

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 11206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v17, v2

    move/from16 v2, p1

    invoke-direct/range {v0 .. v16}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;J)V

    const/4 v1, 0x0

    move-object/from16 v2, v17

    .line 11204
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;I)V

    return-void
.end method

.method public cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 14

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    .line 11187
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;III)V
    .locals 12

    move-object/from16 v9, p5

    move/from16 v10, p6

    const/4 v5, 0x0

    .line 8317
    const-string v6, "cancelNotificationWithTag"

    const/4 v4, 0x1

    move-object v7, p1

    move v2, p3

    move/from16 v1, p4

    move/from16 v3, p7

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v1, -0x1

    .line 8325
    :try_start_0
    invoke-virtual {p0, p2, p1, p3, v3}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v4, v1

    :goto_0
    if-ne v4, v1, :cond_0

    .line 8332
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trying to cancel notification for nonexistent pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8339
    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8340
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8342
    :try_start_1
    invoke-virtual {p0, p1, v9, v10, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8344
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 8345
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission to cancel a notification they did not post "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 8349
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_3
    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move/from16 v2, p4

    move/from16 v5, p6

    move/from16 v7, p8

    move v1, v4

    move-object v4, v9

    move v9, v3

    move-object v3, p1

    .line 8356
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public final cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V
    .locals 8

    .line 10902
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 10904
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mTtlHelper:Lcom/android/server/notification/TimeToLiveHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/TimeToLiveHelper;->cancelScheduledTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 10910
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 10912
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 10913
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 10918
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/notification/NotificationManagerService;->sendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    :cond_1
    if-eqz p6, :cond_5

    .line 10924
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v1, 0x12

    if-eq p3, v1, :cond_2

    const/4 v1, 0x1

    .line 10926
    iput-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 10928
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v3

    invoke-virtual {v1, p1, p3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 10930
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 10931
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10939
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    if-eqz p2, :cond_3

    .line 10941
    invoke-static {p2}, Lcom/android/server/notification/GroupHelper;->isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10942
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10944
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 10945
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 10946
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 10966
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->notifyCallNotificationEventListenerOnRemoved(Lcom/android/server/notification/NotificationRecord;)V

    .line 10970
    :cond_4
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {p2, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearEffectsLocked(Ljava/lang/String;)V

    :cond_5
    const/4 p2, 0x2

    if-eq p3, p2, :cond_6

    const/4 p2, 0x3

    if-eq p3, p2, :cond_6

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 10984
    :pswitch_0
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 10985
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    .line 10986
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-wide/from16 v4, p8

    .line 10985
    invoke-virtual {p2, v1, v3, v4, v5}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;J)V

    goto :goto_0

    .line 10980
    :cond_6
    :pswitch_1
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 10990
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object p2

    .line 10991
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-eqz v1, :cond_7

    .line 10992
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10993
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10995
    :cond_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 10996
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-eqz v1, :cond_8

    .line 11003
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 11004
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 11003
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 11005
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/16 p2, 0x14

    if-eq p3, p2, :cond_9

    .line 11010
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;I)V

    .line 11013
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 11014
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object p2

    const/4 v1, 0x5

    .line 11015
    invoke-virtual {p2, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 11016
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p2

    if-eq p4, v2, :cond_a

    if-eq p5, v2, :cond_a

    .line 11018
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31e

    invoke-virtual {p2, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 11019
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x573

    invoke-virtual {v1, v5, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 11021
    :cond_a
    invoke-static {p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 11023
    invoke-virtual {p1, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v2

    invoke-virtual {p1, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result p2

    invoke-virtual {p1, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v4

    move v3, p2

    move v1, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    .line 11022
    invoke-static/range {v0 .. v7}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIIIIILjava/lang/String;)V

    if-eqz p6, :cond_b

    .line 11026
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 11027
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result p2

    .line 11026
    invoke-interface {p0, p1, p3, p2}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationCancelled(Lcom/android/server/notification/NotificationRecord;II)V

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V
    .locals 10

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    .line 10893
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    return-void
.end method

.method public final cancelNotificationsWhenEnterLockDownMode(I)V
    .locals 7

    .line 11704
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11705
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 11707
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11708
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-eq v4, p1, :cond_0

    goto :goto_1

    .line 11711
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 11712
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v5

    const/16 v6, 0x17

    .line 11711
    invoke-virtual {v4, v3, v6, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 11715
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cancelScheduledTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1

    const/high16 v0, 0x10000000

    .line 10324
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationTimeoutPendingIntent(Lcom/android/server/notification/NotificationRecord;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10327
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public cancelToastLocked(I)V
    .locals 2

    .line 10412
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    .line 10413
    invoke-virtual {v0}, Lcom/android/server/notification/toast/ToastRecord;->hide()V

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 10416
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    .line 10419
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/toast/ToastRecord;

    .line 10422
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->scheduleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V

    .line 10424
    iget v0, v0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    .line 10425
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 10429
    instance-of p1, p1, Lcom/android/server/notification/toast/TextToastRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked(Z)V

    :cond_1
    return-void
.end method

.method public final checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 2

    .line 11873
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V

    return-void
.end method

.method public final checkCallerIsSameApp(Ljava/lang/String;II)V
    .locals 1

    if-nez p2, :cond_0

    .line 11877
    const-string/jumbo v0, "root"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11880
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    .line 11881
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not owned by uid "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCallerIsSystem()V
    .locals 2

    .line 11786
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 11789
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disallowed call for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 1

    .line 11809
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11812
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public final checkCallerIsSystemOrShell()V
    .locals 2

    .line 11778
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 11782
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final checkCallerIsSystemOrSystemUiOrShell()V
    .locals 1

    const/4 v0, 0x0

    .line 11793
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V

    return-void
.end method

.method public final checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V
    .locals 2

    .line 11797
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 11801
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11804
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 0

    .line 3964
    invoke-static {p1, p2, p3, p4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;ZZ)Z
    .locals 8

    .line 9073
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 9074
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9076
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 9077
    :goto_1
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v2, :cond_7

    if-nez v5, :cond_7

    .line 9082
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 9083
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 9084
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 9085
    invoke-virtual {p0, v2, p1}, Lcom/android/server/notification/NotificationManagerService;->isCallerInstantApp(II)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 9090
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Instant app "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot create notifications"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 9096
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 9097
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 9099
    :cond_4
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v2

    if-nez v2, :cond_6

    if-nez p6, :cond_6

    .line 9100
    iget-object p6, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p6, v1}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result p6

    .line 9101
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v2, p6, v2

    if-lez v2, :cond_6

    .line 9102
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 9103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 9104
    iget-wide p3, p0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    sub-long p3, p1, p3

    const-wide/16 v2, 0x1388

    cmp-long p3, p3, v2

    if-lez p3, :cond_5

    .line 9105
    const-string p3, "NotificationService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Package enqueue rate is "

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p6, ". Shedding "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9106
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p5

    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ". package="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 9105
    invoke-static {p3, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9107
    iput-wide p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    .line 9109
    :cond_5
    monitor-exit v5

    return v4

    .line 9112
    :cond_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9115
    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result p6

    if-nez p6, :cond_7

    .line 9116
    invoke-virtual {p0, v1, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCount(Ljava/lang/String;IILjava/lang/String;)I

    move-result p3

    const/16 p4, 0x32

    if-lt p3, p4, :cond_7

    .line 9118
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    .line 9119
    const-string p0, "NotificationService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package has already posted or enqueued "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " notifications.  Not showing more.  package="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 9112
    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 9127
    :cond_7
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p3

    const/high16 p4, 0x4000000

    if-eqz p3, :cond_9

    .line 9128
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 9130
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p6

    invoke-virtual {p6}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p6

    invoke-virtual {p6}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p6

    .line 9129
    invoke-virtual {p3, p6}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result p3

    invoke-virtual {p0, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_4

    .line 9132
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. PendingIntents attached to bubbles must be mutable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9136
    :cond_9
    :goto_4
    iget-object p3, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p3, :cond_d

    .line 9137
    array-length p6, p3

    move v2, v4

    :goto_5
    if-ge v2, p6, :cond_d

    aget-object v5, p3, v2

    .line 9138
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-eqz v6, :cond_b

    :cond_a
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget-object v5, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 9139
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result v5

    invoke-virtual {p0, v5, p4}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 9141
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. PendingIntents attached to actions with remote inputs must be mutable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9148
    :cond_d
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_11

    .line 9149
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p6

    move v2, v4

    :cond_e
    :goto_6
    if-ge v2, p6, :cond_11

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Landroid/app/Notification$Action;

    .line 9150
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_f

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-eqz v6, :cond_e

    :cond_f
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget-object v5, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 9151
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result v5

    invoke-virtual {p0, v5, p4}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_6

    .line 9153
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. PendingIntents attached to contextual actions with remote inputs must be mutable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9160
    :cond_11
    const-class p3, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, p3}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 9161
    iget-object p3, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p3, :cond_12

    move p3, v3

    goto :goto_7

    :cond_12
    move p3, v4

    .line 9162
    :goto_7
    iget p4, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 p4, p4, 0x4000

    if-eqz p4, :cond_13

    move p4, v3

    goto :goto_8

    :cond_13
    move p4, v4

    .line 9163
    :goto_8
    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result p6

    if-nez p6, :cond_15

    if-nez p3, :cond_15

    if-nez p4, :cond_15

    if-eqz p7, :cond_14

    goto :goto_9

    .line 9165
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. CallStyle notifications must be for a foreground service or user initated job or use a fullScreenIntent."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9172
    :cond_15
    :goto_9
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, v1, p4}, Lcom/android/server/notification/SnoozeHelper;->isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 9173
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p2

    const/4 p3, 0x6

    .line 9174
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 p3, 0x33f

    .line 9175
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 9173
    invoke-static {p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 9176
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object p3, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p2, p3, p5}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 9179
    sget-boolean p2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p2, :cond_16

    .line 9180
    const-string p2, "NotificationService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ignored enqueue for snoozed notification "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9182
    :cond_16
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p2, p1, p5}, Lcom/android/server/notification/SnoozeHelper;->update(ILcom/android/server/notification/NotificationRecord;)V

    .line 9183
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return v4

    .line 9188
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->areNotificationsEnabledForPackageInt(I)Z

    move-result p1

    xor-int/2addr p1, v3

    .line 9189
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p3

    .line 9190
    :try_start_2
    invoke-virtual {p0, p5}, Lcom/android/server/notification/NotificationManagerService;->isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p4

    or-int/2addr p1, p4

    .line 9191
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_19

    .line 9192
    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 9193
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p1, :cond_18

    .line 9194
    const-string p1, "NotificationService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Suppressing notification from package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " by user request."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9197
    :cond_18
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, p5}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    return v4

    .line 9201
    :cond_19
    invoke-virtual {v0}, Landroid/app/Notification;->hasAppProvidedWhen()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-lez p1, :cond_1a

    .line 9202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide p3

    sub-long/2addr p1, p3

    sget-wide p3, Lcom/android/server/notification/NotificationManagerService;->NOTIFICATION_MAX_AGE_AT_POST:J

    cmp-long p1, p1, p3

    if-lez p1, :cond_1a

    .line 9203
    const-string p1, "NotificationService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignored enqueue for old "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " notification "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9204
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, p5}, Lcom/android/server/notification/NotificationUsageStats;->registerTooOldBlocked(Lcom/android/server/notification/NotificationRecord;)V

    return v4

    :cond_1a
    return v3

    :catchall_1
    move-exception p0

    .line 9191
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public checkNotificationListenerAccess()V
    .locals 2

    .line 7347
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7349
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_NOTIFICATION_LISTENERS"

    const-string v1, "Caller must hold android.permission.MANAGE_NOTIFICATION_LISTENERS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final checkRemoteViews(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 2

    .line 8931
    iget-object v0, p4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8932
    iput-object v1, p4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 8934
    :cond_0
    iget-object v0, p4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8935
    iput-object v1, p4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 8937
    :cond_1
    iget-object v0, p4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8938
    iput-object v1, p4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 8940
    :cond_2
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_5

    .line 8941
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8942
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 8944
    :cond_3
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8945
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 8947
    :cond_4
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 8948
    iget-object p0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_5
    return-void
.end method

.method public final checkRestrictedCategories(Landroid/app/Notification;)V
    .locals 3

    .line 11826
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.hardware.type.automotive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11830
    :catch_0
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    const-string v1, "Unable to confirm if it\'s safe to skip category restrictions check thus the check will be done anyway"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11833
    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v1, "car_emergency"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "car_warning"

    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 11834
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "car_information"

    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 11835
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11836
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 11838
    const-string v0, "Notification category %s restricted"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11836
    const-string v0, "android.permission.SEND_CATEGORY_CAR_NOTIFICATIONS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final checkUseFullScreenIntentPermission(Landroid/content/AttributionSource;Landroid/content/pm/ApplicationInfo;Z)Z
    .locals 2

    .line 8902
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-ge p2, v0, :cond_0

    return v1

    .line 8906
    :cond_0
    const-string p2, "android.permission.USE_FULL_SCREEN_INTENT"

    if-eqz p3, :cond_1

    .line 8907
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Landroid/permission/PermissionManager;->checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 8910
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {p0, p2, p1}, Landroid/permission/PermissionManager;->checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p0

    :goto_0
    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public clearAutogroupSummaryLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 7547
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 7548
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7550
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 7549
    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 7552
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    .line 7553
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v9, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_0
    return-void
.end method

.method public clearNotifications()V
    .locals 2

    .line 2604
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2605
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2606
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2607
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2608
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 2609
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public convertSummaryToNotificationLocked(Ljava/lang/String;)Z
    .locals 4

    .line 7723
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7728
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7729
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 7730
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_1

    .line 7731
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7732
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7735
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 7736
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v2, v0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 7738
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationSummaryConverted(Ljava/lang/String;)V

    .line 7739
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_FORCE_GROUP_SUMMARY:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p0, p1, v0}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public correctCategory(III)I
    .locals 1

    .line 0
    and-int p0, p1, p2

    if-eqz p0, :cond_0

    and-int v0, p3, p2

    if-nez v0, :cond_0

    not-int p0, p2

    and-int/2addr p0, p1

    return p0

    :cond_0
    if-nez p0, :cond_1

    and-int p0, p3, p2

    if-eqz p0, :cond_1

    or-int p0, p1, p2

    return p0

    :cond_1
    return p1
.end method

.method public createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)Lcom/android/server/notification/NotificationRecord;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v1, p6

    .line 7639
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    move/from16 v3, p1

    invoke-virtual {v2, v6, v3}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v13

    .line 7640
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v14

    .line 7641
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    const/16 v16, 0x0

    if-nez v15, :cond_0

    .line 7645
    monitor-exit v14

    return-object v16

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 7647
    :cond_0
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    .line 7648
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    .line 7649
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v18

    .line 7650
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_1

    .line 7652
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    :cond_1
    move-object v10, v2

    .line 7654
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7659
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 7660
    iget-object v3, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 7669
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.appInfo"

    const-class v5, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 7671
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 7672
    const-string v5, "android.appInfo"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7675
    new-instance v5, Landroid/app/Notification$Builder;

    .line 7676
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 7677
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x1

    .line 7678
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v7, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    .line 7679
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 7680
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v7, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 7681
    invoke-virtual {v3, v7, v5}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 7682
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v1, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 7683
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 7684
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 7685
    iget-object v1, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7686
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7688
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x0

    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/ActivityManagerInternal;->getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 7692
    :cond_2
    new-instance v1, Landroid/service/notification/StatusBarNotification;

    .line 7693
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7694
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v3

    .line 7696
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    .line 7697
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v7

    .line 7698
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    move-object v8, v11

    .line 7699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v4, v10

    move-object/from16 v10, p4

    move-object/from16 v5, p4

    move-object v0, v4

    move/from16 v4, p5

    invoke-direct/range {v1 .. v12}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 7700
    new-instance v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 7701
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    .line 7702
    invoke-virtual {v2, v13}, Lcom/android/server/notification/NotificationRecord;->setImportanceFixed(Z)V

    .line 7704
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getIsAppImportanceLocked()Z

    move-result v3

    .line 7703
    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 7707
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    goto :goto_0

    :cond_3
    move-object/from16 v5, v16

    :goto_0
    if-eqz v5, :cond_4

    .line 7713
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    .line 7712
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7715
    monitor-exit v14

    return-object v5

    .line 7717
    :cond_4
    monitor-exit v14

    return-object v16

    :goto_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .locals 8

    .line 3581
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3584
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3585
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 3586
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 3586
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZIZ)V

    if-nez v5, :cond_0

    .line 3589
    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V

    :cond_0
    if-nez p5, :cond_1

    .line 3592
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 3593
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 p2, 0x1

    .line 3592
    invoke-virtual {p0, v2, p1, v4, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    :cond_1
    return-void
.end method

.method public createReviewPermissionsNotification()Landroid/app/Notification;
    .locals 10

    .line 14562
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_APPS_NOTIFICATION_SETTINGS_FOR_REVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14563
    new-instance v1, Landroid/content/Intent;

    const-string v2, "REVIEW_NOTIF_ACTION_REMIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14564
    new-instance v2, Landroid/content/Intent;

    const-string v3, "REVIEW_NOTIF_ACTION_DISMISS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14565
    new-instance v3, Landroid/content/Intent;

    const-string v4, "REVIEW_NOTIF_ACTION_CANCELED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14568
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 14569
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104093c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 14572
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0xc000000

    .line 14571
    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 14574
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 14575
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 14576
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x104093b

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 14579
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 14578
    invoke-static {v9, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v4, v6, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 14581
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 14583
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "SYSTEM_CHANGES_ALERTS"

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x10809c2

    .line 14584
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 14585
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104093e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 14586
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104093d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 14587
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 14589
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v4, 0x20

    const/4 v5, 0x1

    .line 14590
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 14591
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 14592
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 14593
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 14594
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v7, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 14596
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final createToastRateLimiter()Lcom/android/server/utils/quota/MultiRateLimiter;
    .locals 1

    .line 3959
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/android/server/notification/NotificationManagerService;->TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimits([Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;)Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->build()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object p0

    return-object p0
.end method

.method public final destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 4

    .line 11170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 11172
    :try_start_0
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": destroying owner"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 11173
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 p3, 0x0

    const/4 v2, -0x1

    invoke-interface {p0, p1, p3, v2, p2}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11175
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11176
    throw p0
.end method

.method public doChannelWarningToast(ILjava/lang/CharSequence;)V
    .locals 0

    .line 9026
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 9

    .line 7885
    const-string v0, "Current Notification Manager state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7886
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_0

    .line 7887
    const-string v0, " (filtered to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x3a

    .line 7889
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 7891
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 7894
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 7895
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 7897
    const-string v4, "  Toast Queue:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    .line 7899
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/toast/ToastRecord;

    const-string v6, "    "

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/notification/toast/ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 7901
    :cond_2
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7903
    :cond_3
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7906
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v0, :cond_a

    .line 7910
    :try_start_1
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    if-nez v3, :cond_5

    .line 7911
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    .line 7913
    :cond_5
    :goto_4
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v3, :cond_6

    .line 7914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mMaxPackageEnqueueRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  hideSilentStatusBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7916
    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->shouldHideSilentStatusIcons()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7915
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7917
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/notification/NotificationAttentionHelper;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7919
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mArchive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7920
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    if-nez v0, :cond_a

    .line 7923
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 7925
    const-string v4, "  Enqueued Notification List:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v1

    :goto_5
    if-ge v4, v3, :cond_8

    .line 7927
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7928
    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_6

    .line 7929
    :cond_7
    const-string v6, "    "

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v8, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 7931
    :cond_8
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7934
    :cond_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    :cond_a
    if-nez v0, :cond_10

    .line 7939
    const-string v3, "\n  Ranking Config:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7940
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7942
    const-string v3, "\n Notification Preferences:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7943
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 7945
    const-string p3, "\n  Notification listeners:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7946
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7947
    const-string p3, "    mListenerHints: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 7949
    const-string p3, "    mListenersDisablingEffects: ("

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7950
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    move v3, v1

    :goto_7
    if-ge v3, p3, :cond_f

    .line 7952
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-lez v3, :cond_b

    const/16 v5, 0x3b

    .line 7953
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 7954
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hint["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7956
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 7957
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    move v6, v1

    :goto_8
    if-ge v6, v5, :cond_e

    if-lez v6, :cond_c

    const/16 v7, 0x2c

    .line 7960
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 7961
    :cond_c
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    if-eqz v7, :cond_d

    .line 7963
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    const/16 p3, 0x29

    .line 7967
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(C)V

    .line 7969
    const-string p3, "\n  NotificationListenerStats:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7970
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    const-string v1, "    "

    invoke-virtual {p3, p1, v1}, Lcom/android/server/notification/NotificationListenerStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7972
    const-string p3, "\n  Notification assistant services:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7973
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7976
    :cond_10
    iget-boolean p3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz p3, :cond_11

    if-eqz v0, :cond_12

    .line 7977
    :cond_11
    const-string p3, "\n  Zen Mode:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7978
    const-string p3, "    mInterruptionFilter="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 7979
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v1, "    "

    invoke-virtual {p3, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7981
    const-string p3, "\n  Zen Log:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7982
    const-string p3, "    "

    invoke-static {p1, p3}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7985
    :cond_12
    const-string p3, "\n  Condition providers:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7986
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7988
    const-string p3, "\n  Group summaries:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7989
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_13
    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7990
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7991
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7992
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v3, :cond_13

    .line 7993
    const-string v1, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7994
    const-string v1, "      "

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v1, v4, v5}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_9

    :cond_14
    if-nez v0, :cond_15

    .line 7999
    const-string p3, "\n  Usage Stats:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8000
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string v0, "    "

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8003
    const-string p2, "\n  TimeToLive alarms:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8004
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mTtlHelper:Lcom/android/server/notification/TimeToLiveHelper;

    const-string p3, "    "

    invoke-virtual {p2, p1, p3}, Lcom/android/server/notification/TimeToLiveHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8009
    :cond_15
    const-string p2, "\n  GroupHelper:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8010
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    const-string p2, "    "

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8012
    monitor-exit v2

    return-void

    :goto_a
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 3

    .line 7770
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7772
    :try_start_0
    const-string/jumbo v1, "service"

    const-string v2, "Notification Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7773
    const-string v1, "bans"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7774
    const-string/jumbo v1, "ranking"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7775
    const-string/jumbo p3, "stats"

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7776
    const-string p3, "channels"

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7778
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 7780
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 7

    .line 7868
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7870
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 7872
    const-string v2, "  Notification List:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 7874
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7875
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 7876
    :cond_0
    const-string v4, "    "

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7878
    :cond_1
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7880
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 10

    .line 7794
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7795
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7796
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    .line 7798
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 7799
    iget-boolean v2, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9

    .line 7800
    :cond_0
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x1

    const-wide v2, 0x20b00000001L

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 7803
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v7

    :goto_2
    if-ge v8, v6, :cond_3

    .line 7805
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 7806
    iget-boolean v2, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 7807
    :cond_2
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x0

    const-wide v2, 0x20b00000001L

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 7810
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v6

    .line 7811
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v9, v7

    :goto_4
    if-ge v9, v8, :cond_5

    .line 7813
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 7814
    iget-boolean v2, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5

    .line 7815
    :cond_4
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x2

    const-wide v2, 0x20b00000001L

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    const-wide v2, 0x10b00000002L

    .line 7819
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 7820
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 7821
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    const-wide v5, 0x20b00000004L

    .line 7822
    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_6

    .line 7824
    :cond_6
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v2, 0x10b00000003L

    .line 7826
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 7827
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7828
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7830
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    const-wide v2, 0x10500000004L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move v0, v7

    .line 7832
    :goto_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    const-wide v2, 0x20b00000005L

    .line 7833
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 7836
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 7837
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const-wide v5, 0x10500000001L

    .line 7836
    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7838
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 7839
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move v5, v7

    .line 7840
    :goto_8
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 7841
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    const-wide v8, 0x20b00000003L

    .line 7842
    invoke-virtual {v6, v1, v8, v9}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 7846
    :cond_7
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    const-wide v2, 0x10b00000006L

    .line 7849
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 7851
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7852
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v2, 0x10b00000007L

    .line 7854
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 7855
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7856
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v2, 0x10b00000008L

    .line 7858
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 7859
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/RankingHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 7860
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 7861
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7862
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7864
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    .line 7862
    :goto_9
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dumpRemoteViewStats(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 3

    .line 7784
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    iget-wide v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats;->remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;

    move-result-object p0

    if-nez p0, :cond_0

    .line 7786
    const-string/jumbo p0, "no remote view stats reported."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 7789
    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/notification/PulledStats;->dump(ILjava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZ)V
    .locals 12

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 8369
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZZ)V

    return-void
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZZ)V
    .locals 13

    move/from16 v3, p3

    .line 8377
    invoke-virtual {p0, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->acquireWakeLockForPost(Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p10

    move/from16 v12, p11

    .line 8380
    :try_start_0
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;ZZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 8385
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    .line 8387
    throw p0
.end method

.method public final enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;ZZ)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v8, p6

    move-object/from16 v10, p7

    .line 8409
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v3, " notification="

    const-string v4, " id="

    const-string v12, "NotificationService"

    if-eqz v2, :cond_0

    .line 8410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enqueueNotificationInternal: pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1b

    if-eqz v10, :cond_1b

    .line 8420
    const-string v2, "com.google.android.gms"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x0

    if-nez v2, :cond_1a

    const-string v2, "com.google.android.apps.wellbeing"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_c

    .line 8425
    :cond_1
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->ALLOWED_PKGS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eink project,Blocked notification from package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_2
    const/4 v5, 0x0

    .line 8430
    const-string v6, "enqueueNotification"

    const/4 v4, 0x1

    move/from16 v2, p3

    move/from16 v3, p8

    move-object v7, v1

    move/from16 v1, p4

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v14, v2

    move v15, v3

    move-object v1, v7

    .line 8432
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    const/4 v2, -0x1

    .line 8439
    :try_start_0
    invoke-virtual {v0, v9, v1, v14, v5}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v3

    goto :goto_0

    :catch_0
    move v7, v2

    :goto_0
    if-eq v7, v2, :cond_19

    .line 8449
    invoke-virtual {v10}, Landroid/app/Notification;->getAllowlistToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8450
    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 8451
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected allowlist token received from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8456
    :cond_4
    :goto_1
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v10, v2}, Landroid/app/Notification;->overrideAllowlistToken(Landroid/os/IBinder;)V

    .line 8458
    invoke-virtual {v0, v10}, Lcom/android/server/notification/NotificationManagerService;->checkRestrictedCategories(Landroid/app/Notification;)V

    .line 8465
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    move-object/from16 v3, p5

    move v6, v5

    move v4, v8

    move-object v2, v10

    move-object/from16 v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->applyForegroundServiceNotification(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    move-result-object v1

    move v3, v4

    move-object v4, v5

    move v5, v6

    .line 8469
    const-class v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    const/4 v10, 0x1

    if-eqz v2, :cond_5

    .line 8471
    invoke-interface {v2, v3, v5, v4}, Lcom/android/server/job/JobSchedulerInternal;->isNotificationAssociatedWithAnyUserInitiatedJobs(IILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v10

    move v8, v2

    :goto_2
    move-object v2, v4

    move v6, v7

    move-object v7, v1

    move v4, v3

    move-object/from16 v3, p5

    move-object/from16 v1, p7

    goto :goto_3

    :cond_5
    move v8, v10

    goto :goto_2

    .line 8476
    :goto_3
    :try_start_1
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->fixNotification(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/ActivityManagerInternal$ServiceNotificationPolicy;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    move v2, v6

    .line 8486
    sget-object v6, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    if-ne v7, v6, :cond_6

    .line 8490
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->isNotificationShownInternal(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v1, 0x0

    move-object/from16 v2, p7

    move v3, v4

    move-object/from16 v4, p1

    .line 8491
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    return v13

    .line 8496
    :cond_6
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 8498
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    const/4 v9, 0x0

    move v4, v10

    move-object v8, v11

    .line 8500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move/from16 v6, p4

    move-object/from16 v7, p7

    move-object v4, v3

    move v14, v5

    move/from16 v16, v13

    move-object/from16 v13, p0

    move/from16 v3, p6

    move v5, v2

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    move-object v6, v0

    move-object v9, v2

    move v2, v5

    move-object v10, v7

    move-object v11, v8

    move v8, v3

    move-object v7, v4

    .line 8503
    invoke-virtual {v10}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 8504
    iget-boolean v1, v13, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    if-eqz v1, :cond_7

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1, v10}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v1}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 8505
    new-instance v0, Landroid/app/Notification$TvExtender;

    invoke-direct {v0, v10}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v0}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v0

    :cond_7
    move-object v4, v0

    .line 8507
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p1

    move v3, v2

    move-object v0, v13

    move/from16 v2, p3

    .line 8508
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->getNotificationChannelRestoreDeleted(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    if-nez v5, :cond_9

    .line 8511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Channel found for pkg="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", channelId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", tag="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", opPkg="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callingUid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", incomingUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notificationUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notification="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8522
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8523
    iget-object v0, v13, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Developer warning for package \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\nFailed to post notification on channel \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\nSee log for more details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->doChannelWarningToast(ILjava/lang/CharSequence;)V

    :cond_8
    return v16

    .line 8538
    :cond_9
    iget-object v0, v13, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/notification/PreferencesHelper;->canBePromoted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8539
    invoke-virtual {v10}, Landroid/app/Notification;->hasPromotableCharacteristics()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8540
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v9, 0x1

    if-le v0, v9, :cond_a

    .line 8541
    iget v0, v10, Landroid/app/Notification;->flags:I

    const/high16 v9, 0x40000

    or-int/2addr v0, v9

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 8545
    :cond_a
    new-instance v9, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v13}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0, v6, v5}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    .line 8546
    iget-object v0, v13, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v1, v14}, Lcom/android/server/notification/PermissionHelper;->isPermissionUserSet(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    move/from16 v0, p9

    .line 8547
    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setPostSilently(Z)V

    move/from16 v6, v16

    .line 8548
    invoke-virtual {v9, v6}, Lcom/android/server/notification/NotificationRecord;->setFlagBubbleRemoved(Z)V

    .line 8549
    iget-object v0, v13, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setPkgAllowedAsConvo(Z)V

    .line 8550
    iget-object v0, v13, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v1, v14}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v0

    .line 8551
    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setImportanceFixed(Z)V

    .line 8552
    invoke-virtual {v10}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8553
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    const/4 v6, 0x4

    and-int/2addr v0, v6

    if-eqz v0, :cond_b

    .line 8554
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v0

    if-nez v0, :cond_c

    .line 8555
    :cond_b
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v15, 0x1

    if-eq v0, v15, :cond_e

    .line 8556
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    .line 8569
    :cond_c
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "miscellaneous"

    .line 8570
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v4, 0x1

    .line 8571
    invoke-virtual {v5, v4}, Landroid/app/NotificationChannel;->setUserVisibleTaskShown(Z)V

    .line 8572
    invoke-virtual {v9, v5}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_d
    move-object v15, v1

    move v2, v3

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v0, 0x2

    .line 8559
    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 8560
    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    .line 8561
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v0

    if-nez v0, :cond_f

    .line 8562
    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->unlockFields(I)V

    const/4 v4, 0x1

    .line 8563
    invoke-virtual {v5, v4}, Landroid/app/NotificationChannel;->setUserVisibleTaskShown(Z)V

    .line 8565
    :cond_f
    iget-object v0, v13, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v4, 0x0

    .line 8567
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v6

    move-object/from16 v26, v5

    move v5, v2

    move v2, v3

    move-object/from16 v3, v26

    .line 8565
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZIZ)V

    move-object v15, v1

    .line 8568
    invoke-virtual {v9, v3}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 8576
    :goto_5
    iget-object v0, v13, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    if-eqz v0, :cond_10

    .line 8577
    invoke-virtual {v10}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v15, v11}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    .line 8579
    :goto_6
    invoke-virtual {v10}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    if-nez v0, :cond_11

    .line 8580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notification "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " added an invalid shortcut"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8582
    :cond_11
    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 8583
    iget-object v1, v13, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v15, v2}, Lcom/android/server/notification/PreferencesHelper;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/server/notification/NotificationRecord;->setHasSentValidMsg(Z)V

    .line 8584
    iget-object v1, v13, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 8585
    invoke-virtual {v1, v15, v2}, Lcom/android/server/notification/PreferencesHelper;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result v1

    .line 8584
    invoke-virtual {v9, v1}, Lcom/android/server/notification/NotificationRecord;->userDemotedAppFromConvoSpace(Z)V

    .line 8588
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v6, 0x1

    :goto_7
    move-object v4, v7

    move v3, v8

    move-object v5, v9

    move v1, v14

    move/from16 v7, p11

    move-object v8, v0

    move-object v0, v13

    goto :goto_8

    :cond_12
    const/4 v6, 0x0

    goto :goto_7

    .line 8587
    :goto_8
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;ZZ)Z

    move-result v2

    move-object/from16 v26, v5

    move v5, v1

    move-object/from16 v1, v26

    if-nez v2, :cond_13

    const/16 v16, 0x0

    return v16

    .line 8592
    :cond_13
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v2, v15}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByAppAndAccepted(Ljava/lang/String;)V

    if-eqz v8, :cond_14

    .line 8599
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    invoke-virtual {v2, v8, v11}, Lcom/android/server/notification/ShortcutHelper;->cacheShortcut(Landroid/content/pm/ShortcutInfo;Landroid/os/UserHandle;)V

    .line 8603
    :cond_14
    iget-object v2, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v2, :cond_16

    .line 8604
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 8606
    const-class v3, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DeviceIdleInternal;

    .line 8607
    invoke-interface {v3}, Lcom/android/server/DeviceIdleInternal;->getNotificationAllowlistDuration()J

    move-result-wide v21

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_16

    .line 8609
    iget-object v4, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    if-eqz v4, :cond_15

    .line 8611
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v19

    sget-object v20, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    const/16 v24, 0x136

    const-string v25, "NotificationManagerService"

    const/16 v23, 0x0

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v25}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V

    move-object/from16 v6, v20

    .line 8616
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    const/4 v8, 0x7

    invoke-virtual {v7, v4, v6, v8}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 8625
    :cond_16
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->getPackageImportanceWithIdentity(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_17

    const/4 v13, 0x1

    goto :goto_a

    :cond_17
    const/4 v13, 0x0

    .line 8627
    :goto_a
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    move-object/from16 p7, p10

    move/from16 p6, p12

    move-object/from16 p2, v0

    move-object/from16 p4, v1

    move-object/from16 p1, v3

    move/from16 p3, v5

    move/from16 p5, v13

    invoke-direct/range {p1 .. p7}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v17, 0x1

    return v17

    :catch_1
    move-exception v0

    move-object v10, v1

    .line 8479
    invoke-virtual {v10}, Landroid/app/Notification;->isForegroundService()Z

    move-result v1

    if-nez v1, :cond_18

    .line 8482
    const-string v1, "Cannot fix notification"

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    const/16 v16, 0x0

    return v16

    .line 8480
    :cond_18
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid FGS notification"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_19
    move v2, v14

    .line 8445
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trying to post for invalid pkg "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in user "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8421
    :cond_1a
    :goto_c
    const-string v0, "enqueueNotificationInternal gms Notification,so return!!"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 8415
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "null not allowed: pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final exitIdle()V
    .locals 1

    .line 3500
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    if-eqz p0, :cond_0

    .line 3501
    const-string/jumbo v0, "notification interaction"

    invoke-virtual {p0, v0}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final findAppNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/List;
    .locals 5

    .line 11555
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11556
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 11558
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11559
    invoke-static {v3, p3, v1}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11560
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11561
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public findCurrentAndSnoozedGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 11526
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/notification/SnoozeHelper;->getNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11527
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 5

    .line 11570
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11571
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 11573
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11574
    invoke-static {v3, p4, v1}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11575
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11576
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 11534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11535
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11536
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 11537
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 11536
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 1

    .line 11543
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11545
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 1

    .line 11588
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 11591
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .locals 1

    .line 11600
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 11603
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .locals 1

    .line 10701
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    return p0
.end method

.method public finishWindowTokenLocked(Landroid/os/IBinder;I)V
    .locals 1

    .line 10434
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10439
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public fixNotification(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/ActivityManagerInternal$ServiceNotificationPolicy;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8700
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p5, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p5

    :goto_0
    const/high16 v4, 0x10000000

    invoke-virtual {v0, p2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 8703
    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 8706
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.summarization"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8708
    invoke-virtual {p1}, Landroid/app/Notification;->isForegroundService()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    if-ne p7, v3, :cond_1

    .line 8709
    iget p7, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p7, p7, -0x41

    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 8711
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification;->isUserInitiatedJob()Z

    move-result p7

    if-eqz p7, :cond_2

    if-eqz p8, :cond_2

    .line 8712
    iget p7, p1, Landroid/app/Notification;->flags:I

    const p8, -0x8001

    and-int/2addr p7, p8

    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 8716
    :cond_2
    invoke-virtual {p1}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result p7

    if-eqz p7, :cond_3

    .line 8717
    iget p7, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p7, p7, -0x11

    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 8721
    :cond_3
    iget p7, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p7, p7, 0x2

    if-lez p7, :cond_4

    .line 8722
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->canBeNonDismissible(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)Z

    move-result p7

    if-eqz p7, :cond_4

    .line 8723
    iget p7, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 p7, p7, 0x2000

    iput p7, p1, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 8725
    :cond_4
    iget p7, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p7, p7, -0x2001

    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 8728
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p7

    const-string p8, "android.permission.USE_COLORIZED_NOTIFICATIONS"

    invoke-virtual {p7, p8, v2, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p7

    if-nez p7, :cond_5

    .line 8732
    iget p7, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 p7, p7, 0x800

    iput p7, p1, Landroid/app/Notification;->flags:I

    goto :goto_2

    .line 8734
    :cond_5
    iget p7, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p7, p7, -0x801

    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 8737
    :goto_2
    iget-object p7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p8, "android.allowDuringSetup"

    invoke-virtual {p7, p8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p7

    const-string/jumbo v3, "warning: pkg "

    const-string v4, "NotificationService"

    if-eqz p7, :cond_6

    .line 8738
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p7

    const-string v5, "android.permission.NOTIFICATION_DURING_SETUP"

    invoke-virtual {p7, v5, v2, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p7

    if-eqz p7, :cond_6

    .line 8741
    iget-object p7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p7, p8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8742
    sget-boolean p7, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p7, :cond_6

    .line 8743
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, " attempting to show during setup without holding perm "

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {v4, p7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8750
    :cond_6
    iget p7, p1, Landroid/app/Notification;->flags:I

    const p8, -0x14001

    and-int/2addr p7, p8

    .line 8754
    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 8757
    iget-object p7, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p7, :cond_7

    .line 8758
    new-instance p7, Landroid/content/AttributionSource$Builder;

    invoke-direct {p7, p6}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 8759
    invoke-virtual {p7, p2}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p7

    const/4 p8, 0x1

    .line 8760
    invoke-virtual {p0, p7, v0, p8}, Lcom/android/server/notification/NotificationManagerService;->checkUseFullScreenIntentPermission(Landroid/content/AttributionSource;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result p7

    if-nez p7, :cond_7

    .line 8763
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/notification/NotificationManagerService;->makeStickyHun(Landroid/app/Notification;Ljava/lang/String;I)V

    .line 8768
    :cond_7
    iget-object p5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p5, :cond_c

    .line 8770
    array-length p5, p5

    move p7, v1

    :goto_3
    if-ge p7, p5, :cond_c

    .line 8772
    iget-object p8, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object p8, p8, p7

    if-nez p8, :cond_b

    .line 8778
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    move p8, v1

    :goto_4
    if-ge p8, p5, :cond_9

    .line 8780
    iget-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p8

    if-eqz v0, :cond_8

    .line 8781
    invoke-virtual {p7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 p8, p8, 0x1

    goto :goto_4

    .line 8784
    :cond_9
    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-eqz p5, :cond_a

    .line 8785
    new-array p5, v1, [Landroid/app/Notification$Action;

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Landroid/app/Notification$Action;

    iput-object p5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    goto :goto_5

    :cond_a
    const/4 p5, 0x0

    .line 8787
    iput-object p5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    goto :goto_5

    :cond_b
    add-int/lit8 p7, p7, 0x1

    goto :goto_3

    .line 8793
    :cond_c
    :goto_5
    iget p5, p1, Landroid/app/Notification;->flags:I

    const p7, -0x40001

    and-int/2addr p5, p7

    iput p5, p1, Landroid/app/Notification;->flags:I

    .line 8796
    const-class p5, Landroid/app/Notification$CallStyle;

    invoke-virtual {p1, p5}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p5

    if-eqz p5, :cond_d

    .line 8798
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p5

    .line 8799
    invoke-virtual {p5}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p5

    check-cast p5, Landroid/app/Notification$CallStyle;

    .line 8800
    invoke-virtual {p5}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object p5

    .line 8801
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p7

    new-array p7, p7, [Landroid/app/Notification$Action;

    iput-object p7, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 8802
    invoke-interface {p5, p7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8806
    :cond_d
    const-class p5, Landroid/app/Notification$MediaStyle;

    invoke-virtual {p1, p5}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p5

    if-nez p5, :cond_e

    const-class p5, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 8807
    invoke-virtual {p1, p5}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p5

    if-eqz p5, :cond_10

    .line 8808
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p5

    const-string p7, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {p5, p7, v2, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p5

    if-eqz p5, :cond_f

    .line 8811
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p7, "android.mediaRemoteDevice"

    invoke-virtual {p5, p7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8812
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p7, "android.mediaRemoteIcon"

    invoke-virtual {p5, p7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8813
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p7, "android.mediaRemoteIntent"

    invoke-virtual {p5, p7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8814
    sget-boolean p5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p5, :cond_f

    .line 8815
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Package "

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ": Use of setRemotePlayback requires the MEDIA_CONTENT_CONTROL permission"

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v4, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-wide/32 p7, 0xfbf0fec

    .line 8821
    invoke-static {p7, p8, p6}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p5

    if-eqz p5, :cond_10

    .line 8823
    iget p5, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p5, p5, 0x20

    iput p5, p1, Landroid/app/Notification;->flags:I

    .line 8828
    :cond_10
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p7, "android.substName"

    invoke-virtual {p5, p7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_11

    .line 8829
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p5

    const-string p8, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {p5, p8, v2, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p5

    if-eqz p5, :cond_11

    .line 8832
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p5, p7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8833
    sget-boolean p5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p5, :cond_11

    .line 8834
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " attempting to substitute app name without holding perm "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v4, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8842
    :cond_11
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/notification/NotificationManagerService;->checkRemoteViews(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V

    .line 8845
    invoke-virtual {p1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long p0, p2, p4

    if-nez p0, :cond_12

    .line 8846
    sget-wide p2, Lcom/android/server/notification/NotificationManagerService;->NOTIFICATION_TTL:J

    invoke-virtual {p1, p2, p3}, Landroid/app/Notification;->setTimeoutAfter(J)V

    .line 8851
    :cond_12
    invoke-virtual {p1}, Landroid/app/Notification;->fixSilentGroup()V

    return-void
.end method

.method public getAllUsersNotificationPermissions()Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 7753
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7754
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 7757
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 7758
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 7760
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 7759
    invoke-virtual {v3, v2}, Lcom/android/server/notification/PermissionHelper;->getNotificationPermissionValues(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 7761
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 7762
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getApprovedAssistant(I)Landroid/content/ComponentName;
    .locals 0

    .line 14521
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 14522
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p0

    .line 14523
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0
.end method

.method public getBinderService()Landroid/app/INotificationManager;
    .locals 0

    .line 3733
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public final getClassificationChannelLocked(Lcom/android/server/notification/NotificationRecord;Landroid/os/Bundle;)Landroid/app/NotificationChannel;
    .locals 3

    .line 7467
    const-string v0, "key_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    .line 7469
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7470
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    .line 7469
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/notification/PreferencesHelper;->getReservedChannel(Ljava/lang/String;II)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7472
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7473
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result p1

    .line 7472
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->createReservedChannel(Ljava/lang/String;II)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 7474
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCompanionManager()Landroid/companion/ICompanionDeviceManager;
    .locals 0

    .line 12010
    const-string p0, "companiondevice"

    .line 12011
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 12010
    invoke-static {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public final getGroupHelper()Lcom/android/server/notification/GroupHelper;
    .locals 7

    .line 3149
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    .line 3150
    new-instance v1, Lcom/android/server/notification/GroupHelper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$11;

    invoke-direct {v6, p0}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/4 v5, 0x6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/GroupHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/android/server/notification/GroupHelper$Callback;)V

    return-object v1
.end method

.method public getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 10037
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    if-nez p0, :cond_1

    return-object v0

    .line 10041
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    return-object p0
.end method

.method public final getHistoryText(Landroid/app/Notification;)Ljava/lang/String;
    .locals 4

    .line 3878
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3879
    const-string v2, "android.text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3880
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 3882
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Notification$BigTextStyle;

    if-eqz v3, :cond_0

    .line 3883
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->getBigText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 3884
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Notification$MessagingStyle;

    if-eqz v3, :cond_1

    .line 3885
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle;

    .line 3886
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3887
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3888
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3892
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3893
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    return-object v1

    .line 3896
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHistoryTitle(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .line 3862
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3863
    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3865
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 3868
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10406ed

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3870
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInternalService()Lcom/android/server/notification/NotificationManagerInternal;
    .locals 0

    .line 3955
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    return-object p0
.end method

.method public final getNotificationChannelRestoreDeleted(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 18

    move-object/from16 v0, p0

    .line 8639
    sget-object v1, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    return-object v9

    .line 8644
    :cond_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 8646
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v6, p5

    .line 8644
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 8648
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8649
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8650
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 8653
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move-object/from16 v11, p1

    .line 8652
    invoke-virtual {v1, v11, v2}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v15

    const/16 v17, 0x1

    const/4 v14, 0x1

    move/from16 v16, p2

    move/from16 v12, p3

    .line 8650
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8656
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-object v13

    :cond_1
    return-object v9

    :cond_2
    return-object v13
.end method

.method public final getNotificationCount(Ljava/lang/String;I)I
    .locals 7

    .line 9244
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 9247
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 9248
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9249
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9253
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_3

    .line 9255
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 9256
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9257
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9261
    :cond_3
    monitor-exit v0

    return v4

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNotificationCount(Ljava/lang/String;IILjava/lang/String;)I
    .locals 7

    .line 9268
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9269
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 9271
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 9272
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9273
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    if-ne v6, p2, :cond_1

    .line 9274
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v6, p3, :cond_0

    .line 9275
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9281
    :cond_2
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_2
    if-ge v2, p3, :cond_4

    .line 9283
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/notification/NotificationRecord;

    .line 9284
    invoke-virtual {p4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9285
    invoke-virtual {p4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p4

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p4

    if-ne p4, p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9289
    :cond_4
    monitor-exit v0

    return v4

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 1

    .line 2632
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2633
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2634
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNotificationRecordCount()I
    .locals 8

    .line 2585
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2586
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 2587
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 2589
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 2590
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 2593
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2598
    :cond_2
    monitor-exit v0

    return v1

    .line 2599
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNotificationTimeoutPendingIntent(Lcom/android/server/notification/NotificationRecord;I)Landroid/app/PendingIntent;
    .locals 3

    const/high16 v0, 0x4000000

    or-int/2addr p2, v0

    .line 10299
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 10302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "timeout"

    .line 10303
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 10304
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 10303
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 10305
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key"

    .line 10306
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 10299
    invoke-static {p0, v0, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .locals 1

    .line 8311
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 8312
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getPackageImportanceWithIdentity(Ljava/lang/String;)I
    .locals 2

    .line 13034
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13037
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13040
    throw p0
.end method

.method public final getRealUserId(I)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public getShortcutHelper()Lcom/android/server/notification/ShortcutHelper;
    .locals 0

    .line 2575
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-object p0
.end method

.method public getStringArrayResource(I)[Ljava/lang/String;
    .locals 0

    .line 2988
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSuppressors()Ljava/util/ArrayList;
    .locals 4

    .line 3618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3619
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 3620
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 3622
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 3628
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getToastRecord(IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;
    .locals 13

    if-nez p7, :cond_0

    .line 3945
    new-instance v0, Lcom/android/server/notification/toast/TextToastRecord;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/notification/toast/TextToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/statusbar/StatusBarManagerInternal;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)V

    return-object v0

    .line 3948
    :cond_0
    new-instance v1, Lcom/android/server/notification/toast/CustomToastRecord;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/server/notification/toast/CustomToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Landroid/app/ITransientNotification;ILandroid/os/Binder;I)V

    return-object v1
.end method

.method public final grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 11

    if-eqz p2, :cond_1

    .line 11135
    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 11136
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 11138
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 11139
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 11141
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v9

    const/4 v8, 0x1

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    move/from16 v10, p5

    .line 11138
    invoke-interface/range {v3 .. v10}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11148
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 11146
    :catch_0
    :try_start_1
    const-string p0, "NotificationService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot grant uri access; "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not own "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11148
    :catch_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11149
    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final handleDurationReached(Lcom/android/server/notification/toast/ToastRecord;)V
    .locals 3

    .line 10466
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10467
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10468
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 10470
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10472
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 13

    .line 10236
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 10237
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 10238
    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v5

    if-nez v5, :cond_0

    .line 10241
    iget v5, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, -0x201

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 10246
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/NotificationManagerService;->wasSummaryAutogrouped(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10247
    iget v5, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, -0x201

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 10251
    :cond_1
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    .line 10252
    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    .line 10254
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    if-eqz p2, :cond_3

    .line 10255
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz p2, :cond_4

    .line 10256
    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_6

    .line 10259
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    if-eq v7, p2, :cond_6

    if-eqz v7, :cond_5

    .line 10262
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    const-string v7, "<null>"

    .line 10263
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", removed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NotificationService"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v4, :cond_7

    .line 10268
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10273
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, v8}, Lcom/android/server/notification/GroupHelper;->onGroupSummaryAdded(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)V

    .line 10277
    :cond_7
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda13;-><init>()V

    if-eqz v6, :cond_9

    if-eqz v4, :cond_8

    .line 10288
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 10289
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v8}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;-><init>()V

    .line 10291
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    .line 10292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move/from16 v4, p4

    move-object v2, v3

    move/from16 v3, p3

    .line 10289
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    :cond_9
    return-void
.end method

.method public final handleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V
    .locals 3

    .line 10485
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kill Token Timeout token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10486
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10487
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget p1, p1, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService;->finishWindowTokenLocked(Landroid/os/IBinder;I)V

    .line 10488
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleListenerHintsChanged(I)V
    .locals 1

    .line 10724
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10725
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 10726
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleListenerInterruptionFilterChanged(I)V
    .locals 1

    .line 10730
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10731
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 10732
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleNotificationPermissionChange(Ljava/lang/String;I)V
    .locals 10

    .line 7330
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7333
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 7335
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "No uid found for %s, %s!"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7338
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7340
    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    const/4 v7, 0x0

    const/4 v9, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move v8, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .locals 5

    .line 10738
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 10739
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 10740
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 10741
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)Z

    move-result p2

    or-int/2addr p2, p1

    if-eqz p1, :cond_0

    .line 10744
    array-length p1, p3

    array-length v0, p4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 10746
    aget-object v1, p3, v0

    .line 10747
    aget v2, p4, v0

    .line 10748
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 10751
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/notification/NotificationManagerService$Archive;->removePackageNotifications(Ljava/lang/String;I)V

    .line 10752
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/notification/NotificationHistoryManager;->onPackageRemoved(ILjava/lang/String;)V

    .line 10754
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/notification/NotificationListenerStats;->onPackageRemoved(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 10758
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_1
    return-void
.end method

.method public final handleRankingReconsideration(Landroid/os/Message;)V
    .locals 9

    .line 10571
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/server/notification/RankingReconsideration;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 10572
    :cond_0
    check-cast p1, Lcom/android/server/notification/RankingReconsideration;

    .line 10573
    invoke-virtual {p1}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 10575
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10576
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-nez v1, :cond_1

    .line 10578
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 10580
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 10581
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .line 10582
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v4

    .line 10583
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v5

    .line 10585
    invoke-virtual {p1, v1}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 10586
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 10587
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 10588
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, p1, :cond_2

    move p1, v7

    goto :goto_0

    :cond_2
    move p1, v6

    .line 10589
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v2

    if-eq v3, v2, :cond_3

    move v2, v7

    goto :goto_1

    :cond_3
    move v2, v6

    .line 10590
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    if-eq v4, v8, :cond_4

    move v4, v7

    goto :goto_2

    :cond_4
    move v4, v6

    .line 10594
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v8

    if-eq v5, v8, :cond_5

    move v5, v7

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    if-nez p1, :cond_6

    if-nez v2, :cond_6

    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    move v6, v7

    :cond_7
    if-eqz v3, :cond_8

    .line 10600
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result p1

    if-nez p1, :cond_8

    .line 10601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->isNewEnoughForAlerting(J)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10603
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    new-instance v2, Lcom/android/server/notification/NotificationAttentionHelper$Signals;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 10605
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    .line 10604
    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v3

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-direct {v2, v3, v4}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;-><init>(ZI)V

    .line 10603
    invoke-virtual {p1, v1, v2}, Lcom/android/server/notification/NotificationAttentionHelper;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I

    .line 10608
    invoke-static {v1}, Lcom/android/server/notification/ZenLog;->traceAlertOnUpdatedIntercept(Lcom/android/server/notification/NotificationRecord;)V

    .line 10610
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_9

    .line 10612
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    :cond_9
    :goto_4
    return-void

    .line 10610
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public handleRankingSort()V
    .locals 27

    move-object/from16 v0, p0

    .line 10617
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    if-nez v1, :cond_0

    return-void

    .line 10618
    :cond_0
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 10619
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 10621
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_1

    .line 10624
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    move-object v7, v5

    .line 10625
    new-instance v5, Lcom/android/server/notification/NotificationRecordExtractorData;

    move-object v8, v7

    .line 10627
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    move-object v9, v8

    .line 10628
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v8

    move-object v10, v9

    .line 10629
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v9

    .line 10630
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v11

    move-object v12, v10

    move v10, v11

    .line 10631
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v11

    move-object v13, v12

    .line 10632
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    move-object v14, v13

    .line 10633
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v13

    move-object v15, v14

    .line 10634
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v14

    .line 10635
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 10636
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 10637
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v19, v18

    .line 10638
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v20, v19

    .line 10639
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v19

    move-object/from16 v21, v20

    .line 10640
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v20

    move-object/from16 v22, v21

    .line 10641
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v21

    move-object/from16 v23, v22

    .line 10642
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/notification/NotificationRecord;->getProposedImportance()I

    move-result v22

    move-object/from16 v24, v23

    .line 10643
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/notification/NotificationRecord;->hasSensitiveContent()Z

    move-result v23

    move-object/from16 v25, v24

    .line 10644
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/notification/NotificationRecord;->getSummarization()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v26, v25

    invoke-direct/range {v5 .. v24}, Lcom/android/server/notification/NotificationRecordExtractorData;-><init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZIZLjava/lang/String;)V

    .line 10645
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10646
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v7, v26

    invoke-virtual {v5, v7}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 10648
    :cond_1
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_6

    .line 10650
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 10651
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 10656
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecordExtractorData;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/notification/NotificationRecordExtractorData;->hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10657
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 10662
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->hasPendingLogUpdate()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 10666
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecordExtractorData;

    .line 10667
    invoke-virtual {v7, v6, v5}, Lcom/android/server/notification/NotificationRecordExtractorData;->hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 10668
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 10669
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationManagerService;->getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;

    move-result-object v8

    .line 10668
    invoke-interface {v7, v6, v5, v4, v8}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationAdjusted(Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V

    .line 10674
    :cond_4
    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationRecord;->setPendingLogUpdate(Z)V

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10677
    :cond_6
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleSavePolicyFile()V
    .locals 3

    .line 1275
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1276
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final handleSendRankingUpdate()V
    .locals 2

    .line 10705
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10706
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 10707
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 7626
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getFullAggregateGroupKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    .line 7631
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    .line 7632
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 2

    .line 11975
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Ljava/lang/String;ILjava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public final hasCompanionDevice(Ljava/lang/String;ILjava/util/Set;)Z
    .locals 5

    .line 11981
    const-string v0, "NotificationService"

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v1, :cond_0

    .line 11982
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getCompanionManager()Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 11985
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 11988
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 11990
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {p0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 11991
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    if-eqz p3, :cond_3

    .line 11993
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v1

    .line 11992
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    .line 12004
    :cond_3
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catch_2
    :cond_4
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    .line 12002
    :goto_2
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot verify caller pkg="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 12000
    :goto_3
    const-string p1, "Cannot reach companion device service"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 12004
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12005
    throw p0

    :goto_5
    return v2
.end method

.method public hasFlag(II)Z
    .locals 0

    .line 0
    and-int p0, p1, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasParent(Landroid/content/pm/UserInfo;)Z
    .locals 1

    .line 1025
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hideNotificationsForPackages([Ljava/lang/String;[I)V
    .locals 6

    .line 11665
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11666
    :try_start_0
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 11667
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 11668
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11669
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 11671
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 11672
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11673
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 11674
    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 11675
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11679
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyHiddenLocked(Ljava/util/List;)V

    .line 11680
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public indexOfNotificationLocked(Ljava/lang/String;)I
    .locals 3

    .line 11655
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 11657
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 4

    .line 10493
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 10494
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 10496
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/toast/ToastRecord;

    .line 10497
    iget-object v3, v2, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public init(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;Lcom/android/server/notification/RankingHandler;Landroid/os/Handler;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/StatsManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/utils/quota/MultiRateLimiter;Lcom/android/server/notification/PermissionHelper;Landroid/app/usage/UsageStatsManagerInternal;Landroid/telecom/TelecomManager;Lcom/android/server/notification/NotificationChannelLogger;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Landroid/permission/PermissionManager;Landroid/os/PowerManager;Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;Lcom/android/server/notification/NotificationListenerStats;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p17

    move-object/from16 v2, p1

    .line 2691
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 2695
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2696
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "max_notification_enqueue_rate"

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 2701
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v3, p16

    .line 2702
    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 2703
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2704
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setBackgroundActivityStartCallback(Lcom/android/server/wm/BackgroundActivityStartCallback;)V

    move-object/from16 v1, p20

    .line 2705
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    move-object/from16 v1, p21

    .line 2706
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    move-object/from16 v1, p4

    .line 2707
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v1, p5

    .line 2708
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 2709
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v1, p33

    .line 2710
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 2711
    const-class v1, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 2712
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    move-object/from16 v1, p29

    .line 2713
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v1, p22

    .line 2714
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v1, p18

    .line 2715
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2716
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v1, p10

    .line 2717
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    move-object/from16 v1, p14

    .line 2718
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v1, p26

    .line 2719
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 2720
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/os/DeviceIdleManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DeviceIdleManager;

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    move-object/from16 v1, p19

    .line 2721
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    move-object/from16 v11, p23

    .line 2722
    iput-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    move-object/from16 v1, p30

    .line 2723
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v1, p34

    .line 2724
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v1, p35

    .line 2725
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    .line 2726
    const-string/jumbo v1, "platform_compat"

    .line 2727
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2726
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 2729
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    const v1, 0x10700a3

    const/4 v3, 0x0

    .line 2732
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v18, v1

    move-object/from16 v1, p12

    goto :goto_1

    .line 2734
    :catch_0
    new-array v1, v3, [Ljava/lang/String;

    goto :goto_0

    .line 2736
    :goto_1
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 2737
    new-instance v5, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v5}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v5, p2

    .line 2738
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    move-object/from16 v5, p9

    .line 2739
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    move-object/from16 v5, p36

    .line 2740
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    .line 2741
    new-instance v5, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v10, Lcom/android/server/notification/ZenModeEventLogger;

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-direct {v10, v12}, Lcom/android/server/notification/ZenModeEventLogger;-><init>(Landroid/content/pm/PackageManager;)V

    move-object/from16 p21, p32

    move-object/from16 p16, v5

    move-object/from16 p17, v6

    move-object/from16 p18, v7

    move-object/from16 p19, v8

    move-object/from16 p20, v9

    move-object/from16 p22, v10

    invoke-direct/range {p16 .. p22}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/time/Clock;Lcom/android/server/notification/ConditionProviders;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/server/notification/ZenModeEventLogger;)V

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 2743
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$8;

    invoke-direct {v6, v0}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v5, v6}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    move-object/from16 v5, p28

    .line 2797
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    move-object/from16 v5, p31

    .line 2798
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 2799
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2800
    new-instance v19, Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v20

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-boolean v15, v0, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    .line 2811
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v31

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move/from16 v30, v15

    invoke-direct/range {v19 .. v31}, Lcom/android/server/notification/PreferencesHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/PermissionHelper;Landroid/permission/PermissionManager;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;Lcom/android/server/notification/ManagedServices$UserProfiles;Lcom/android/server/uri/UriGrantsManagerInternal;ZLjava/time/Clock;)V

    move-object/from16 v5, v19

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2812
    new-instance v12, Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    move-object/from16 v20, p15

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    invoke-direct/range {v12 .. v20}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/RankingConfig;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;Lcom/android/server/notification/GroupHelper;)V

    iput-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v5, p11

    .line 2814
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    move-object/from16 v5, p15

    .line 2815
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    move-object/from16 v5, p24

    .line 2816
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 2818
    new-instance v5, Lcom/android/server/notification/TimeToLiveHelper;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationManagerPrivate:Lcom/android/server/notification/NotificationManagerPrivate;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/notification/TimeToLiveHelper;-><init>(Lcom/android/server/notification/NotificationManagerPrivate;Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mTtlHelper:Lcom/android/server/notification/TimeToLiveHelper;

    move-object/from16 v5, p7

    .line 2822
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v5, p8

    .line 2825
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 2828
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    move-object/from16 v5, p13

    .line 2830
    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 2831
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 2832
    const-class v5, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v5, :cond_0

    .line 2834
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v5, v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 2837
    :cond_0
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 2838
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v5

    iput v5, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 2840
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v5, v0, v6}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 2842
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v6, 0x10e00ec

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v5, v2}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 2845
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.type.television"

    .line 2846
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 2848
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10700ab

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V

    .line 2851
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/notification/NotificationManagerService;->mWarnRemoteViewsSizeBytes:I

    .line 2853
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    const v2, 0x10700a2

    .line 2856
    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->getStringArrayResource(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    .line 2858
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v5, "string"

    const-string v6, "android"

    .line 2859
    const-string v7, "config_defaultSearchSelectorPackageName"

    invoke-virtual {v3, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2858
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultSearchSelectorPkg:Ljava/lang/String;

    move-object/from16 v15, p32

    .line 2861
    iput-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    move-object/from16 v2, p25

    .line 2863
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    move-object/from16 v2, p27

    .line 2865
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 2867
    new-instance v5, Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationManagerPrivate:Lcom/android/server/notification/NotificationManagerPrivate;

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    move-object/from16 v8, p6

    move-object v12, v1

    invoke-direct/range {v5 .. v15}, Lcom/android/server/notification/NotificationAttentionHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/lights/LightsManager;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationUsageStats;Lcom/android/server/notification/NotificationManagerPrivate;Lcom/android/server/notification/ZenModeHelper;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;)V

    iput-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 2874
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2875
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2879
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2880
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2881
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2882
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2883
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->privateSpaceFlagsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2884
    const-string v2, "android.intent.action.PROFILE_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2886
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p4, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object/from16 v1, p3

    .line 2888
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2889
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2890
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2891
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2892
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2893
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 p4, v2

    move-object/from16 p1, v3

    move-object/from16 p2, v5

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2897
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2898
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2899
    const-string v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2900
    const-string v3, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2901
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 p4, v2

    move-object/from16 p1, v3

    move-object/from16 p2, v5

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2904
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2905
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 p4, v2

    move-object/from16 p1, v3

    move-object/from16 p2, v5

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2915
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.SETTING_RESTORED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2916
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2918
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2921
    new-instance v1, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    invoke-direct {v1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;-><init>()V

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    .line 2922
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    .line 2923
    invoke-static {}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v3

    const/4 v5, 0x4

    .line 2922
    invoke-virtual {v1, v2, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2926
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 2935
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public final isCallNotification(Ljava/lang/String;I)Z
    .locals 3

    .line 9219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9221
    :try_start_0
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.telecom"

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 9224
    :try_start_1
    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->isInManagedCall()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 9225
    invoke-virtual {p0, p1, p2}, Landroid/telecom/TelecomManager;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 9234
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9235
    throw p0
.end method

.method public final isCallNotification(Ljava/lang/String;ILandroid/app/Notification;)Z
    .locals 1

    .line 9212
    const-class v0, Landroid/app/Notification$CallStyle;

    invoke-virtual {p3, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9213
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isCallerAndroid(Ljava/lang/String;I)Z
    .locals 0

    .line 11816
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "android"

    .line 11817
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCallerInstantApp(II)Z
    .locals 4

    .line 11846
    const-string v0, "Unknown uid "

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    move p2, v2

    .line 11855
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11859
    aget-object v1, v1, v2

    .line 11860
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, p1, v1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 11862
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 11866
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 11864
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11857
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11868
    :goto_0
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final isCallerSameApp(Ljava/lang/String;II)Z
    .locals 0

    .line 11887
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCallerSystemOrPhone()Z
    .locals 1

    .line 11757
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result p0

    return p0
.end method

.method public isCallerSystemOrSystemUi()Z
    .locals 2

    .line 11762
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 11765
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isCallerSystemOrSystemUiOrShell()Z
    .locals 2

    .line 11770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 11774
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCallingAppIdSystem()Z
    .locals 1

    .line 11744
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 11745
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCallingUidSystem()Z
    .locals 1

    .line 11739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 10200
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDNDMigrationDone(I)Z
    .locals 2

    .line 972
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dnd_settings_migrated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v1
.end method

.method public final isDefaultAdservicesPackage(Ljava/lang/String;)Z
    .locals 2

    .line 8871
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAdservicesModuleInfo:Landroid/content/pm/ModuleInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 8875
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->getApkInApexPackageNames()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8876
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final isDefaultSearchSelectorPackage(Ljava/lang/String;)Z
    .locals 0

    .line 8867
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultSearchSelectorPkg:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isEnterpriseExempted(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    .line 8886
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8887
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 8891
    :cond_1
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    return v3

    .line 8894
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x7d

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method public final isExemptFromRateLimiting(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 10388
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.UNLIMITED_TOASTS"

    invoke-interface {p0, v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    .line 10392
    :catch_0
    const-string p0, "NotificationService"

    const-string p1, "Failed to connect with package manager"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isInLockDownMode(I)Z
    .locals 0

    .line 11971
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->isInLockDownMode(I)Z

    move-result p0

    return p0
.end method

.method public isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 1

    .line 12043
    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getService()Landroid/os/IInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isNotificationAssistant(Landroid/os/IInterface;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 12044
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

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

.method public isNASMigrationDone(I)Z
    .locals 2

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "nas_settings_updated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v1
.end method

.method public final isNotificationAssistant(Landroid/os/IInterface;)Z
    .locals 1

    .line 12048
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12049
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 12050
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isNotificationRecent(J)Z
    .locals 2

    .line 11437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x1388

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationShownInternal(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1

    .line 8361
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8362
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 8363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isPackageInForegroundForToast(I)Z
    .locals 0

    .line 10550
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->hasResumedActivity(I)Z

    move-result p0

    return p0
.end method

.method public isPackagePausedOrSuspended(Ljava/lang/String;I)Z
    .locals 2

    .line 9731
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 9734
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 9733
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->getDistractingPackageRestrictions(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9737
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 2

    .line 12054
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 12055
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 12057
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12064
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 12059
    :catch_1
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Could not talk to package manager service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12064
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12065
    throw p0
.end method

.method public isProfileUser(Landroid/content/pm/UserInfo;)Z
    .locals 3

    .line 1018
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->privateSpaceFlagsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1019
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasParent(Landroid/content/pm/UserInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    .line 1021
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 9299
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 9300
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 9301
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 9302
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

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

.method public isUidSystemOrPhone(I)Z
    .locals 1

    .line 11750
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 2

    .line 12017
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 12020
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 12023
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object p3, p3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->mKey:Landroid/util/Pair;

    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12025
    invoke-virtual {p0, p2}, Landroid/service/notification/NotificationListenerFilter;->isTypeAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Landroid/content/pm/VersionedPackage;

    .line 12027
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-direct {p2, p3, p1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 12026
    invoke-virtual {p0, p2}, Landroid/service/notification/NotificationListenerFilter;->isPackageAllowed(Landroid/content/pm/VersionedPackage;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 8

    .line 10052
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "INTERRUPTIVENESS: "

    const-string v3, "NotificationService"

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10053
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_0

    .line 10054
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10055
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: summary"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10054
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 10061
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_2

    .line 10062
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10063
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: new notification"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10062
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    .line 10068
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 10069
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 10070
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_17

    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v5, :cond_4

    goto/16 :goto_2

    .line 10081
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 10082
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_5

    .line 10083
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10084
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: FGS/UIJ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10083
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1

    .line 10100
    :cond_6
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 10101
    iget-object v7, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 10102
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 10103
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_7

    .line 10104
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10105
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: changed title"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10104
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10107
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v5, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 10106
    const-string p2, "   old title: %s (%s@0x%08x)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10109
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v6, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 10108
    const-string p2, "   new title: %s (%s@0x%08x)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0

    .line 10115
    :cond_8
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 10116
    iget-object v7, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 10117
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 10118
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_9

    .line 10119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10120
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: changed text"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10119
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v5, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 10121
    const-string p2, "   old text: %s (%s@0x%08x)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10124
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v6, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 10123
    const-string p2, "   new text: %s (%s@0x%08x)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v0

    .line 10129
    :cond_a
    invoke-virtual {p1}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v5

    invoke-virtual {v4}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v6

    if-eq v5, v6, :cond_c

    .line 10130
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_b

    .line 10131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10132
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: completed progress"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10131
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v0

    .line 10137
    :cond_c
    invoke-static {p1, v4}, Landroid/app/Notification;->areIconsDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 10138
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_d

    .line 10139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10140
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: icons differ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10139
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v0

    .line 10146
    :cond_e
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 10147
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_f

    .line 10148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10149
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: bubble"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10148
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v1

    .line 10155
    :cond_10
    invoke-static {p1, v4}, Landroid/app/Notification;->areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 10156
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_11

    .line 10157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10158
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: changed actions"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10157
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v0

    .line 10164
    :cond_12
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 10165
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 10168
    invoke-static {p1, p0}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 10169
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_13

    .line 10170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10171
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: styles differ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10170
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_13
    :goto_0
    return v0

    .line 10177
    :cond_14
    invoke-static {p1, p0}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 10178
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_15

    .line 10179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10180
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: remoteviews differ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10179
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_15
    return v0

    .line 10185
    :goto_1
    const-string p1, "error recovering builder"

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    return v1

    .line 10071
    :cond_17
    :goto_2
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_18

    .line 10072
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10073
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: no extras"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10072
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v1
.end method

.method public keepProcessAliveForToastIfNeeded(I)V
    .locals 1

    .line 10508
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10509
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    .line 10510
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final keepProcessAliveForToastIfNeededLocked(I)V
    .locals 7

    .line 10516
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 10517
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 10519
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/toast/ToastRecord;

    .line 10520
    iget v6, v5, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    if-ne v6, p1, :cond_0

    invoke-virtual {v5}, Lcom/android/server/notification/toast/ToastRecord;->keepProcessAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10525
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    const-string/jumbo v1, "toast"

    invoke-interface {v0, p0, p1, v2, v1}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final synthetic lambda$acquireWakeLockForPost$12(Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
    .locals 3

    .line 8393
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationManagerService:post:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 8395
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 8396
    sget-object p1, Lcom/android/server/notification/NotificationManagerService;->POST_WAKE_LOCK_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 8397
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    invoke-interface {p0, v0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$cancelNotificationLocked$15(Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 2

    .line 10932
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10933
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p0, p2}, Lcom/android/server/notification/GroupHelper;->onNotificationRemoved(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Z)V

    .line 10934
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$cancelNotificationLocked$16(Ljava/lang/String;)V
    .locals 3

    .line 10947
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10948
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    if-eqz p1, :cond_0

    .line 10951
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/server/notification/GroupHelper;->onGroupedNotificationRemovedWithDelay(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10954
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$doChannelWarningToast$13(Ljava/lang/CharSequence;)V
    .locals 3

    .line 9027
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_notification_channel_warnings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 9030
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {v0, p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 9032
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$maybeNotifySystemUiListenerLifetimeExtendedLocked$19(Lcom/android/server/notification/NotificationRecord;ZZ)V
    .locals 0

    .line 13015
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p0

    .line 13017
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->setPostSilently(Z)V

    if-nez p3, :cond_0

    .line 13020
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p2, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, -0x9

    iput p2, p1, Landroid/app/Notification;->flags:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 13022
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic lambda$notifyListenersPostedAndLogLocked$18(Ljava/util/List;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .locals 1

    .line 12963
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 12964
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 12967
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->finish()J

    move-result-wide p1

    if-eqz p3, :cond_1

    .line 12969
    iput-wide p1, p3, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->post_duration_millis:J

    .line 12970
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    invoke-interface {p0, p3}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationPosted(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    :cond_1
    return-void
.end method

.method public final synthetic lambda$onBootPhase$6()V
    .locals 2

    :goto_0
    const-wide/16 v0, 0x1388

    .line 3395
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3397
    :catch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-interface {v0}, Lcom/android/server/notification/NotificationManagerInternal;->removeBitmaps()V

    goto :goto_0
.end method

.method public final synthetic lambda$onStart$4(ILcom/android/server/notification/NotificationRecord;Z)V
    .locals 15

    .line 2995
    const-string v1, "NotificationService"

    :try_start_0
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reposting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move/from16 v12, p3

    .line 2998
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v5

    .line 2999
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    .line 3000
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, p0

    move/from16 v11, p1

    .line 2998
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3003
    :goto_1
    const-string v0, "Cannot un-snooze notification"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$onUserStopping$9(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 3458
    const-string/jumbo v0, "notifHistoryStopUser"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3460
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->onUserStopped(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3462
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3463
    throw p0
.end method

.method public final synthetic lambda$onUserUnlocked$7(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 3409
    const-string/jumbo v0, "notifHistoryUnlockUser"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3411
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->onUserUnlocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3413
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3414
    throw p0
.end method

.method public final synthetic lambda$postNotificationsWhenExitLockDownMode$17(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1

    .line 11729
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11730
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, p1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 11731
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$reportForegroundServiceUpdate$11(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .locals 0

    .line 3847
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual/range {p0 .. p5}, Landroid/app/ActivityManagerInternal;->onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$sendAppBlockStateChangedBroadcast$8(ZLjava/lang/String;I)V
    .locals 2

    .line 3423
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.APP_BLOCK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.BLOCKED_STATE"

    .line 3425
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 3426
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 3427
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3428
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    .line 3423
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3430
    const-string p1, "NotificationService"

    const-string p2, "Can\'t notify app about app block change"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$updateNotificationChannelInt$10(ILjava/lang/String;Landroid/app/NotificationChannel;)V
    .locals 8

    .line 3546
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3547
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 3548
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object v4, p2

    move-object v5, p3

    .line 3547
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->onChannelUpdated(ILjava/lang/String;Landroid/app/NotificationChannel;Ljava/util/List;Landroid/util/ArrayMap;)V

    .line 3550
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadDefaultApprovedServices(I)V
    .locals 0

    .line 940
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->loadDefaultsFromConfig()V

    .line 942
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ConditionProviders;->loadDefaultsFromConfig()V

    .line 944
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig()V

    return-void
.end method

.method public loadPolicyFile()V
    .locals 5

    .line 1243
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    const-string v1, "loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1247
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, -0x1

    .line 1248
    :try_start_1
    invoke-virtual {p0, v3, v2, v4, v1}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZILandroid/app/backup/BackupRestoreEventLogger;)V

    .line 1251
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->resetDefaultDndIfNecessary()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_7

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v3

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v1, v3

    goto :goto_4

    :catch_3
    move-object v1, v3

    goto :goto_5

    .line 1268
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_8

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception p0

    goto :goto_1

    :catch_5
    move-exception p0

    goto :goto_3

    :catch_6
    move-exception p0

    goto :goto_4

    .line 1266
    :goto_1
    :try_start_3
    const-string v2, "NotificationService"

    const-string v3, "Unable to parse notification policy"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1268
    :goto_2
    :try_start_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    .line 1264
    :goto_3
    :try_start_5
    const-string v2, "NotificationService"

    const-string v3, "Unable to parse notification policy"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1262
    :goto_4
    const-string v2, "NotificationService"

    const-string v3, "Unable to read notification policy"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1259
    :catch_7
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->loadDefaultApprovedServices(I)V

    .line 1260
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDefaultApprovedServices(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 1270
    :goto_6
    :try_start_6
    monitor-exit v0

    return-void

    .line 1268
    :goto_7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1269
    throw p0

    .line 1270
    :goto_8
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public logClassificationChannelAdjustmentReceived(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 10

    .line 2117
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    move v4, p0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 2118
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_1
    move v8, v1

    goto :goto_2

    .line 2119
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    goto :goto_1

    .line 2123
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v6

    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_ADJUSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 2124
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->getId()I

    move-result v7

    .line 2125
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v9

    const/16 v2, 0x3d7

    move v3, p2

    move v5, p3

    .line 2121
    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZIIIII)V

    return-void
.end method

.method public logSensitiveAdjustmentReceived(ZZI)V
    .locals 0

    const/16 p0, 0x341

    .line 2108
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    return-void
.end method

.method public logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V
    .locals 3

    .line 2081
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v0

    if-lez v0, :cond_1

    .line 2082
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSeenSmartReplies()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2083
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSeenSmartReplies(Z)V

    .line 2084
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x566

    .line 2085
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2087
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x568

    .line 2086
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2089
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x63f

    .line 2088
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2092
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x640

    .line 2090
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 2095
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v1, 0x65d

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 2098
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getEditChoicesBeforeSending()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x66f

    .line 2096
    invoke-virtual {p2, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 2099
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2100
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object p2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p0, p2, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    :cond_1
    return-void
.end method

.method public makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 11909
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 11910
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_7

    .line 11913
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 11914
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/notification/NotificationManagerService;->isInLockDownMode(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_6

    .line 11917
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v8

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_6

    .line 11920
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 11921
    new-instance v8, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v8}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 11923
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v7

    .line 11924
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v10

    .line 11925
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->hasSensitiveContent()Z

    move-result v35

    .line 11927
    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget v12, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v11, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isUidTrusted(I)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v11, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v7, 0x0

    move-object/from16 v26, v7

    move-object/from16 v27, v26

    goto :goto_1

    :cond_2
    move-object/from16 v26, v7

    move-object/from16 v27, v10

    .line 11934
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 11935
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v7

    const/4 v11, 0x1

    xor-int/2addr v7, v11

    .line 11936
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v12

    .line 11937
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v13

    .line 11938
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v14

    .line 11939
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v15

    .line 11940
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v16

    .line 11941
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v17

    .line 11942
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v18

    .line 11943
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v19

    .line 11944
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v20

    .line 11945
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v21

    .line 11946
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v22

    .line 11947
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getLastAudiblyAlertedMs()J

    move-result-wide v23

    .line 11948
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v25

    if-nez v25, :cond_4

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v25

    if-eqz v25, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v25, v4

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v25, v11

    .line 11951
    :goto_3
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v28

    .line 11952
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isTextChanged()Z

    move-result v29

    .line 11953
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v30

    .line 11954
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v31

    .line 11955
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v32

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-nez v32, :cond_5

    move/from16 v32, v4

    goto :goto_5

    .line 11957
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v32

    cmpl-float v32, v32, v33

    if-lez v32, :cond_6

    :goto_4
    move/from16 v32, v11

    goto :goto_5

    :cond_6
    const/4 v11, -0x1

    goto :goto_4

    .line 11958
    :goto_5
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v33

    .line 11959
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getProposedImportance()I

    move-result v34

    .line 11961
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSummarization()Ljava/lang/String;

    move-result-object v36

    move v11, v7

    .line 11932
    invoke-virtual/range {v8 .. v36}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZLjava/lang/String;)V

    .line 11963
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 11966
    :cond_7
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate;

    new-array v1, v4, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 11967
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0, v1}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    return-object v0
.end method

.method public final makeStickyHun(Landroid/app/Notification;Ljava/lang/String;I)V
    .locals 1

    .line 8683
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    const-string v0, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/notification/PermissionHelper;->hasRequestedPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8685
    iget p0, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 p0, p0, 0x4000

    iput p0, p1, Landroid/app/Notification;->flags:I

    .line 8687
    :cond_0
    iget-object p0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez p0, :cond_1

    .line 8690
    iget-object p0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object p0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_1
    const/4 p0, 0x0

    .line 8692
    iput-object p0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public final maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V
    .locals 2

    .line 3601
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p3

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    if-eq p3, v0, :cond_0

    .line 3602
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

    .line 3605
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3604
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.app.extra.BLOCKED_STATE"

    .line 3607
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p4

    .line 3606
    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p3

    const/high16 p4, 0x10000000

    .line 3608
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    .line 3609
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3610
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    .line 3602
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3613
    const-string p1, "NotificationService"

    const-string p2, "Can\'t notify app about group change"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .locals 2

    .line 3560
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_0

    .line 3561
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_1

    .line 3562
    :cond_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-eqz p3, :cond_3

    .line 3563
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-nez p3, :cond_3

    .line 3564
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.app.extra.NOTIFICATION_CHANNEL_ID"

    .line 3567
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3566
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.app.extra.BLOCKED_STATE"

    .line 3569
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p4

    if-nez p4, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 3568
    :goto_0
    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p3

    const/high16 p4, 0x10000000

    .line 3570
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    .line 3571
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3572
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    .line 3564
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3575
    const-string p1, "NotificationService"

    const-string p2, "Can\'t notify app about channel change"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method public final maybeNotifySystemUiListenerLifetimeExtendedListLocked(Ljava/util/List;I)V
    .locals 3

    .line 12983
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 12984
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 12986
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 12985
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final maybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .locals 9

    if-eqz p1, :cond_2

    .line 12994
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 12996
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isCanceledAfterLifetimeExtension()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 12999
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setCanceledAfterLifetimeExtension(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x64

    if-ne p3, p2, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v1

    .line 13005
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->shouldPostSilently()Z

    move-result p2

    .line 13006
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget p3, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, 0x8

    if-lez p3, :cond_1

    move v1, v0

    .line 13009
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setPostSilently(Z)V

    .line 13011
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget v0, p3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p3, Landroid/app/Notification;->flags:I

    .line 13013
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object v8

    .line 13014
    new-instance p3, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZZ)V

    invoke-virtual {v8, p3}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->addCleanupRunnable(Ljava/lang/Runnable;)V

    .line 13025
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13028
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeNotificationCancelPrevented(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6

    .line 3818
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasRecordedInterruption()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3819
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3820
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3821
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v3

    .line 3819
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3822
    const-string/jumbo v0, "notifHistoryAddItem"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3824
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3825
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    new-instance v3, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    .line 3826
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3827
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3828
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3829
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3830
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3831
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3832
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->getHistoryTitle(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3833
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->getHistoryText(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object p0

    .line 3834
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object p0

    .line 3835
    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object p0

    .line 3825
    invoke-virtual {v0, p0}, Lcom/android/server/notification/NotificationHistoryManager;->addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3838
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    .line 3840
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setRecordedInterruption(Z)V

    return-void

    .line 3838
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3839
    throw p0

    :cond_1
    return-void
.end method

.method public maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3

    .line 3900
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3901
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3902
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3903
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    .line 3902
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->setValidMessageSent(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3904
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void

    .line 3905
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3908
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3909
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result p1

    .line 3908
    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/PreferencesHelper;->setValidBubbleSent(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3910
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void

    .line 3914
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3915
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result p1

    .line 3914
    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/PreferencesHelper;->setInvalidMessageSent(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3916
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_2
    return-void
.end method

.method public maybeReportForegroundServiceUpdate(Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 6

    .line 3852
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3854
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 3855
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    .line 3856
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v0, p0

    move v1, p2

    .line 3855
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public maybeShowInitialReviewPermissionsNotification()V
    .locals 3

    .line 14600
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 14605
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "review_permissions_notification_state"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 14622
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x47

    .line 14625
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->createReviewPermissionsNotification()Landroid/app/Notification;

    move-result-object p0

    .line 14623
    const-string v2, "NotificationService"

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public migrateDefaultNAS()V
    .locals 4

    .line 983
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 984
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 985
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 986
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->isNASMigrationDone(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->isProfileUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 989
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v1

    .line 990
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v3, "NotificationService"

    if-nez v1, :cond_2

    .line 991
    const-string v1, "NAS Migration: user set to none, disable new NAS setting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->setNASMigrationDone(I)V

    .line 993
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->clearDefaults()V

    goto :goto_0

    .line 995
    :cond_2
    const-string v1, "Reset NAS setting and migrate to new default"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 998
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 11234
    invoke-static {p1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 11235
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public notifyCallNotificationEventListenerOnPosted(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    .line 14173
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 14177
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 14179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    .line 14180
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    .line 14182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 14185
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 14187
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 14186
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    const/4 v2, -0x1

    .line 14189
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_1

    .line 14194
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 14195
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_0

    .line 14198
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyCallNotificationEventListenerOnRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    .line 14203
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 14207
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 14209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    .line 14210
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    .line 14212
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 14215
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 14217
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 14216
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    const/4 v2, -0x1

    .line 14219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_1

    .line 14224
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 14225
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_0

    .line 14228
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyListenersPostedAndLogLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .locals 2

    .line 12961
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->prepareNotifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Ljava/util/List;

    move-result-object p2

    .line 12962
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12975
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->notifyCallNotificationEventListenerOnPosted(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    .line 3329
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->onBootPhase(ILandroid/os/Looper;)V

    return-void
.end method

.method public onBootPhase(ILandroid/os/Looper;)V
    .locals 6

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    .line 3335
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 3336
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 3337
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3338
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/role/RoleManager;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Landroid/os/Looper;)V

    .line 3340
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->init()V

    .line 3341
    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    .line 3343
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "launcherapps"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 3344
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 3346
    new-instance p2, Lcom/android/server/notification/ShortcutHelper;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    const-class v2, Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p2, p0, v0, v2, p1}, Lcom/android/server/notification/ShortcutHelper;-><init>(Landroid/content/pm/LauncherApps;Lcom/android/server/notification/ShortcutHelper$ShortcutListener;Landroid/content/pm/ShortcutServiceInternal;Landroid/os/UserManager;)V

    iput-object p2, v1, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 3348
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-class p1, Lcom/android/server/notification/BubbleExtractor;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/BubbleExtractor;

    if-eqz p0, :cond_0

    .line 3350
    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/BubbleExtractor;->setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V

    .line 3351
    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/BubbleExtractor;->setPackageManager(Landroid/content/pm/PackageManager;)V

    .line 3353
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->registerNotificationPreferencesPullers()V

    .line 3354
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez p0, :cond_1

    .line 3355
    new-instance p0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 3357
    :cond_1
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 3358
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->onSystemReady()V

    return-void

    :cond_2
    move-object v1, p0

    const/16 p0, 0x258

    if-ne p1, p0, :cond_5

    .line 3362
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 3363
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 3364
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 3365
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    .line 3366
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryManager;->onBootPhaseAppsCanStart()V

    .line 3367
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->onBootPhaseAppsCanStart()V

    .line 3368
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->migrateDefaultNAS()V

    .line 3369
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->maybeShowInitialReviewPermissionsNotification()V

    .line 3371
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->hasDeviceEffectsApplier()Z

    move-result p0

    if-nez p0, :cond_3

    .line 3373
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance p1, Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    .line 3374
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;-><init>(Landroid/content/Context;)V

    .line 3373
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setDeviceEffectsApplier(Landroid/service/notification/DeviceEffectsApplier;)V

    .line 3376
    :cond_3
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const/high16 p1, 0x10000000

    .line 3377
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object p0

    .line 3380
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ModuleInfo;

    .line 3381
    invoke-virtual {p1}, Landroid/content/pm/ModuleInfo;->getApexModuleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.android.adservices"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3382
    iput-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mAdservicesModuleInfo:Landroid/content/pm/ModuleInfo;

    goto :goto_0

    :cond_5
    const/16 p0, 0x226

    if-ne p1, p0, :cond_6

    .line 3386
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepostsForPersistedNotifications(J)V

    return-void

    :cond_6
    const/16 p0, 0x208

    if-ne p1, p0, :cond_7

    .line 3388
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateFixedImportance(Ljava/util/List;)V

    .line 3389
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->migrateNotificationPermissions(Ljava/util/List;)V

    return-void

    :cond_7
    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_9

    .line 3391
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->DEBUG_SHORT_BITMAP_DURATION:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-interface {p0, p1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 3392
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3399
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 3401
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/NotificationBitmapJobService;->scheduleJob(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public final onConversationRemovedInternal(Ljava/lang/String;ILjava/util/Set;)V
    .locals 9

    .line 8667
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 8668
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 8670
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationHistoryManager;->deleteConversations(Ljava/lang/String;ILjava/util/Set;)V

    .line 8671
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/16 v5, 0x3e8

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 8672
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->deleteConversations(Ljava/lang/String;ILjava/util/Set;IZ)Ljava/util/List;

    move-result-object p1

    .line 8674
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    .line 8675
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    move-object v3, v2

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 8676
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 8675
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 8679
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public onStart()V
    .locals 38

    move-object/from16 v1, p0

    .line 2993
    new-instance v11, Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v11, v0, v2, v3}, Lcom/android/server/notification/SnoozeHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 3007
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "system"

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3008
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3010
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    .line 3021
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110202

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    .line 3024
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x107009f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mDefaultUnsupportedAdjustments:[Ljava/lang/String;

    .line 3027
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v1, v0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    .line 3028
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-class v0, Lcom/android/server/lights/LightsManager;

    .line 3029
    invoke-virtual {v1, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/lights/LightsManager;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 3030
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 3031
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    move-object v13, v0

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 3032
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 3033
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    move-object v4, v9

    new-instance v9, Lcom/android/server/notification/ConditionProviders;

    .line 3034
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct {v9, v2, v3, v5}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    move-object v2, v12

    new-instance v12, Lcom/android/server/notification/NotificationUsageStats;

    .line 3036
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    move-object v3, v13

    new-instance v13, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v14, "notification_policy.xml"

    invoke-direct {v5, v6, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "notification-policy"

    invoke-direct {v13, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3039
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/app/ActivityManager;

    .line 3040
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;

    move-result-object v15

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v16

    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 3041
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 3042
    const-class v5, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Landroid/app/usage/UsageStatsManagerInternal;

    const-class v6, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3043
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3044
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v20

    const-class v6, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 3045
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v21, v6

    check-cast v21, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 3046
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v22, v0

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3047
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v23, v0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v6, Lcom/android/server/notification/NotificationHistoryManager;

    move-object/from16 v24, v0

    .line 3048
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0, v7}, Lcom/android/server/notification/NotificationHistoryManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 3049
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v25, v2

    const-string/jumbo v2, "stats"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 3051
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/app/ActivityManagerInternal;

    .line 3052
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->createToastRateLimiter()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v27

    new-instance v2, Lcom/android/server/notification/PermissionHelper;

    move-object/from16 v28, v0

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v29, v3

    .line 3053
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v30, v4

    .line 3054
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/notification/PermissionHelper;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/permission/IPermissionManager;)V

    .line 3055
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 3056
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/telecom/TelecomManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    new-instance v31, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/notification/NotificationChannelLoggerImpl;-><init>()V

    .line 3057
    invoke-static {}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->getResolver()Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    move-result-object v32

    .line 3058
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/permission/PermissionManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v33, v4

    check-cast v33, Landroid/permission/PermissionManager;

    .line 3059
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v34, v4

    check-cast v34, Landroid/os/PowerManager;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v4, v1}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    new-instance v36, Lcom/android/server/notification/NotificationListenerStats;

    invoke-direct/range {v36 .. v36}, Lcom/android/server/notification/NotificationListenerStats;-><init>()V

    move-object/from16 v35, v4

    move-object/from16 v4, v30

    move-object/from16 v30, v3

    const/4 v3, 0x0

    move-object v5, v10

    const/4 v10, 0x0

    move-object/from16 v37, v29

    move-object/from16 v29, v0

    move-object v0, v1

    move-object v1, v7

    move-object/from16 v7, v37

    move-object/from16 v37, v28

    move-object/from16 v28, v2

    move-object v2, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v37

    .line 3027
    invoke-virtual/range {v0 .. v36}, Lcom/android/server/notification/NotificationManagerService;->init(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;Lcom/android/server/notification/RankingHandler;Landroid/os/Handler;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/StatsManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/utils/quota/MultiRateLimiter;Lcom/android/server/notification/PermissionHelper;Landroid/app/usage/UsageStatsManagerInternal;Landroid/telecom/TelecomManager;Lcom/android/server/notification/NotificationChannelLogger;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Landroid/permission/PermissionManager;Landroid/os/PowerManager;Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;Lcom/android/server/notification/NotificationListenerStats;)V

    move-object v1, v0

    .line 3062
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-string/jumbo v4, "notification"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 3064
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 3457
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 3440
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 3441
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 3442
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(ILandroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3444
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 3446
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched(I)V

    .line 3447
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 3448
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ZenModeHelper;->onUserSwitched(I)V

    .line 3449
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p2}, Lcom/android/server/notification/PreferencesHelper;->syncHasPriorityChannels()V

    .line 3452
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 3408
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postNotificationsWhenExitLockDownMode(I)V
    .locals 8

    .line 11719
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11720
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 11724
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 11725
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-eq v6, p1, :cond_0

    goto :goto_1

    .line 11728
    :cond_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v7, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0, v5}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v5, 0x14

    add-long/2addr v2, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 11735
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pullNotificationStates(ILjava/util/List;)I
    .locals 1

    const/16 v0, 0x2764

    if-eq p1, v0, :cond_0

    const/16 v0, 0x27f7

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3133
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->pullPackageChannelGroupPreferencesStats(Ljava/util/List;)V

    goto :goto_0

    .line 3130
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->pullPackageChannelPreferencesStats(Ljava/util/List;)V

    goto :goto_0

    .line 3125
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3126
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getAllUsersNotificationPermissions()Landroid/util/ArrayMap;

    move-result-object p0

    .line 3125
    invoke-virtual {p1, p2, p0}, Lcom/android/server/notification/PreferencesHelper;->pullPackagePreferencesStats(Ljava/util/List;Landroid/util/ArrayMap;)V

    goto :goto_0

    .line 3141
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->pullRules(Ljava/util/List;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2757
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readPolicyXml(Ljava/io/InputStream;ZILandroid/app/backup/BackupRestoreEventLogger;)V
    .locals 8

    if-eqz p2, :cond_0

    .line 1142
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 1143
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 1145
    :cond_0
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 1147
    :goto_0
    const-string/jumbo p1, "notification-policy"

    invoke-static {v0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1149
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1, p3}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 1150
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isProfileUser(Landroid/content/pm/UserInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    .line 1151
    :goto_1
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    move v4, v1

    .line 1152
    :cond_2
    :goto_2
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1153
    const-string/jumbo v5, "zen"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1157
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1158
    invoke-virtual {v5, v0, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;ZILandroid/app/backup/BackupRestoreEventLogger;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v6, v5, 0x1

    goto :goto_3

    :catch_0
    move-exception v5

    .line 1164
    const-string v6, "NotificationService"

    const-string v7, "failed to read config"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v1

    move v6, v2

    :goto_3
    if-eqz p4, :cond_4

    .line 1168
    const-string/jumbo v7, "notifications:zen_config"

    invoke-virtual {p4, v7, v5}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestored(Ljava/lang/String;I)V

    if-lez v6, :cond_4

    .line 1170
    const-string/jumbo v5, "notifications:invalid_xml_parsing"

    invoke-virtual {p4, v7, v6, v5}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestoreFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 1175
    :cond_3
    const-string/jumbo v5, "ranking"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1176
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v5, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;ZI)V

    .line 1178
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz p1, :cond_5

    goto :goto_2

    .line 1182
    :cond_5
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v4, v0, v5, p2, p3}, Lcom/android/server/notification/ManagedServices;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    :goto_5
    move v4, v2

    goto :goto_6

    .line 1184
    :cond_6
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz p1, :cond_7

    goto :goto_2

    .line 1188
    :cond_7
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v4, v0, v5, p2, p3}, Lcom/android/server/notification/ManagedServices;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    goto :goto_5

    .line 1190
    :cond_8
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p1, :cond_9

    goto/16 :goto_2

    .line 1194
    :cond_9
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v4, v0, v5, p2, p3}, Lcom/android/server/notification/ManagedServices;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    goto :goto_5

    .line 1197
    :cond_a
    const-string/jumbo v5, "snoozed-notifications"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1198
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/notification/SnoozeHelper;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;J)V

    .line 1200
    :cond_b
    :goto_6
    const-string v5, "allow-secure-notifications-on-lockscreen"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz p2, :cond_c

    if-eqz p3, :cond_c

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x0

    .line 1204
    const-string/jumbo v6, "value"

    invoke-interface {v0, v5, v6, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 1207
    :cond_d
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/notification/NotificationListenerStats;->isXmlTag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1208
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationListenerStats;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto/16 :goto_2

    :cond_e
    if-nez v4, :cond_f

    .line 1213
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->migrateToXml()V

    .line 1214
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->migrateToXml()V

    .line 1215
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->migrateToXml()V

    .line 1216
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 1219
    :cond_f
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    .line 1220
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->syncHasPriorityChannels()V

    return-void
.end method

.method public reclassifyNotification(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1

    .line 10682
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10683
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    :cond_0
    return-void
.end method

.method public final registerNotificationPreferencesPullers()V
    .locals 5

    .line 3068
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    .line 3069
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v4, 0x2757

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3075
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    const/16 v2, 0x2758

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3081
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    const/16 v2, 0x2759

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3087
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    const/16 v2, 0x2764

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3093
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    const/16 v2, 0x27f7

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public removeAppSummaryLocked(Ljava/lang/String;)V
    .locals 13

    .line 7561
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7565
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->convertSummaryToNotificationLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 7566
    iput-boolean p1, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 7567
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 7568
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7569
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    .line 7570
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v10

    const/16 v11, 0xd

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    .line 7567
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeAutogroupKeyLocked(Ljava/lang/String;)V
    .locals 2

    .line 7517
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    if-nez v0, :cond_0

    .line 7519
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove autogroup "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7522
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 7523
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 7524
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 7525
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    :cond_1
    return-void
.end method

.method public final removeBitmapAndRepost(Lcom/android/server/notification/NotificationRecord;)V
    .locals 13

    .line 8287
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->isBigPictureWithBitmapOrIcon(Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8292
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.picture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8293
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.pictureIcon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8296
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 8300
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8301
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    sget v5, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 8302
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 8303
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 8304
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    .line 8300
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZZ)V

    return-void
.end method

.method public final removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3637
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method public final removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 5

    .line 3643
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 3644
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3645
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz p2, :cond_0

    and-int v4, v2, p2

    if-ne v4, v2, :cond_1

    .line 3648
    :cond_0
    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 10875
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10877
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10878
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10881
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10883
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    .line 8958
    :cond_0
    invoke-virtual {p4}, Landroid/widget/RemoteViews;->estimateMemoryUsage()J

    move-result-wide v1

    .line 8959
    iget p4, p0, Lcom/android/server/notification/NotificationManagerService;->mWarnRemoteViewsSizeBytes:I

    int-to-long v3, p4

    cmp-long p4, v1, v3

    const-string v3, " id: "

    const-string v4, " tag: "

    const-string v5, "NotificationService"

    if-lez p4, :cond_1

    iget p4, p0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    int-to-long v6, p4

    cmp-long p4, v1, v6

    if-gez p4, :cond_1

    .line 8961
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteViews too large on pkg: "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " this might be stripped in a future release"

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8964
    :cond_1
    iget p4, p0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    int-to-long v6, p4

    cmp-long p4, v1, v6

    if-ltz p4, :cond_2

    .line 8965
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerImageRemoved(Ljava/lang/String;)V

    .line 8966
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Removed too large RemoteViews ("

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " bytes) on pkg: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final reportCompatRateLimitingToastsChange(I)V
    .locals 4

    .line 10399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10401
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v2, 0xa6bdb34

    invoke-interface {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompat;->reportChangeByUid(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10406
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10403
    :try_start_1
    const-string p1, "NotificationService"

    const-string v2, "Unexpected exception while reporting toast was blocked due to rate limiting"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10406
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10407
    throw p0
.end method

.method public reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .locals 8

    .line 3846
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/notification/NotificationManagerService;ZLandroid/app/Notification;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportSeen(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2

    .line 3742
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isProxied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3743
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3744
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result p0

    const/16 p1, 0xa

    .line 3743
    invoke-virtual {v0, v1, p0, p1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    .line 3927
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3928
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    const/4 v3, 0x7

    .line 3927
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 3932
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public resetAssistantUserSet(I)V
    .locals 2

    .line 14513
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 14514
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 14515
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public resetDefaultDndIfNecessary()V
    .locals 4

    .line 1226
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 1227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1228
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1229
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->isDNDMigrationDone(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1232
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3, v2}, Lcom/android/server/notification/ConditionProviders;->removeDefaultFromConfig(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1233
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3}, Lcom/android/server/notification/ConditionProviders;->resetDefaultFromConfig()V

    .line 1234
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDndPackages(I)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1237
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_2
    return-void
.end method

.method public resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x0

    .line 9044
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9045
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9046
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return p3

    .line 9050
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 9053
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/NotificationManagerService;->isCallerAndroid(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 9054
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 9059
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot post for pkg "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return v0
.end method

.method public final revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 10

    if-eqz p2, :cond_1

    .line 11154
    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11155
    :cond_0
    invoke-static {p2, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 11157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 11159
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 11161
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    move-object v2, p1

    move-object v6, p4

    move v7, p5

    .line 11159
    invoke-interface/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11165
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11166
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final scheduleDurationReachedLocked(Lcom/android/server/notification/toast/ToastRecord;Z)V
    .locals 4

    .line 10445
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10446
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 10447
    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->getDuration()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0xdac

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d0

    .line 10451
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    if-eqz p2, :cond_1

    add-int/lit16 v1, v1, 0xfa

    .line 10457
    :cond_1
    instance-of p1, p1, Lcom/android/server/notification/toast/TextToastRecord;

    if-eqz p1, :cond_2

    add-int/lit16 v1, v1, 0x14d

    .line 10461
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    int-to-long p1, v1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleInterruptionFilterChanged(I)V
    .locals 2

    .line 10716
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10717
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 10720
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final scheduleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V
    .locals 2

    .line 10478
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10479
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 10480
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const-wide/16 v0, 0x2af8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleListenerHintsChanged(I)V
    .locals 2

    .line 10711
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10712
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5

    .line 10313
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x8000000

    .line 10314
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationTimeoutPendingIntent(Lcom/android/server/notification/NotificationRecord;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 10316
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 10317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 p1, 0x2

    .line 10316
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public final sendAppBlockStateChangedBroadcast(Ljava/lang/String;IZ)V
    .locals 2

    .line 3421
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/notification/NotificationManagerService;ZLjava/lang/String;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V
    .locals 8

    .line 3286
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v0

    .line 3310
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 3311
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v0, v4

    .line 3312
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3317
    :cond_0
    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_2

    aget v2, v0, v3

    .line 3318
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/ManagedServices;->getAllowedPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3319
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x4000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 3321
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .locals 1

    .line 3263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setAttentionHelper(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    .line 2657
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    return-void
.end method

.method public setDNDMigrationDone(I)V
    .locals 2

    .line 978
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dnd_settings_migrated"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setDefaultAssistantForUser(I)V
    .locals 3

    .line 1029
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getDefaultComponents()Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    .line 1032
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1033
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1034
    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->allowAssistant(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setHandler(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .locals 0

    .line 2639
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-void
.end method

.method public setIsTelevision(Z)V
    .locals 0

    .line 2662
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 2570
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public setNASMigrationDone(I)V
    .locals 6

    .line 1005
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nas_settings_updated"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V
    .locals 7

    .line 7358
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 7360
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 7361
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 7363
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 7364
    invoke-virtual {v1, v3}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v1

    .line 7363
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 7366
    invoke-virtual {p0, v1, v3, v0, p4}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 7371
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7372
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getRequiredPermission()Ljava/lang/String;

    move-result-object v5

    .line 7371
    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v5, p3

    move v6, p4

    goto :goto_2

    .line 7373
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0, p3}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)Z

    .line 7375
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)Z

    .line 7379
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-static {p3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->-$$Nest$msetNasUnsupportedDefaults(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;I)V

    .line 7382
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Landroid/content/Intent;

    const-string v0, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7384
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const/high16 v0, 0x40000000    # 2.0f

    .line 7385
    invoke-virtual {p4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p4

    .line 7386
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    .line 7382
    invoke-virtual {p3, p4, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 7388
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :goto_2
    move p3, v5

    move p4, v6

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setPreferencesHelper(Lcom/android/server/notification/PreferencesHelper;)V
    .locals 0

    .line 2648
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-void
.end method

.method public setRankingHelper(Lcom/android/server/notification/RankingHelper;)V
    .locals 0

    .line 2644
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-void
.end method

.method public setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V
    .locals 0

    .line 2580
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-void
.end method

.method public setStrongAuthTracker(Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;)V
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    return-void
.end method

.method public setTelecomManager(Landroid/telecom/TelecomManager;)V
    .locals 0

    .line 2667
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method

.method public setTestHarnessExempted(Z)V
    .locals 0

    .line 3259
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->setTestHarnessExempted(Z)V

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 2652
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-void
.end method

.method public showNextToastLocked(Z)V
    .locals 9

    .line 10333
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 10337
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    :goto_0
    if-eqz v0, :cond_6

    .line 10339
    iget v2, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 10340
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    iget v4, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    .line 10341
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    .line 10342
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object v6, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 10343
    const-string/jumbo v7, "toast_quota_tag"

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 10344
    invoke-virtual {p0, v5, v2}, Lcom/android/server/notification/NotificationManagerService;->isExemptFromRateLimiting(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v6

    .line 10345
    :goto_2
    iget v8, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-virtual {p0, v8}, Lcom/android/server/notification/NotificationManagerService;->isPackageInForegroundForToast(I)Z

    move-result v8

    .line 10347
    invoke-virtual {p0, v0, v4, v5, v8}, Lcom/android/server/notification/NotificationManagerService;->tryShowToast(Lcom/android/server/notification/toast/ToastRecord;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10349
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->scheduleDurationReachedLocked(Lcom/android/server/notification/toast/ToastRecord;Z)V

    .line 10350
    iput-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    if-nez v3, :cond_6

    if-nez v8, :cond_6

    .line 10352
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object p1, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v7}, Lcom/android/server/utils/quota/MultiRateLimiter;->noteEvent(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10357
    :cond_3
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 10359
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    .line 10360
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, v0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget v0, v0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {v2, v3, v6, v0}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 10363
    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public snoozeNotificationInt(ILandroid/service/notification/INotificationListener;Ljava/lang/String;JLjava/lang/String;)V
    .locals 13

    move-object/from16 v2, p3

    move-object/from16 v5, p6

    .line 11390
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v6

    .line 11391
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p2

    if-nez p2, :cond_0

    .line 11393
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 11395
    :cond_0
    iget-object v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 11396
    iget-object v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    cmp-long v1, p4, v3

    if-gtz v1, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    if-nez v2, :cond_3

    .line 11398
    :cond_2
    monitor-exit v6

    return-void

    .line 11401
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-nez v1, :cond_4

    .line 11403
    monitor-exit v6

    return-void

    .line 11405
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result p2

    if-nez p2, :cond_5

    .line 11406
    monitor-exit v6

    return-void

    .line 11408
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUpdateTimeMs()J

    move-result-wide v7

    .line 11410
    sget-boolean p2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p2, :cond_6

    .line 11411
    const-string p2, "NotificationService"

    const-string/jumbo v1, "snooze event(%s, %d, %s, %s)"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11415
    :cond_6
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    move-object v1, p0

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11416
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11418
    invoke-virtual {p0, v7, v8}, Lcom/android/server/notification/NotificationManagerService;->isNotificationRecent(J)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 11419
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v8, 0x8e

    move v9, p1

    invoke-virtual/range {v7 .. v12}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .line 11416
    :goto_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final tryShowToast(Lcom/android/server/notification/toast/ToastRecord;ZZZ)Z
    .locals 3

    const/4 v0, 0x0

    .line 10370
    const-string v1, "NotificationService"

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 10371
    iget p2, p1, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->reportCompatRateLimitingToastsChange(I)V

    .line 10372
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is above allowed toast quota, the following toast was blocked and discarded: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 10376
    :cond_0
    iget p2, p1, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    iget-boolean p3, p1, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->isAppRendered()Z

    move-result v2

    invoke-virtual {p0, p2, p3, v2, p4}, Lcom/android/server/notification/NotificationManagerService;->blockToast(IZZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Blocking custom toast from package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to package not in the foreground at the time of showing the toast"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 10382
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->show()Z

    move-result p0

    return p0
.end method

.method public unclassifyNotification(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final unhideNotificationsForPackages([Ljava/lang/String;[I)V
    .locals 7

    .line 11685
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11686
    :try_start_0
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 11687
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 11688
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11689
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 11691
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 11692
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11693
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11694
    invoke-virtual {v5, v3}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 11695
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11699
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyUnhiddenLocked(Ljava/util/List;)V

    .line 11700
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unsnoozeAll()V
    .locals 3

    .line 9414
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/SnoozeHelper;->repostAll(Landroid/util/IntArray;)V

    .line 9416
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 9417
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 11425
    :cond_0
    iget-object p2, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    .line 11426
    :goto_0
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1

    .line 11427
    const-string/jumbo v0, "unsnooze event(%s, %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotificationService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11429
    :cond_1
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;Z)V

    .line 11430
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public updateAutobundledSummaryLocked(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;Z)V
    .locals 7

    .line 1053
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1064
    :cond_0
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_1

    goto/16 :goto_3

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 1073
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget p3, p3, Landroid/app/Notification;->flags:I

    .line 1075
    iget-object v0, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 1076
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget v0, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 1077
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->color:I

    if-ne v0, v4, :cond_4

    iget v0, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 1078
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->visibility:I

    if-ne v0, v4, :cond_4

    iget v0, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    .line 1080
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v4

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    .line 1083
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v5, v4, Landroid/app/Notification;->flags:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 1084
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1085
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 1086
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    iget-object v6, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    .line 1085
    invoke-virtual {v4, p2, v5, v6, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1088
    invoke-virtual {v3, p2}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_2

    :cond_5
    move v1, v0

    .line 1094
    :goto_2
    iget p2, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    if-ne p3, p2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    return-void

    .line 1095
    :cond_7
    :goto_4
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    .line 1096
    iget v0, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    move p3, v0

    :cond_8
    iput p3, p2, Landroid/app/Notification;->flags:I

    .line 1097
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p3, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p2, p3}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 1098
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p3, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iput p3, p2, Landroid/app/Notification;->color:I

    .line 1099
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p3, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iput p3, p2, Landroid/app/Notification;->visibility:I

    .line 1100
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p3, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    .line 1101
    invoke-virtual {p2, p3}, Landroid/app/Notification;->setGroupAlertBehavior(I)V

    .line 1102
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    const/4 p4, 0x0

    .line 1103
    invoke-interface {p3, p4}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 1102
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateEffectsSuppressorLocked()V
    .locals 7

    .line 3478
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v3

    .line 3479
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    return-void

    .line 3482
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v2

    .line 3483
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;JJ)V

    .line 3485
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    .line 3494
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 3495
    const-string v0, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public final updateInterruptionFilterLocked()V
    .locals 2

    .line 3713
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 3714
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_0

    return-void

    .line 3715
    :cond_0
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 3716
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    return-void
.end method

.method public final updateListenerHintsLocked()V
    .locals 3

    .line 3469
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 3470
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_0

    return-void

    .line 3471
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 3472
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 3473
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    return-void
.end method

.method public final updateNotificationBubbleFlags(Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 0

    .line 8977
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 8978
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 8985
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, -0x2

    .line 8987
    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 8989
    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isBubbleSuppressable()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8991
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, -0x9

    .line 8993
    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .locals 14

    move/from16 v9, p2

    .line 3507
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 3509
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    .line 3510
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 3509
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 3512
    invoke-virtual {p0, v9}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3513
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v11

    .line 3514
    invoke-virtual {v11}, Landroid/util/IntArray;->size()I

    move-result v12

    move v13, v10

    :goto_0
    if-ge v13, v12, :cond_0

    .line 3516
    invoke-virtual {v11, v13}, Landroid/util/IntArray;->get(I)I

    move-result v7

    .line 3517
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v8, 0x11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3523
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3524
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v0, p1, v9, v1, v8}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v11

    .line 3526
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v6

    const/4 v4, 0x1

    move-object v1, p1

    move-object/from16 v3, p3

    move v2, v9

    .line 3526
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZIZ)V

    .line 3528
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3529
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3530
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v8

    goto :goto_1

    :cond_1
    move v4, v10

    .line 3529
    :goto_1
    invoke-virtual {v0, p1, v1, v4, v8}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V

    :cond_2
    move-object/from16 v0, p3

    .line 3532
    invoke-virtual {p0, p1, v2, v11, v0}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    if-nez p4, :cond_3

    .line 3535
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3536
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    .line 3535
    invoke-virtual {v1, p1, v2, v4, v10}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 3537
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 3538
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v6, 0x2

    .line 3537
    invoke-virtual {v4, p1, v5, v1, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 3543
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3544
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 3543
    invoke-virtual {v1, p1, v2, v0, v10}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 3545
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v2, p1, v0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Landroid/app/NotificationChannel;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3554
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 11049
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V

    return-void
.end method

.method public updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V
    .locals 13

    if-eqz p1, :cond_0

    .line 11056
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 11057
    :goto_0
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v2, "NotificationService"

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": updating permissions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 11059
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz p2, :cond_3

    .line 11060
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    goto/16 :goto_8

    :cond_4
    if-eqz p1, :cond_5

    .line 11070
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    goto :goto_3

    :cond_5
    move-object v6, v3

    :goto_3
    if-eqz p2, :cond_6

    if-nez v6, :cond_6

    .line 11073
    iget-object v6, p2, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    :cond_6
    if-eqz v4, :cond_8

    if-nez v6, :cond_8

    if-eqz v1, :cond_7

    .line 11078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": creating owner"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11079
    :cond_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOTIF:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    :cond_8
    if-nez v4, :cond_9

    if-eqz v6, :cond_9

    if-nez p5, :cond_9

    .line 11086
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/notification/NotificationManagerService;->destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V

    move-object v8, v3

    goto :goto_4

    :cond_9
    move-object v8, v6

    :goto_4
    const/4 v1, 0x0

    if-eqz v4, :cond_d

    if-eqz v8, :cond_d

    move v3, v1

    .line 11092
    :goto_5
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v3, v6, :cond_d

    .line 11093
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/net/Uri;

    if-eqz v5, :cond_a

    .line 11094
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 11095
    :cond_a
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v6, :cond_b

    .line 11096
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": granting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11098
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v10

    move-object v7, p0

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    .line 11106
    :goto_6
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_12

    .line 11107
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/net/Uri;

    if-eqz v4, :cond_e

    .line 11108
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 11109
    :cond_e
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": revoking "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-eqz p5, :cond_10

    .line 11114
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object v7, p0

    move-object/from16 v11, p3

    move/from16 v12, p4

    .line 11113
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    goto :goto_7

    .line 11121
    :cond_10
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v7, p0

    .line 11120
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_11
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    if-eqz p1, :cond_13

    .line 11129
    iput-object v8, p1, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    :cond_13
    :goto_8
    return-void
.end method

.method public final wasSummaryAutogrouped(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_5

    .line 10213
    iget v0, p2, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p0

    .line 10214
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    .line 10215
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, p0

    .line 10216
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_2

    .line 10217
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, p0

    :goto_2
    if-eqz v0, :cond_3

    if-nez p2, :cond_4

    :cond_3
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    :cond_4
    return v1

    :cond_5
    return p0
.end method

.method public writePolicyXml(Ljava/io/OutputStream;ZILandroid/app/backup/BackupRestoreEventLogger;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 1313
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 1314
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 1316
    :cond_0
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    goto :goto_0

    .line 1318
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-interface {v2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1319
    const-string/jumbo p1, "notification-policy"

    invoke-interface {v2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1320
    const-string/jumbo v1, "version"

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1321
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v4, 0x0

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLjava/lang/Integer;ILandroid/app/backup/BackupRestoreEventLogger;)V

    .line 1322
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p2, v2, v3, v5}, Lcom/android/server/notification/PreferencesHelper;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 1323
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p2, v2, v3, v5}, Lcom/android/server/notification/ManagedServices;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 1324
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p2, v2, v3, v5}, Lcom/android/server/notification/ManagedServices;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 1325
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p2, v2}, Lcom/android/server/notification/SnoozeHelper;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1326
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p2, v2, v3, v5}, Lcom/android/server/notification/ManagedServices;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    if-eqz v3, :cond_1

    if-nez v5, :cond_2

    .line 1328
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->writeSecureNotificationsPolicy(Lcom/android/modules/utils/TypedXmlSerializer;)V

    :cond_2
    if-nez v3, :cond_3

    .line 1331
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationListenerStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1333
    :cond_3
    invoke-interface {v2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1334
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public final writeSecureNotificationsPolicy(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3

    const/4 v0, 0x0

    .line 14548
    const-string v1, "allow-secure-notifications-on-lockscreen"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14549
    const-string/jumbo v2, "value"

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    invoke-interface {p1, v0, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 14551
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
