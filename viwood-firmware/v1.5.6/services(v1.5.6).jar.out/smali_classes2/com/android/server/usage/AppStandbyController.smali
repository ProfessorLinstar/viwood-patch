.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "AppStandbyController.java"

# interfaces
.implements Lcom/android/server/usage/AppStandbyInternal;
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# static fields
.field static final DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

.field static final DEFAULT_SCREEN_TIME_THRESHOLDS:[J

.field static final MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

.field static final MINIMUM_SCREEN_TIME_THRESHOLDS:[J

.field public static final THRESHOLD_BUCKETS:[I


# instance fields
.field public final mActiveAdminApps:Landroid/util/SparseArray;

.field public final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAdminProtectedPackages:Landroid/util/SparseArray;

.field public volatile mAppIdleEnabled:Z

.field public mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

.field public final mAppIdleLock:Ljava/lang/Object;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppStandbyElapsedThresholds:[J

.field public final mAppStandbyProperties:Ljava/util/Map;

.field public mAppStandbyScreenThresholds:[J

.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mAppsToRestoreToRare:Landroid/util/SparseSetArray;

.field public volatile mBroadcastResponseExemptedPermissions:Ljava/lang/String;

.field public volatile mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

.field public volatile mBroadcastResponseExemptedRoles:Ljava/lang/String;

.field public volatile mBroadcastResponseExemptedRolesList:Ljava/util/List;

.field public volatile mBroadcastResponseFgThresholdState:I

.field public volatile mBroadcastResponseWindowDurationMillis:J

.field public volatile mBroadcastSessionsDurationMs:J

.field public volatile mBroadcastSessionsWithResponseDurationMs:J

.field public mCachedDeviceProvisioningPackage:Ljava/lang/String;

.field public volatile mCachedNetworkScorer:Ljava/lang/String;

.field public volatile mCachedNetworkScorerAtMillis:J

.field public mCarrierPrivilegedApps:Ljava/util/List;

.field public final mCarrierPrivilegedLock:Ljava/lang/Object;

.field public mCheckIdleIntervalMillis:J

.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mExemptedSyncScheduledDozeTimeoutMillis:J

.field public mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field public mExemptedSyncStartTimeoutMillis:J

.field public final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field public final mHasFeatureTelephonySubscription:Z

.field public mHaveCarrierPrivilegedApps:Z

.field public final mHeadlessSystemApps:Landroid/util/ArraySet;

.field public mInitialForegroundServiceStartTimeoutMillis:J

.field public mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field public volatile mIsCharging:Z

.field public mLinkCrossProfileApps:Z

.field public volatile mNoteResponseEventForAllBroadcastSessions:Z

.field public mNotificationSeenPromotedBucket:I

.field public mNotificationSeenTimeoutMillis:J

.field public final mPackageAccessListeners:Ljava/util/ArrayList;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPendingIdleStateChecks:Landroid/util/SparseLongArray;

.field public mPendingInitializeDefaults:Z

.field public volatile mPendingOneTimeCheckIdleStates:Z

.field public mPredictionTimeoutMillis:J

.field public mRetainNotificationSeenImpactForPreTApps:Z

.field public mSlicePinnedTimeoutMillis:J

.field public mStrongUsageTimeoutMillis:J

.field public mSyncAdapaterPromotedBucket:I

.field public mSyncAdapterTimeoutMillis:J

.field public final mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

.field public mSystemInteractionTimeoutMillis:J

.field public final mSystemPackagesAppIds:Ljava/util/ArrayList;

.field public mSystemServicesReady:Z

.field public mSystemUpdateUsageTimeoutMillis:J

.field public mTriggerQuotaBumpOnNotificationSeen:Z

.field public mUnexemptedSyncScheduledTimeoutMillis:J


# direct methods
.method public static synthetic $r8$lambda$KASTYduY3JRt750UcTvOhtni_NI(Lcom/android/server/usage/AppStandbyController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->lambda$restoreAppsToRare$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$R1BnLLc8pHhJyjLrszRkEJC2lnw()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$U2-GF_fLZHT7_Jm_uRMpoT-uHZQ(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->loadHeadlessSystemAppCache()V

    return-void
.end method

.method public static synthetic $r8$lambda$vJLDXlUh4fYgit4sBALnnUw4CrE(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->updatePowerWhitelistCache()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppIdleEnabled(Lcom/android/server/usage/AppStandbyController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppIdleHistory(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppIdleLock(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppStandbyProperties(Lcom/android/server/usage/AppStandbyController;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsToRestoreToRare(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseSetArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemExemptionAppOpMode(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemServicesReady(Lcom/android/server/usage/AppStandbyController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmTriggerQuotaBumpOnNotificationSeen(Lcom/android/server/usage/AppStandbyController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckAndUpdateStandbyState(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mevaluateSystemAppException(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->evaluateSystemAppException(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minformListeners(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->informListeners(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->informParoleStateChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misDisplayOn(Lcom/android/server/usage/AppStandbyController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreportContentProviderUsage(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportExemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportExemptedSyncStart(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncStart(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportUnexemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportUnexemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreAppToRare(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IJI)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->restoreAppToRare(Ljava/lang/String;IJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->triggerListenerQuotaBump(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerWhitelistCache(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->updatePowerWhitelistCache()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwaitForAdminData(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->waitForAdminData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTHRESHOLD_BUCKETS()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    .line 171
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    .line 181
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    .line 196
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    .line 206
    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    const/16 v0, 0x28

    const/16 v1, 0x2d

    const/16 v2, 0xa

    const/16 v3, 0x14

    const/16 v4, 0x1e

    .line 216
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
        0x1499700
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x1b7740
        0x36ee80
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
        0x2932e000
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x36ee80
        0x36ee80
        0x6ddd00
        0xdbba00
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 600
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;-><init>(Lcom/android/server/usage/AppStandbyController$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usage/AppStandbyController$Injector;)V
    .locals 10

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v1, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v1}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    .line 273
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 277
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 284
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 287
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 293
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 300
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 306
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 314
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 329
    sget-object v3, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    const-wide/32 v6, 0xdbba00

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 335
    sget-object v4, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    iput-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 340
    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const-wide/32 v3, 0x36ee80

    .line 342
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    const-wide/32 v3, 0x2932e00

    .line 344
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 346
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    const/16 v5, 0x14

    .line 348
    iput v5, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    const/4 v5, 0x0

    .line 354
    iput-boolean v5, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    .line 360
    iput-boolean v5, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    const-wide/32 v8, 0x6ddd00

    .line 363
    iput-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 365
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    const-wide/32 v3, 0x927c0

    .line 367
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    const/16 v8, 0xa

    .line 369
    iput v8, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapaterPromotedBucket:I

    .line 374
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 380
    iput-wide v6, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 385
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 389
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 392
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    const-wide/32 v3, 0x1b7740

    .line 397
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 404
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    const-wide/32 v3, 0x1d4c0

    .line 411
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    const/4 v6, 0x2

    .line 419
    iput v6, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    .line 426
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    .line 435
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    .line 445
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    .line 454
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 456
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    .line 464
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 466
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    .line 475
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    .line 481
    new-instance v2, Landroid/util/SparseSetArray;

    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    .line 486
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    .line 501
    iput-boolean v5, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 3010
    new-instance v2, Lcom/android/server/usage/AppStandbyController$2;

    invoke-direct {v2, p0}, Lcom/android/server/usage/AppStandbyController$2;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 604
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 605
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 606
    new-instance v8, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v8, p0, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 607
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 608
    const-string v2, "android.hardware.telephony.subscription"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mHasFeatureTelephonySubscription:Z

    .line 611
    new-instance p1, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController-IA;)V

    .line 612
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.os.action.CHARGING"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 613
    const-string v4, "android.os.action.DISCHARGING"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    const-string v4, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v3, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 617
    monitor-enter v1

    .line 618
    :try_start_0
    new-instance p1, Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 619
    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p1, v2, v4, v5}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 620
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 623
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 625
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string/jumbo p1, "package"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 628
    new-instance v4, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    invoke-direct {v4, p0, v0}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController-IA;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 620
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isUserUsage(I)Z
    .locals 3

    .line 0
    const v0, 0xff00

    and-int/2addr v0, p0

    const/16 v1, 0x300

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method


# virtual methods
.method public addActiveDeviceAdmin(Ljava/lang/String;I)V
    .locals 2

    .line 1976
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1977
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1979
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1980
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1982
    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1983
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .locals 2

    .line 1398
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1399
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1400
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1402
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

.method public final checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p4

    if-gtz p3, :cond_0

    .line 962
    :try_start_0
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    .line 970
    :goto_0
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 969
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v5

    const/16 v6, 0xa

    if-gt v5, v6, :cond_1

    .line 980
    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 981
    :try_start_1
    iget-object v6, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v9

    .line 982
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v7, 0x100

    move v6, v5

    move-wide v4, v3

    move v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    move-object v1, v2

    move v2, v3

    move-wide v3, v4

    move v5, v6

    .line 984
    iget-object v6, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v10

    .line 985
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v6, 0x100

    const/4 v7, 0x0

    .line 986
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    .line 985
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    move-object v7, v0

    .line 989
    iget-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 990
    :try_start_3
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v9

    .line 991
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 992
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 994
    iget v10, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v11, 0xff00

    and-int/2addr v11, v10

    const/16 v12, 0x400

    if-ne v11, v12, :cond_2

    .line 1000
    monitor-exit v8

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    .line 1002
    :cond_2
    iget v12, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v13, 0x32

    if-ne v12, v13, :cond_3

    .line 1005
    monitor-exit v8

    return-void

    .line 1007
    :cond_3
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1008
    invoke-virtual {v7, v0, v3, v4}, Lcom/android/server/usage/AppStandbyController;->predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z

    move-result v14

    const/16 v15, 0x200

    const/16 v6, 0x100

    if-eq v11, v6, :cond_4

    const/16 v6, 0x300

    if-eq v11, v6, :cond_4

    if-eq v11, v15, :cond_4

    if-eqz v14, :cond_7

    :cond_4
    if-nez v14, :cond_5

    .line 1015
    iget v6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    const/16 v15, 0xa

    if-lt v6, v15, :cond_5

    const/16 v15, 0x28

    if-gt v6, v15, :cond_5

    const/16 v10, 0x501

    move v13, v6

    goto :goto_1

    :cond_5
    const/16 v6, 0x100

    if-ne v11, v6, :cond_6

    .line 1025
    iget v6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit16 v6, v6, 0xff

    const/4 v11, 0x2

    if-eq v6, v11, :cond_7

    .line 1028
    :cond_6
    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v13

    const/16 v10, 0x200

    .line 1039
    :cond_7
    :goto_1
    iget-object v6, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    .line 1040
    invoke-virtual {v7, v0, v13, v1, v2}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_a

    const/16 v15, 0xa

    if-eq v6, v15, :cond_9

    .line 1044
    iget v10, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v10, v6, :cond_8

    goto :goto_3

    :cond_8
    const/16 v10, 0x307

    :goto_2
    move-wide v15, v1

    move v13, v6

    goto :goto_4

    .line 1045
    :cond_9
    :goto_3
    iget v10, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_2

    :cond_a
    move-wide v15, v1

    .line 1055
    :goto_4
    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-wide/16 v17, 0x0

    cmp-long v6, v1, v17

    if-ltz v6, :cond_b

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_b

    sub-long v1, v15, v17

    iget-object v6, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1058
    invoke-virtual {v6}, Lcom/android/server/usage/AppStandbyController$Injector;->getAutoRestrictedBucketDelayMs()J

    move-result-wide v15

    cmp-long v1, v1, v15

    if-ltz v1, :cond_b

    .line 1060
    iget v10, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    const/16 v0, 0x2d

    move v13, v0

    :cond_b
    move v6, v10

    if-le v13, v5, :cond_c

    goto :goto_5

    :cond_c
    move v5, v13

    :goto_5
    if-ne v12, v5, :cond_e

    if-eqz v14, :cond_d

    goto :goto_6

    :cond_d
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v0, v7

    move v10, v9

    goto :goto_7

    .line 1079
    :cond_e
    :goto_6
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 1081
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v10

    const/4 v7, 0x0

    move-object/from16 v0, p0

    .line 1082
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1087
    :goto_7
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_8
    if-eq v9, v10, :cond_f

    .line 1090
    invoke-virtual {v0, v1, v2, v10}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    :catch_0
    :cond_f
    return-void

    .line 1087
    :goto_9
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public checkIdleStates(I)Z
    .locals 13

    .line 915
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 921
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getRunningUserIds()[I

    move-result-object v0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 923
    invoke-static {v0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return v1

    .line 930
    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    move v3, v1

    .line 931
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 932
    aget v6, v0, v3

    if-eq p1, v2, :cond_3

    if-eq p1, v6, :cond_3

    :cond_2
    move-object v4, p0

    goto :goto_2

    .line 939
    :cond_3
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x200

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v10

    .line 942
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v12, v1

    :goto_1
    if-ge v12, v11, :cond_2

    .line 944
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 945
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 946
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object p0, v4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 927
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public clearAppIdleForPackage(Ljava/lang/String;I)V
    .locals 1

    .line 2195
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2196
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsage(Ljava/lang/String;I)V

    .line 2197
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearCarrierPrivilegedApps()V
    .locals 2

    .line 2069
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2070
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    const/4 v1, 0x0

    .line 2071
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 2072
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearLastUsedTimestampsForTest(Ljava/lang/String;I)V
    .locals 1

    .line 2167
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2168
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearLastUsedTimestamps(Ljava/lang/String;I)V

    .line 2169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    .line 2476
    const-string p1, "Flags: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    com.android.server.usage.avoid_idle_check: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 2478
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2477
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    com.android.server.usage.adjust_default_bucket_elevation_params: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2479
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    com.android.server.usage.persist_restore_to_rare_apps_list: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2482
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2481
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2483
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2485
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2486
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Carrier privileged apps (have="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2488
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2490
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2491
    const-string p1, "Settings:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2493
    const-string p1, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2495
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2497
    const-string p1, "  mStrongUsageTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2499
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2500
    const-string p1, "  mNotificationSeenTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2501
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2502
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2503
    const-string p1, "  mNotificationSeenPromotedBucket="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2504
    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    invoke-static {p1}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2505
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2506
    const-string p1, "  mTriggerQuotaBumpOnNotificationSeen="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2508
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2509
    const-string p1, "  mRetainNotificationSeenImpactForPreTApps="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2510
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2511
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2512
    const-string p1, "  mSlicePinnedTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2514
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2515
    const-string p1, "  mSyncAdapterTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2516
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2517
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2518
    const-string p1, "  mSyncAdapaterPromotedBucket="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapaterPromotedBucket:I

    invoke-static {p1}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2521
    const-string p1, "  mSystemInteractionTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2522
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2523
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2524
    const-string p1, "  mInitialForegroundServiceStartTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2526
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2528
    const-string p1, "  mPredictionTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2529
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2530
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2532
    const-string p1, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2533
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2534
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2535
    const-string p1, "  mExemptedSyncScheduledDozeTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2536
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2537
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2538
    const-string p1, "  mExemptedSyncStartTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2540
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2541
    const-string p1, "  mUnexemptedSyncScheduledTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2542
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2543
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2545
    const-string p1, "  mSystemUpdateUsageTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2546
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2547
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2549
    const-string p1, "  mBroadcastResponseWindowDurationMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2550
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2551
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2553
    const-string p1, "  mBroadcastResponseFgThresholdState="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2554
    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    invoke-static {p1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2557
    const-string p1, "  mBroadcastSessionsDurationMs="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2558
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2559
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2561
    const-string p1, "  mBroadcastSessionsWithResponseDurationMs="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2562
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2563
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2565
    const-string p1, "  mNoteResponseEventForAllBroadcastSessions="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2566
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2567
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2569
    const-string p1, "  mBroadcastResponseExemptedRoles="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2570
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2573
    const-string p1, "  mBroadcastResponseExemptedPermissions="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2574
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2575
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2577
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2578
    const-string p1, "mAppIdleEnabled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2579
    const-string p1, " mIsCharging="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2580
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2581
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2582
    const-string p1, "mScreenThresholds="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2583
    const-string p1, "mElapsedThresholds="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2584
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2586
    const-string p1, "mHeadlessSystemApps=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2587
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v1

    .line 2588
    :try_start_1
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_1

    .line 2589
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2590
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2591
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 2593
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2594
    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2597
    const-string p1, "mSystemPackagesAppIds=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2598
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    monitor-enter p1

    .line 2599
    :try_start_2
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_2
    if-ltz v1, :cond_3

    .line 2600
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2601
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 2602
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2604
    :cond_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2605
    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2608
    const-string p1, "mActiveAdminApps=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2609
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2610
    :try_start_3
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, p1, :cond_5

    .line 2612
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2613
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2615
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2616
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v3, p1, -0x1

    if-eq v2, v3, :cond_4

    .line 2617
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_9

    .line 2618
    :cond_4
    :goto_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2620
    :cond_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2621
    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2624
    const-string p1, "mAdminProtectedPackages=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter p1

    .line 2626
    :try_start_4
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_6
    if-ge v1, v0, :cond_7

    .line 2628
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2629
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2631
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2632
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_6

    .line 2633
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_8

    .line 2634
    :cond_6
    :goto_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2636
    :cond_7
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2637
    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2638
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2640
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->dump(Ljava/io/PrintWriter;)V

    return-void

    .line 2636
    :goto_8
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    .line 2620
    :goto_9
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    .line 2604
    :goto_a
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    .line 2593
    :goto_b
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0

    :catchall_4
    move-exception p0

    .line 2488
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0
.end method

.method public dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .locals 1

    .line 2469
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2470
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V

    .line 2471
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final evaluateSystemAppException(Ljava/lang/String;I)V
    .locals 2

    .line 2318
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2323
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x1c0200

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 2325
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController;->maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2327
    :catch_0
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter p2

    .line 2328
    :try_start_1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2329
    monitor-exit p2

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final fetchCarrierPrivilegedAppsCPL()V
    .locals 2

    .line 2077
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 2078
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2080
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    const/4 v0, 0x1

    .line 2081
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    return-void
.end method

.method public flushHandler(J)Z
    .locals 1

    .line 2178
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public flushToDisk()V
    .locals 4

    .line 2183
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(J)V

    .line 2185
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurations()V

    .line 2186
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forceIdleState(Ljava/lang/String;IZ)V
    .locals 12

    .line 1308
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    goto/16 :goto_0

    .line 1312
    :cond_1
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v0

    if-eqz p3, :cond_2

    const/16 v1, 0x28

    if-ge v0, v1, :cond_2

    .line 1314
    const-string p0, "AppStandbyController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to force an app to be idle when its min bucket is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-static {v0}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1314
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1318
    :cond_2
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 1320
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p0

    .line 1323
    iget-object p1, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p1

    move-wide v7, v5

    move v6, v4

    .line 1324
    :try_start_0
    iget-object v4, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v5, v2

    move-wide v8, v7

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IZJ)I

    move-result p2

    move-object v2, v5

    move v4, v6

    move-wide v5, v8

    .line 1325
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p1

    const/16 v10, 0x400

    const/4 v11, 0x0

    move v9, p2

    move-wide v7, v5

    move-object v5, v2

    move v6, v4

    move-object v4, v1

    .line 1329
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    move v4, v6

    if-eq p0, p1, :cond_3

    .line 1332
    invoke-virtual {v1, v2, v4, p1}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1325
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getActiveAdminAppsForTest(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2028
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2029
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2030
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAdminProtectedPackagesForTest(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2035
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2036
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2037
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppId(Ljava/lang/String;)I
    .locals 1

    .line 1415
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v0, 0x400200

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1418
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public getAppIdleHistoryForTest()Lcom/android/server/usage/AppIdleHistory;
    .locals 1

    .line 2462
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2463
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2464
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAppMinBucket(Ljava/lang/String;I)I
    .locals 1

    .line 1437
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1438
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/16 p0, 0x32

    return p0
.end method

.method public final getAppMinBucket(Ljava/lang/String;II)I
    .locals 7

    const/16 v0, 0x32

    if-nez p1, :cond_0

    return v0

    .line 1452
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v2, 0x5

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_2

    return v2

    .line 1459
    :cond_2
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 1464
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    const/16 v3, 0xa

    if-eqz v1, :cond_d

    .line 1468
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isNonIdleWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 1472
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 1476
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isAdminProtectedPackages(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 1480
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    .line 1484
    :cond_7
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 1485
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 1486
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_8

    .line 1487
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_9

    .line 1489
    monitor-exit v4

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1492
    :cond_8
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v6, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    .line 1495
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-nez v5, :cond_9

    .line 1497
    monitor-exit v4

    return v2

    .line 1500
    :cond_9
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1503
    invoke-virtual {v4, v1, p1, p3}, Lcom/android/server/usage/AppStandbyController$Injector;->isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    .line 1507
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v2

    .line 1511
    :cond_b
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isWellbeingPackage(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x14

    if-eqz v1, :cond_c

    return v4

    .line 1515
    :cond_c
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1516
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 1515
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->shouldGetExactAlarmBucketElevation(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_d

    return v4

    .line 1500
    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1522
    :cond_d
    iget-boolean p2, p0, Lcom/android/server/usage/AppStandbyController;->mHasFeatureTelephonySubscription:Z

    if-eqz p2, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isCarrierApp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    return v2

    .line 1526
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isHeadlessSystemApp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    return v3

    .line 1530
    :cond_f
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/16 p0, 0x1e

    return p0

    :cond_10
    return v0
.end method

.method public getAppMinStandbyBucket(Ljava/lang/String;IIZ)I
    .locals 0

    if-eqz p4, :cond_0

    .line 1659
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p4, p3, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/16 p0, 0x32

    return p0

    .line 1662
    :cond_0
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1663
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result p0

    monitor-exit p4

    return p0

    :catchall_0
    move-exception p0

    .line 1664
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJZ)I
    .locals 1

    .line 1629
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    if-eqz p5, :cond_1

    .line 1632
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p5, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    const/16 p0, 0xa

    return p0

    .line 1636
    :cond_1
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p5

    .line 1637
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p0

    monitor-exit p5

    return p0

    :catchall_0
    move-exception p0

    .line 1638
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppStandbyBucketReason(Ljava/lang/String;IJ)I
    .locals 1

    .line 1643
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1644
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyReason(Ljava/lang/String;IJ)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1645
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppStandbyBuckets(I)Ljava/util/List;
    .locals 2

    .line 1650
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1651
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, p1, p0}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBuckets(IZ)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1652
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2162
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBroadcastResponseExemptedPermissions()Ljava/util/List;
    .locals 0

    .line 2156
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    return-object p0
.end method

.method public getBroadcastResponseExemptedRoles()Ljava/util/List;
    .locals 0

    .line 2150
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    return-object p0
.end method

.method public getBroadcastResponseFgThresholdState()I
    .locals 0

    .line 2129
    iget p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    return p0
.end method

.method public getBroadcastResponseWindowDurationMs()J
    .locals 2

    .line 2124
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    return-wide v0
.end method

.method public getBroadcastSessionsDurationMs()J
    .locals 2

    .line 2134
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    return-wide v0
.end method

.method public getBroadcastSessionsWithResponseDurationMs()J
    .locals 2

    .line 2139
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    return-wide v0
.end method

.method public final getBucketForLocked(Ljava/lang/String;IJ)I
    .locals 7

    .line 1126
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->getThresholdIndex(Ljava/lang/String;IJ[J[J)I

    move-result p0

    if-ltz p0, :cond_0

    .line 1128
    sget-object p1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    aget p0, p1, p0

    return p0

    :cond_0
    const/16 p0, 0x32

    return p0
.end method

.method public final getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    if-nez v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1287
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->getValidCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1287
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getEstimatedLaunchTime(Ljava/lang/String;I)J
    .locals 3

    .line 1363
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1364
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1365
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getEstimatedLaunchTime(Ljava/lang/String;IJ)J

    move-result-wide p0

    monitor-exit v2

    return-wide p0

    :catchall_0
    move-exception p0

    .line 1366
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIdleUidsForUser(I)[I
    .locals 18

    move-object/from16 v0, p0

    .line 1566
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_0

    .line 1567
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 1570
    :cond_0
    const-string v1, "getIdleUidsForUser"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1572
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 1574
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 1575
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    move/from16 v9, p1

    invoke-virtual {v1, v2, v3, v9, v8}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1577
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 1581
    :cond_1
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1583
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    const/4 v12, 0x0

    move v13, v1

    move v14, v12

    :goto_0
    if-ltz v13, :cond_7

    .line 1584
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .line 1585
    iget v1, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    move/from16 v16, v11

    goto :goto_1

    .line 1587
    :cond_2
    invoke-virtual {v10, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    move/from16 v16, v2

    :goto_1
    if-eqz v16, :cond_3

    move v2, v1

    .line 1589
    iget-object v1, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1590
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v17, v9

    move v9, v2

    move v2, v3

    move/from16 v3, v17

    .line 1589
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v11

    goto :goto_2

    :cond_3
    move v9, v1

    :cond_4
    move v0, v12

    :goto_2
    if-eqz v16, :cond_5

    if-nez v0, :cond_5

    add-int/lit8 v14, v14, 0x1

    :cond_5
    if-gez v9, :cond_6

    .line 1597
    iget v1, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 1599
    :cond_6
    invoke-virtual {v10, v9, v0}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    :goto_3
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v9, p1

    goto :goto_0

    .line 1603
    :cond_7
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v14

    .line 1604
    new-array v1, v0, [I

    .line 1605
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    sub-int/2addr v2, v11

    :goto_4
    if-ltz v2, :cond_9

    .line 1606
    invoke-virtual {v10, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v0, v0, -0x1

    .line 1607
    invoke-virtual {v10, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v0

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1613
    :cond_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1
.end method

.method public final getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I
    .locals 5

    .line 1264
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1267
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    .line 1269
    iget-object v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    if-gt p2, v2, :cond_1

    goto :goto_1

    .line 1273
    :cond_1
    iget-object v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final getSystemPackagesWithLauncherActivities()Ljava/util/Set;
    .locals 3

    .line 2396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2397
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2398
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x1c0200

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 2400
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2401
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2402
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTargetSdkVersion(Ljava/lang/String;)I
    .locals 0

    .line 1255
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .locals 3

    .line 1345
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1346
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1347
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastJobRun(Ljava/lang/String;IJ)J

    move-result-wide p0

    monitor-exit v2

    return-wide p0

    :catchall_0
    move-exception p0

    .line 1348
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTimeSinceLastUsedByUser(Ljava/lang/String;I)J
    .locals 3

    .line 1371
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1372
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1373
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastUsedByUser(Ljava/lang/String;IJ)J

    move-result-wide p0

    monitor-exit v2

    return-wide p0

    :catchall_0
    move-exception p0

    .line 1374
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final informListeners(Ljava/lang/String;IIIZ)V
    .locals 9

    const/16 v0, 0x28

    const/4 v1, 0x0

    if-lt p3, v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    .line 2103
    :goto_0
    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 2104
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    .line 2105
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    if-eqz p5, :cond_1

    .line 2107
    invoke-virtual {v2, v3, v4}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    :goto_2
    move-object p1, v3

    move p2, v4

    move p3, v6

    move p4, v7

    goto :goto_1

    .line 2110
    :cond_2
    monitor-exit v8

    return-void

    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final informParoleStateChanged()V
    .locals 5

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v0

    .line 2115
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2116
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 2117
    invoke-virtual {v4, v0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2119
    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initializeDefaultsForSystemApps(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v3, p1

    .line 2365
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2367
    iput-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    return-void

    .line 2370
    :cond_0
    const-string v1, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing defaults for system apps on user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", appIdleEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v10

    .line 2373
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v12

    .line 2376
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 2377
    iget-object v14, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v1, 0x0

    move v15, v1

    :goto_0
    if-ge v15, v13, :cond_2

    .line 2379
    :try_start_0
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 2380
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2381
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2384
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v4, v0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    add-long v8, v10, v4

    const/16 v4, 0xa

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2390
    :cond_2
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    .line 2391
    monitor-exit v14

    return-void

    :goto_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .locals 1

    .line 1957
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1958
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 1959
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 1960
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isActiveNetworkScorer(Ljava/lang/String;)Z
    .locals 6

    .line 2091
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2092
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    const-wide/16 v4, 0x1388

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 2094
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getActiveNetworkScorer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 2095
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 2097
    :cond_1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isAdminProtectedPackages(Ljava/lang/String;I)Z
    .locals 4

    .line 1964
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1965
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 1966
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1967
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1969
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 1970
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    monitor-exit v0

    return v3

    .line 1971
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAppIdleEnabled()Z
    .locals 0

    .line 658
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return p0
.end method

.method public isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .locals 2

    .line 1547
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1551
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1552
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result p0

    const/16 p1, 0x28

    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public isAppIdleFiltered(Ljava/lang/String;IJZ)Z
    .locals 6

    if-eqz p5, :cond_0

    .line 1427
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1428
    invoke-virtual {p5, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1431
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p0

    return p0
.end method

.method public final isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1392
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1393
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCarrierApp(Ljava/lang/String;)Z
    .locals 2

    .line 2053
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2054
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    if-nez v1, :cond_0

    .line 2055
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->fetchCarrierPrivilegedAppsCPL()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2057
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 2058
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 2060
    monitor-exit v0

    return p0

    .line 2061
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .locals 2

    .line 2045
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 2049
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isDisplayOn()Z
    .locals 0

    .line 2190
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDefaultDisplayOn()Z

    move-result p0

    return p0
.end method

.method public final isHeadlessSystemApp(Ljava/lang/String;)Z
    .locals 1

    .line 1539
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1540
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1541
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isInParole()Z
    .locals 1

    .line 881
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

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

.method public final synthetic lambda$restoreAppsToRare$0(I)V
    .locals 0

    .line 1712
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    return-void
.end method

.method public final loadHeadlessSystemAppCache()V
    .locals 8

    .line 2409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2410
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x1c0200

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 2413
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->getSystemPackagesWithLauncherActivities()Ljava/util/Set;

    move-result-object v3

    .line 2415
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    .line 2417
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    if-nez v6, :cond_0

    goto :goto_1

    .line 2421
    :cond_0
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2422
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 2424
    invoke-virtual {p0, v6, v7}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2435
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded headless system app cache in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms: appIdleEnabled="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppStandbyController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final maybeInformListeners(Ljava/lang/String;IJIIZ)V
    .locals 8

    .line 1104
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1105
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppIdleHistory;->shouldInformListeners(Ljava/lang/String;IJI)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1107
    invoke-static {v3, v4, v7, p6, p7}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-result-object p1

    .line 1110
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1112
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public maybeUnrestrictApp(Ljava/lang/String;IIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 2215
    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2216
    :try_start_0
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 2217
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 2218
    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    .line 2219
    iget v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_2

    iget v2, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v3, 0xff00

    and-int/2addr v3, v2

    move/from16 v5, p3

    if-eq v3, v5, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit16 v3, v2, 0xff

    if-ne v3, v1, :cond_1

    or-int v1, p5, p6

    const/16 v4, 0x28

    :goto_0
    move v15, v1

    move v14, v4

    goto :goto_1

    :cond_1
    not-int v1, v1

    and-int/2addr v1, v2

    goto :goto_0

    .line 2236
    :goto_1
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide v3, v12

    move v5, v14

    move v6, v15

    .line 2238
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 2240
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2221
    :cond_2
    :goto_2
    monitor-exit v8

    return-void

    .line 2240
    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public maybeUnrestrictBuggyApp(Ljava/lang/String;I)V
    .locals 7

    const/16 v5, 0x100

    const/4 v6, 0x1

    const/16 v3, 0x600

    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 2206
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppStandbyController;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public final maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2339
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 2340
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2341
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2344
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 2345
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2346
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2347
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x1c0200

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 2349
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final notifyBatteryStats(Ljava/lang/String;IZ)V
    .locals 2

    .line 1133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p2

    if-eqz p3, :cond_0

    .line 1136
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 p3, 0xf

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V

    return-void

    .line 1139
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 p3, 0x10

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onAdminDataAvailable()V
    .locals 0

    .line 2013
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 4

    .line 663
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_3

    .line 665
    const-string p1, "AppStandbyController"

    const-string v0, "Setting app idle enabled state"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz p1, :cond_0

    .line 668
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 672
    :cond_0
    new-instance p1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    .line 673
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->start()V

    .line 675
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 676
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 677
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    .line 679
    :try_start_0
    new-instance v0, Lcom/android/server/usage/AppStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 697
    const-string v0, "AppStandbyController"

    const-string v1, "Failed start watching for app op"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    :goto_0
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 701
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_1
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 703
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x1

    .line 705
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 708
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 709
    :try_start_2
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppIdleHistory;->userFileExists(I)Z

    move-result v0

    .line 710
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 712
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    if-nez p1, :cond_1

    if-nez v0, :cond_2

    .line 713
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 721
    :cond_2
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v0, 0x205c2000

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    .line 723
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 724
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 725
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 710
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 703
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_3
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_4

    .line 728
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isCharging()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 733
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 8

    .line 1150
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1151
    :cond_0
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/4 v0, 0x1

    if-eq v3, v0, :cond_2

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    const/4 v0, 0x6

    if-eq v3, v0, :cond_2

    const/4 v0, 0x7

    if-eq v3, v0, :cond_2

    const/16 v0, 0xa

    if-eq v3, v0, :cond_2

    const/16 v0, 0xe

    if-eq v3, v0, :cond_2

    const/16 v0, 0xd

    if-eq v3, v0, :cond_2

    const/16 v0, 0x13

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 1160
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-virtual {p0, v2, p1}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 1162
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p0

    move v6, p1

    .line 1164
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(Ljava/lang/String;IJI)V

    .line 1166
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_2
    if-ge p1, p0, :cond_3

    .line 1168
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1169
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(Ljava/lang/String;IJI)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 1171
    :cond_3
    monitor-exit v7

    return-void

    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserRemoved(I)V
    .locals 3

    .line 1379
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 1381
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1383
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1384
    :try_start_2
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1385
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1386
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1387
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 1386
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception p0

    .line 1383
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    .line 1387
    :goto_0
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public postCheckIdleStates(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 893
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    return-void

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 897
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    .line 897
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public postOneTimeCheckIdleStates()V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 906
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 909
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    return-void
.end method

.method public final postParoleStateChanged()V
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 887
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2442
    invoke-static {p1, p2, p3}, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->obtain(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    move-result-object p1

    .line 2444
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2445
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postReportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 2

    .line 2456
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2457
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postReportSyncScheduled(Ljava/lang/String;IZ)V
    .locals 1

    .line 2450
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2451
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z
    .locals 4

    .line 1096
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 1097
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long/2addr p2, v0

    iget-wide p0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    cmp-long p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1408
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1409
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p3

    .line 739
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move-object/from16 v1, p1

    .line 742
    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 744
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 745
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    .line 746
    array-length v12, v10

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v1, v10, v13

    move-object/from16 v14, p2

    .line 748
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    .line 752
    invoke-virtual {v11, v1, v3, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 755
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 758
    iget-object v15, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v15

    .line 759
    :try_start_0
    iget v3, v0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapaterPromotedBucket:I

    iget-wide v7, v0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    const/16 v4, 0x8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 762
    monitor-exit v15

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p3

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final reportEventLocked(Ljava/lang/String;IJI)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v1, p2

    move-wide/from16 v11, p3

    move/from16 v4, p5

    .line 1179
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v3, v4, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v13

    .line 1182
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v3, v4, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    .line 1184
    iget v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 1185
    iget v15, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 1187
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->usageEventToSubReason(I)I

    move-result v6

    or-int/lit16 v5, v6, 0x300

    const/4 v7, -0x1

    const/16 v8, 0xa

    if-ne v1, v8, :cond_2

    .line 1192
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    if-eqz v1, :cond_0

    .line 1193
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppStandbyController;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x21

    if-ge v1, v9, :cond_0

    const/16 v1, 0x14

    const-wide/32 v9, 0x2932e00

    :goto_0
    move-wide/from16 v16, v9

    goto :goto_1

    .line 1199
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    if-eqz v1, :cond_1

    .line 1200
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v9, 0x7

    invoke-virtual {v1, v9, v4, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1201
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1203
    :cond_1
    iget v1, v0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    .line 1204
    iget-wide v9, v0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    goto :goto_0

    .line 1209
    :goto_1
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move v10, v7

    move/from16 v18, v8

    const-wide/16 v7, 0x0

    move/from16 v20, v5

    move/from16 v19, v10

    move v5, v1

    move-object v1, v9

    add-long v9, v11, v16

    move/from16 v12, v18

    move/from16 v11, v19

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object v8, v2

    move-wide/from16 v1, v16

    goto/16 :goto_3

    :cond_2
    move/from16 v20, v5

    move v11, v7

    move v12, v8

    const/16 v3, 0xe

    if-ne v1, v3, :cond_3

    .line 1215
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    add-long v9, p3, v3

    const/16 v5, 0x14

    const-wide/16 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1218
    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    :goto_2
    move-object v8, v2

    move-wide v1, v3

    move-object/from16 v3, p1

    move/from16 v4, p5

    goto :goto_3

    :cond_3
    const/4 v3, 0x6

    if-ne v1, v3, :cond_4

    .line 1220
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    add-long v9, p3, v3

    const/16 v5, 0xa

    const-wide/16 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1223
    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    goto :goto_2

    :cond_4
    const/16 v3, 0x13

    if-ne v1, v3, :cond_6

    const/16 v1, 0x32

    if-eq v14, v1, :cond_5

    goto/16 :goto_6

    .line 1227
    :cond_5
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    add-long v9, p3, v3

    const/16 v5, 0xa

    const-wide/16 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1230
    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    goto :goto_2

    .line 1232
    :cond_6
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    add-long v9, p3, v3

    const/16 v5, 0xa

    move-object/from16 v3, p1

    move-wide/from16 v7, p3

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-object v8, v2

    .line 1235
    iget-wide v1, v0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 1237
    :goto_3
    iget v5, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v5, v14, :cond_8

    .line 1238
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v6, 0xb

    .line 1239
    invoke-virtual {v5, v6, v4, v11, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1238
    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1241
    iget v5, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v5, v12, :cond_7

    const v1, 0xff00

    and-int/2addr v1, v15

    const/16 v2, 0x300

    if-eq v1, v2, :cond_7

    move v7, v10

    :goto_4
    move-object v1, v3

    move v2, v4

    move/from16 v6, v20

    move-wide/from16 v3, p3

    goto :goto_5

    :cond_7
    move v7, v9

    goto :goto_4

    .line 1244
    :goto_5
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    move-object v3, v1

    move v4, v2

    .line 1248
    :cond_8
    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v2, 0x28

    if-lt v1, v2, :cond_9

    move v9, v10

    :cond_9
    if-eq v13, v9, :cond_a

    .line 1250
    invoke-virtual {v0, v3, v4, v9}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    :cond_a
    :goto_6
    return-void
.end method

.method public final reportExemptedSyncScheduled(Ljava/lang/String;I)V
    .locals 11

    .line 768
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 778
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    const/16 v3, 0xa

    const/16 v4, 0xb

    :goto_0
    move-wide v7, v1

    goto :goto_1

    .line 783
    :cond_1
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    const/16 v3, 0x14

    const/16 v4, 0xc

    goto :goto_0

    .line 786
    :goto_1
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    .line 787
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 788
    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 789
    :try_start_0
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 791
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final reportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 12

    .line 812
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 816
    iget-object v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v11

    .line 817
    :try_start_0
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    const/16 v4, 0xa

    const/16 v5, 0xd

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 820
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V
    .locals 2

    .line 832
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V

    .line 834
    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result v0

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 836
    invoke-interface {p9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 837
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V
    .locals 11

    move-wide/from16 v0, p7

    .line 850
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const-wide/16 v7, 0x0

    add-long v9, p5, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p3

    .line 852
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v5, 0xb

    const/4 v6, -0x1

    .line 853
    invoke-virtual {v4, v5, p2, v6, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 852
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 855
    iget v5, p3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v6, p3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    return-void
.end method

.method public final reportUnexemptedSyncScheduled(Ljava/lang/String;I)V
    .locals 12

    .line 795
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 798
    iget-object v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v11

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 800
    invoke-virtual {v0, p1, p2, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 802
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 804
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    const/16 v4, 0x14

    const/16 v5, 0xe

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 808
    :cond_1
    :goto_0
    monitor-exit v11

    return-void

    :goto_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final restoreAppToRare(Ljava/lang/String;IJI)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1725
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result p0

    const/16 p1, 0x32

    if-ne p0, p1, :cond_0

    move-wide v5, v3

    const/16 v3, 0x28

    const/4 v7, 0x0

    move v4, p5

    .line 1728
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    :cond_0
    return-void
.end method

.method public restoreAppsToRare(Ljava/util/Set;I)V
    .locals 7

    .line 1696
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 1697
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1700
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1701
    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to restore bucket for uninstalled app: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v6, 0x102

    move-object v1, p0

    move v3, p2

    .line 1706
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->restoreAppToRare(Ljava/lang/String;IJI)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    move v3, p2

    .line 1712
    iget-object p0, v1, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance p1, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1, v3}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    const-wide/32 v4, 0xa4cb800

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1716
    iget-object p0, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1717
    :try_start_0
    iget-object p1, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object p2, v1, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    .line 1718
    invoke-virtual {p2, v3}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p2

    .line 1717
    invoke-virtual {p1, v3, p2}, Lcom/android/server/usage/AppIdleHistory;->writeRestoreToRareAppsList(ILandroid/util/ArraySet;)V

    .line 1719
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public restrictApp(Ljava/lang/String;II)V
    .locals 1

    const/16 v0, 0x600

    .line 1670
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/usage/AppStandbyController;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method public restrictApp(Ljava/lang/String;III)V
    .locals 8

    const/16 v0, 0x600

    .line 1676
    const-string v1, "AppStandbyController"

    if-eq p3, v0, :cond_0

    const/16 v0, 0x400

    if-eq p3, v0, :cond_0

    .line 1678
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to restrict app "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for an unsupported reason"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1683
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to restrict uninstalled app: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const v0, 0xff00

    and-int/2addr p3, v0

    and-int/lit16 p4, p4, 0xff

    or-int v4, p3, p4

    .line 1688
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    const/16 v3, 0x2d

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1690
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    return-void
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .locals 1

    .line 1988
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 1990
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1992
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1994
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAdminProtectedPackages(Ljava/util/Set;I)V
    .locals 2

    .line 1999
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2000
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2003
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2001
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2005
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2006
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result p1

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2

    .line 2007
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController;->postCheckIdleStates(I)V

    :cond_2
    return-void

    .line 2005
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setAppIdleAsync(Ljava/lang/String;ZI)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1620
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1622
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1623
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAppIdleEnabled(Z)V
    .locals 2

    .line 636
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 637
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 644
    :goto_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eq v1, p1, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v1

    .line 647
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 649
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result p1

    if-eq p1, v1, :cond_1

    .line 650
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 653
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;III)V
    .locals 9

    .line 1787
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1788
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1787
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IIII)V
    .locals 1

    .line 1735
    new-instance v0, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 1736
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1735
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBuckets(Ljava/util/List;III)V

    return-void
.end method

.method public final setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v7, p3

    move-wide/from16 v4, p5

    .line 1793
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 1795
    :cond_0
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1797
    :try_start_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v3}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1798
    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to set bucket of uninstalled app: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 1801
    :cond_1
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v8

    const v1, 0xff00

    and-int v6, p4, v1

    const/16 v11, 0x500

    if-ne v6, v11, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    move v11, v10

    .line 1806
    :goto_0
    iget v13, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v14, 0xa

    if-ge v13, v14, :cond_3

    monitor-exit v9

    return-void

    :cond_3
    const/16 v15, 0x32

    if-eq v13, v15, :cond_4

    if-ne v7, v15, :cond_5

    :cond_4
    if-eqz v11, :cond_5

    .line 1811
    monitor-exit v9

    return-void

    .line 1814
    :cond_5
    iget v15, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    move/from16 v16, v1

    and-int v1, v15, v16

    const/16 v12, 0x600

    if-ne v1, v12, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    move v1, v10

    :goto_1
    const/16 v14, 0x400

    if-eqz v11, :cond_8

    and-int v10, v15, v16

    if-eq v10, v14, :cond_7

    if-eqz v1, :cond_8

    .line 1821
    :cond_7
    monitor-exit v9

    return-void

    :cond_8
    if-ne v6, v12, :cond_9

    const/4 v10, 0x1

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    :goto_2
    const/16 v14, 0x2d

    const/16 v12, 0x28

    if-ne v13, v7, :cond_e

    if-eqz v1, :cond_e

    if-eqz v10, :cond_e

    if-ne v7, v14, :cond_a

    .line 1829
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v6, p4

    .line 1830
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->noteRestrictionAttempt(Ljava/lang/String;IJI)V

    move v1, v6

    goto :goto_3

    :cond_a
    move/from16 v1, p4

    .line 1833
    :goto_3
    iget v2, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x600

    or-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 1836
    iget v2, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-lt v2, v12, :cond_b

    const/4 v10, 0x1

    :goto_4
    move v7, v1

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    goto :goto_4

    .line 1838
    :goto_5
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v6, p3

    move-wide/from16 v4, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    move v7, v6

    if-lt v7, v12, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    if-eq v10, v1, :cond_d

    .line 1842
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 1844
    :cond_d
    monitor-exit v9

    return-void

    :cond_e
    move/from16 v1, p4

    const/16 v4, 0x400

    if-ne v6, v4, :cond_f

    const/4 v10, 0x1

    goto :goto_7

    :cond_f
    const/4 v10, 0x0

    :goto_7
    const/16 v4, 0x200

    if-ne v13, v14, :cond_11

    and-int v5, v15, v16

    if-ne v5, v4, :cond_10

    if-eqz v11, :cond_11

    if-lt v7, v12, :cond_11

    .line 1855
    monitor-exit v9

    return-void

    .line 1857
    :cond_10
    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v5

    if-nez v5, :cond_11

    if-nez v10, :cond_11

    .line 1860
    monitor-exit v9

    return-void

    :cond_11
    const/4 v13, -0x1

    if-ne v7, v14, :cond_14

    .line 1865
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v6, p4

    move v15, v4

    move-wide/from16 v4, p5

    .line 1866
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->noteRestrictionAttempt(Ljava/lang/String;IJI)V

    if-eqz v10, :cond_13

    .line 1874
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_12

    and-int/lit16 v1, v6, 0xff

    const/4 v10, 0x2

    if-eq v1, v10, :cond_12

    .line 1877
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 1880
    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    iget-object v15, v0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 1881
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v14

    const v12, 0x104017c

    invoke-virtual {v15, v12, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    .line 1877
    invoke-static {v1, v10, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1884
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_8

    :cond_12
    const/4 v14, 0x0

    .line 1886
    const-string v1, "AppStandbyController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " restricted by user"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1889
    :cond_13
    iget-wide v14, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1890
    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getAutoRestrictedBucketDelayMs()J

    move-result-wide v17

    add-long v14, v14, v17

    sub-long/2addr v14, v4

    const-wide/16 v17, 0x0

    cmp-long v1, v14, v17

    if-lez v1, :cond_15

    .line 1892
    const-string v1, "AppStandbyController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to restrict recently used app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xb

    .line 1895
    invoke-virtual {v0, v1, v3, v13, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1894
    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1898
    monitor-exit v9

    return-void

    :cond_14
    move-wide/from16 v4, p5

    move v6, v1

    :cond_15
    :goto_8
    if-eqz v11, :cond_19

    .line 1907
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v10

    .line 1910
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v8, v10, v11, v7}, Lcom/android/server/usage/AppIdleHistory;->updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V

    .line 1912
    invoke-virtual {v0, v8, v7, v10, v11}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v1

    if-eq v1, v13, :cond_18

    const/16 v10, 0xa

    if-eq v1, v10, :cond_17

    .line 1916
    iget v6, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v6, v1, :cond_16

    goto :goto_9

    :cond_16
    const/16 v6, 0x307

    goto :goto_a

    .line 1917
    :cond_17
    :goto_9
    iget v6, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_a

    :cond_18
    const/16 v1, 0x28

    if-ne v7, v1, :cond_19

    .line 1926
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v1

    const/16 v10, 0x2d

    if-ne v1, v10, :cond_19

    move v1, v10

    const/16 v6, 0x200

    goto :goto_a

    :cond_19
    move v1, v7

    .line 1942
    :goto_a
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1943
    iget v7, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v10, 0x28

    if-lt v7, v10, :cond_1a

    const/4 v11, 0x1

    :goto_b
    move v7, v6

    move v6, v1

    goto :goto_c

    :cond_1a
    const/4 v11, 0x0

    goto :goto_b

    .line 1944
    :goto_c
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    if-lt v6, v10, :cond_1b

    const/4 v10, 0x1

    goto :goto_d

    :cond_1b
    const/4 v10, 0x0

    :goto_d
    if-eq v11, v10, :cond_1c

    .line 1948
    invoke-virtual {v0, v2, v3, v10}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 1950
    :cond_1c
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v6

    move v6, v7

    const/4 v7, 0x0

    move-object v1, v2

    move v2, v3

    move-wide/from16 v3, p5

    .line 1951
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    return-void

    .line 1950
    :goto_e
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAppStandbyBuckets(Ljava/util/List;III)V
    .locals 16

    move-object/from16 v0, p0

    .line 1743
    const-string/jumbo v6, "setAppStandbyBucket"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v3, p2

    move/from16 v2, p3

    move/from16 v1, p4

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v8, v2

    const/4 v1, 0x0

    if-eqz v8, :cond_1

    const/16 v2, 0x7d0

    if-ne v8, v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    move v7, v2

    :goto_1
    const/16 v2, 0x3e8

    .line 1750
    invoke-static {v8, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    move/from16 v4, p4

    if-ne v4, v2, :cond_3

    :cond_2
    if-eqz v7, :cond_4

    :cond_3
    const/16 v2, 0x400

    :goto_2
    move v4, v2

    goto :goto_3

    .line 1753
    :cond_4
    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x600

    goto :goto_2

    :cond_5
    const/16 v2, 0x500

    goto :goto_2

    .line 1761
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .line 1762
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    move v10, v1

    :goto_4
    if-ge v10, v9, :cond_9

    move-object/from16 v11, p1

    .line 1764
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/AppStandbyInfo;

    .line 1765
    iget-object v2, v1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 1766
    iget v1, v1, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/16 v12, 0xa

    if-lt v1, v12, :cond_8

    const/16 v12, 0x32

    if-gt v1, v12, :cond_8

    .line 1770
    iget-object v12, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v12}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v12

    const-wide/32 v13, 0x4c0000

    .line 1771
    invoke-virtual {v12, v2, v13, v14, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v12

    if-eq v12, v8, :cond_7

    if-ltz v12, :cond_6

    move v15, v3

    move v3, v1

    move-object v1, v2

    move v2, v15

    .line 1780
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move v3, v2

    goto :goto_4

    :cond_6
    move-object v1, v2

    .line 1777
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1774
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set your own standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v3, v1

    .line 1768
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set the standby bucket to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void
.end method

.method public setChargingState(Z)V
    .locals 1

    .line 872
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eq v0, p1, :cond_0

    .line 874
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    .line 875
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    :cond_0
    return-void
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;IJ)V
    .locals 9

    .line 1354
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 1355
    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setEstimatedLaunchTime(Ljava/lang/String;IJJ)V

    .line 1357
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 1340
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shouldNoteResponseEventForAllBroadcastSessions()Z
    .locals 0

    .line 2144
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    return p0
.end method

.method public final triggerListenerQuotaBump(Ljava/lang/String;I)V
    .locals 4

    .line 861
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 864
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 865
    invoke-virtual {v3, p1, p2}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->triggerTemporaryQuotaBump(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 867
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z
    .locals 1

    .line 2353
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 2355
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2357
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 2359
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updatePowerWhitelistCache()V
    .locals 2

    .line 2244
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    return-void

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->updatePowerWhitelistCache()V

    const/4 v0, -0x1

    .line 2248
    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->postCheckIdleStates(I)V

    return-void
.end method

.method public final usageEventToSubReason(I)I
    .locals 2

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5

    const/4 p0, 0x7

    if-eq p1, p0, :cond_4

    const/16 p0, 0xa

    if-eq p1, p0, :cond_3

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 p0, 0xe

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x9

    :cond_1
    return p0

    :cond_2
    const/16 p0, 0xf

    return p0

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x3

    :cond_5
    return p0

    :cond_6
    const/4 p0, 0x5

    return p0

    :cond_7
    const/4 p0, 0x4

    return p0
.end method

.method public final waitForAdminData()V
    .locals 3

    .line 2020
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x2710

    const-string v2, "Wait for admin data"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/jobs/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    :cond_0
    return-void
.end method
