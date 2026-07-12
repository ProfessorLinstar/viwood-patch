.class public final Lcom/android/server/am/AppRestrictionController;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# static fields
.field public static final ROLES_IN_INTEREST:[Ljava/lang/String;


# instance fields
.field public final mActiveUids:Landroid/util/SparseArrayMap;

.field public final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

.field public final mAppStateTrackers:Ljava/util/ArrayList;

.field public final mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

.field public final mBgExecutor:Landroid/os/HandlerExecutor;

.field public final mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

.field public final mBgHandlerThread:Landroid/os/HandlerThread;

.field public mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

.field public final mBootReceiver:Landroid/content/BroadcastReceiver;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mCarrierPrivilegedApps:Landroid/util/SparseArray;

.field public final mCarrierPrivilegedLock:Ljava/lang/Object;

.field public volatile mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

.field public final mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

.field public final mContext:Landroid/content/Context;

.field public mDeviceIdleAllowlist:[I

.field public mDeviceIdleExceptIdleAllowlist:[I

.field public final mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

.field public final mExecutor:Landroid/os/HandlerExecutor;

.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

.field public final mLock:Ljava/lang/Object;

.field public volatile mLockedBootCompleted:Z

.field public final mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

.field public final mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field final mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

.field public final mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field public final mSettingsLock:Ljava/lang/Object;

.field public final mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

.field public final mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

.field public final mSystemModulesCache:Ljava/util/HashMap;

.field public final mTmpRunnables:Ljava/util/ArrayList;

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public final mUidRolesMapping:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$C90gSwy4qIsl8Y3wdIptCUOaeAE(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/AppRestrictionController;->lambda$applyRestrictionLevel$1(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EB-EiOMlR4mEiHsXx47zeZChYJY(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 2313
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    .line 2314
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    and-int/lit16 p3, p3, 0xff

    .line 2312
    invoke-interface {p0, p1, p2, v0, p3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$FtkCfwU6MEYv3FLycKPhyJHp3fA(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IBHoNjdS0p0ljscWEhgRfJKdC1k(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 2310
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/16 v0, 0x32

    if-ne p5, v0, :cond_1

    if-eqz p1, :cond_0

    .line 2312
    new-instance p1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 2315
    :cond_0
    new-instance p1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda10;

    invoke-direct {p1, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2311
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$WVvwlryYxT2AxDDMgtbHDqF9YZo(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    .line 2316
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v0, 0xff00

    and-int v3, p2, v0

    .line 2317
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit16 v4, p2, 0xff

    const/16 v5, 0x300

    const/4 v6, 0x6

    move-object v0, p0

    move-object v1, p1

    .line 2315
    invoke-interface/range {v0 .. v6}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ydL4E-eseJqSvYCC9_LF-yu1d4(ILjava/lang/String;ILandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .locals 0

    .line 2301
    invoke-interface {p3, p0, p1, p2}, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;->onRestrictionLevelChanged(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cCOwIzhwVMmMXJ70sQK3rFQtGL0(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->lambda$onSystemReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$dQlSmja9BFi8lzUkFPpqj6AfbgU(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 2

    .line 2827
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    and-int/lit16 p3, p3, 0xff

    .line 2826
    invoke-interface {p0, p1, p2, v0, p3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$eI8UzIOTzZzh0kKu72jmLf9aSvE(ZLandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .locals 0

    .line 2327
    invoke-interface {p1, p0}, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;->onAutoRestrictedBucketFeatureFlagChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$oY7vGD6ZBYgVNvNPzUZAGcXnf7g(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/AppRestrictionController;->lambda$handleUidActive$9(ILcom/android/server/usage/AppStandbyInternal;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjNA8_CL3X8l1i-hIsSd-D4C2js(Lcom/android/server/am/AppRestrictionController;Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$6(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCarrierPrivilegedApps(Lcom/android/server/am/AppRestrictionController;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCarrierPrivilegedLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEmptyTrackerInfo(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationHelper(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$NotificationHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdispatchAppRestrictionLevelChanges(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->dispatchAppRestrictionLevelChanges(ILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/am/AppRestrictionController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->dispatchAutoRestrictedBucketFeatureFlagChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAppStandbyBucketChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->handleAppStandbyBucketChanged(ILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBackgroundRestrictionChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->handleBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLockedBootCompleted(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->onLockedBootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPropertiesChanged(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onPropertiesChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUidAdded(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUidAdded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUidRemoved(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUidRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserAdded(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserAdded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserInteractionStarted(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onUserInteractionStarted(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStarted(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserStarted(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterCarrierPrivilegesCallbacks(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->registerCarrierPrivilegesCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterCarrierPrivilegesCallbacks(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->unregisterCarrierPrivilegesCallbacks()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 239
    const-string v0, "android.app.role.DIALER"

    const-string v1, "android.app.role.EMERGENCY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 1495
    new-instance v0, Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/AppRestrictionController;-><init>(Lcom/android/server/am/AppRestrictionController$Injector;Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppRestrictionController$Injector;Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 257
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 264
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 273
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    .line 278
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 285
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    .line 292
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 294
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    .line 295
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 299
    new-instance v1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 305
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    .line 324
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    .line 330
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    .line 343
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 347
    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    .line 370
    new-instance v0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 372
    new-instance v0, Lcom/android/server/am/AppRestrictionController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$1;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v0, Lcom/android/server/am/AppRestrictionController$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$2;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1433
    new-instance v0, Lcom/android/server/am/AppRestrictionController$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$3;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    .line 1443
    new-instance v0, Lcom/android/server/am/AppRestrictionController$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$4;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 1459
    new-instance v0, Lcom/android/server/am/AppRestrictionController$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$5;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    .line 1499
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 1500
    invoke-virtual {p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 1501
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1502
    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "bgres-controller"

    const/16 v2, 0xa

    invoke-direct {p2, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 1503
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 1504
    new-instance v1, Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController$BgHandler;-><init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 1505
    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    .line 1506
    new-instance p2, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-direct {p2, p0, v1, v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;-><init>(Lcom/android/server/am/AppRestrictionController;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 1507
    new-instance p2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-direct {p2, p0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 1508
    invoke-virtual {p1, p0}, Lcom/android/server/am/AppRestrictionController$Injector;->initAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)V

    .line 1509
    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-virtual {p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getDefaultHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    return-void
.end method

.method public static standbyBucketToRestrictionLevel(I)I
    .locals 3

    .line 0
    const/4 v0, 0x5

    const/16 v1, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    const/16 v2, 0x1e

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    const/16 v0, 0x32

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .locals 0

    .line 1491
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAppStateTracker(Lcom/android/server/am/BaseAppStateTracker;)V
    .locals 0

    .line 3134
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V
    .locals 15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    .line 2145
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v7

    if-nez p4, :cond_0

    .line 2147
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move-object v9, v3

    goto :goto_0

    :cond_0
    move-object/from16 v9, p4

    .line 2149
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2150
    :try_start_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(ILjava/lang/String;)I

    move-result v10

    if-ne v10, v4, :cond_1

    .line 2153
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 2155
    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/AppRestrictionController;->standbyBucketToRestrictionLevel(I)I

    move-result v3

    const v11, 0xff00

    if-ne v3, v4, :cond_2

    .line 2159
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2158
    invoke-interface {v7, v1, v3, v5, v6}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucketReason(Ljava/lang/String;IJ)I

    move-result v3

    if-eqz v3, :cond_2

    and-int v5, v3, v11

    and-int/lit16 v3, v3, 0xff

    move v6, v3

    goto :goto_1

    :cond_2
    move/from16 v5, p7

    move/from16 v6, p8

    .line 2172
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getReason(Ljava/lang/String;I)I

    move-result v12

    .line 2173
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    move v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->update(Ljava/lang/String;IIII)I

    move-object v1, v2

    move v2, v3

    .line 2174
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x28

    const/4 v8, 0x1

    if-lt v4, v3, :cond_6

    if-ge v10, v3, :cond_6

    const/16 v11, 0x2d

    move/from16 v12, p5

    if-eq v12, v11, :cond_3

    .line 2190
    iget-object v11, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v11, v11, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-nez v11, :cond_4

    if-ne v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v13, v9

    move v14, v10

    move v9, v2

    move v10, v4

    goto/16 :goto_7

    .line 2194
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2195
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 2201
    iget-object v12, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;

    move-object v3, v1

    move v8, v4

    move-object v1, p0

    move v4, v2

    move-object v2, v7

    move v7, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V

    move-object v1, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    move v14, v7

    move v10, v8

    move-object v13, v9

    move v9, v4

    invoke-virtual {v12, v9, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_5
    move-object v0, v7

    move-object v13, v9

    move v14, v10

    move v9, v2

    move v10, v4

    .line 2209
    :goto_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_8

    .line 2211
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v0, v1, v2, v5, v6}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    goto :goto_7

    .line 2209
    :goto_4
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    move-object v0, v7

    move-object v13, v9

    move v14, v10

    move v9, v2

    move v10, v4

    if-lt v14, v3, :cond_8

    if-ge v10, v3, :cond_8

    .line 2222
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2223
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v9, v1}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_7

    .line 2225
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v1, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 2227
    :cond_7
    :goto_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2228
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    and-int v3, v12, v11

    and-int/lit16 v4, v12, 0xff

    invoke-interface/range {v0 .. v6}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    goto :goto_7

    .line 2227
    :goto_6
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_8
    :goto_7
    if-eqz v8, :cond_9

    if-eqz v14, :cond_9

    move-object v0, p0

    move-object/from16 v1, p1

    move v6, v5

    move v2, v9

    move v4, v10

    move-object v5, v13

    move v3, v14

    .line 2239
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    :cond_9
    return-void

    .line 2174
    :goto_8
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;
    .locals 3

    .line 1730
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppHibernationInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1731
    new-instance p1, Landroid/util/Pair;

    const/16 p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p1, 0x5

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-eq p4, p1, :cond_7

    .line 1750
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object p1

    .line 1751
    invoke-interface {p1, p2, p3}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result p1

    const/16 v2, 0x32

    if-eqz p1, :cond_1

    .line 1752
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/16 p1, 0x2d

    if-ne p4, p1, :cond_2

    const/16 p1, 0x28

    goto :goto_0

    :cond_2
    const/16 p1, 0x1e

    :goto_0
    if-eqz p6, :cond_6

    const/16 p4, 0x64

    .line 1758
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object p4

    .line 1760
    iget-object p6, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    if-ne p6, v0, :cond_3

    .line 1762
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    if-le p6, p1, :cond_4

    .line 1766
    iget-object p1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move v0, p6

    goto :goto_1

    :cond_4
    move v0, p1

    :goto_1
    if-ne v0, v2, :cond_7

    if-eqz p5, :cond_5

    .line 1771
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 p4, 0x4

    const/4 p5, 0x0

    invoke-virtual {p1, p4, p2, p5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1772
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1775
    :cond_5
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object p0

    .line 1777
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1778
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    goto :goto_2

    :cond_6
    move v0, p1

    .line 1783
    :cond_7
    :goto_2
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;
    .locals 5

    .line 1801
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1802
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v4}, Lcom/android/server/am/BaseAppStateTracker;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v4

    .line 1803
    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/am/BaseAppStatePolicy;->getProposedRestrictionLevel(Ljava/lang/String;II)I

    move-result v4

    .line 1804
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1806
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    move-object v3, v2

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 1811
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    goto :goto_1

    .line 1812
    :cond_2
    new-instance p2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker;->getType()I

    move-result p3

    .line 1813
    invoke-virtual {v3, p1}, Lcom/android/server/am/BaseAppStateTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object p1

    invoke-direct {p2, p0, p3, p1}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>(Lcom/android/server/am/AppRestrictionController;I[B)V

    move-object p0, p2

    .line 1814
    :goto_1
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V
    .locals 0

    .line 3154
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V

    return-void
.end method

.method public final dispatchAppRestrictionLevelChanges(ILjava/lang/String;I)V
    .locals 1

    .line 2300
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final dispatchAutoRestrictedBucketFeatureFlagChanged(Z)V
    .locals 5

    .line 2305
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    .line 2306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2307
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2308
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v4, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v1, p1, v0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppRestrictionController;Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachUidLocked(Ljava/util/function/Consumer;)V

    .line 2322
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 2323
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2324
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2326
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2322
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 2018
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2019
    const-string v0, "APP BACKGROUND RESTRICTIONS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2021
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2022
    const-string v0, "BACKGROUND RESTRICTION LEVEL SETTINGS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2025
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2026
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2027
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 3

    .line 2032
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2033
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachTracker(Ljava/util/function/Consumer;)V
    .locals 3

    .line 3442
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3443
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAppStateTracker(Ljava/lang/Class;)Lcom/android/server/am/BaseAppStateTracker;
    .locals 4

    .line 3141
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 3142
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    .line 3114
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    return-object p0
.end method

.method public getBackgroundHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    .line 3122
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public getBackgroundRestrictionExemptionReason(I)I
    .locals 6

    .line 2864
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2868
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2871
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 2872
    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(ILjava/lang/String;)I

    move-result v5

    if-eq v5, v1, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2878
    :cond_2
    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 2879
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/AppRestrictionController;->getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I

    move-result v4

    if-eq v4, v1, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method public getCompositeMediaPlaybackDurations(IJJ)J
    .locals 9

    const-wide/16 v0, 0x0

    sub-long p4, p2, p4

    .line 1957
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-wide v6, p2

    .line 1959
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppRestrictionController;->getMediaSessionTotalDurationsSince(IJJ)J

    move-result-wide p0

    const/4 v8, 0x2

    .line 1960
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(IJJI)J

    move-result-wide p2

    .line 1958
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCompositeMediaPlaybackDurations(Ljava/lang/String;IJJ)J
    .locals 12

    const-wide/16 v0, 0x0

    sub-long v2, p3, p5

    .line 1944
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v9, p3

    .line 1946
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/AppRestrictionController;->getMediaSessionTotalDurationsSince(Ljava/lang/String;IJJ)J

    move-result-wide v0

    const/4 v11, 0x2

    .line 1947
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide p0

    .line 1945
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getExemptionReasonStatsd(II)I
    .locals 1

    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2095
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result p0

    .line 2096
    invoke-static {p0}, Landroid/os/PowerExemptionManager;->getExemptionReasonForStatsd(I)I

    move-result p0

    return p0
.end method

.method public getForegroundServiceTotalDurationsSince(IJJI)J
    .locals 7

    .line 1905
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    .line 1906
    invoke-static {p6}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1905
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IJJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getForegroundServiceTotalDurationsSince(Ljava/lang/String;IJJI)J
    .locals 8

    .line 1895
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    .line 1896
    invoke-static {p7}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v7

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 1895
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    .line 3129
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getMediaSessionTotalDurationsSince(IJJ)J
    .locals 6

    .line 1936
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMediaSessionTotalDurationsSince(Ljava/lang/String;IJJ)J
    .locals 7

    .line 1928
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(Ljava/lang/String;IJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getOptimizationLevelStatsd(I)I
    .locals 0

    .line 0
    const/16 p0, 0xa

    if-eq p1, p0, :cond_2

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x32

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 0

    .line 3158
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPotentialSystemExemptionReason(I)I
    .locals 3

    .line 2895
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x33

    return p0

    .line 2898
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->isOnSystemDeviceIdleAllowlist(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x12c

    return p0

    .line 2901
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x3f

    return p0

    .line 2904
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2905
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    const-string/jumbo v2, "no_control_apps"

    .line 2906
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x143

    return p0

    .line 2909
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    .line 2910
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x37

    return p0

    .line 2913
    :cond_4
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->isProfileOwner(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x38

    return p0

    .line 2916
    :cond_5
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p0

    if-gtz p0, :cond_6

    const/16 p0, 0xa

    return p0

    :cond_6
    const/4 p1, 0x1

    if-gt p0, p1, :cond_7

    const/16 p0, 0xb

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method public getPotentialSystemExemptionReason(ILjava/lang/String;)I
    .locals 7

    .line 2933
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 2934
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    .line 2935
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    .line 2936
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    .line 2937
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2938
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppRestrictionController;->isSystemModule(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 p0, 0x140

    return p0

    .line 2940
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppRestrictionController;->isCarrierApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 p0, 0x141

    return p0

    .line 2942
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppRestrictionController;->isExemptedFromSysConfig(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x12c

    if-eqz v5, :cond_2

    return v6

    .line 2944
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v6

    .line 2946
    :cond_3
    invoke-virtual {v0, p2, v4}, Landroid/content/pm/PackageManagerInternal;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x142

    return p0

    .line 2948
    :cond_4
    invoke-interface {v1, p2, v4}, Lcom/android/server/usage/AppStandbyInternal;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x144

    return p0

    .line 2950
    :cond_5
    iget-object p0, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    if-eqz p0, :cond_6

    const/16 p0, 0x80

    .line 2951
    invoke-virtual {v2, p0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6

    const/16 p0, 0x147

    return p0

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method public getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I
    .locals 2

    .line 2967
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x2f

    .line 2968
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/16 p0, 0x44

    return p0

    :cond_0
    const/16 v1, 0x5e

    .line 2971
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    const/16 p0, 0x45

    return p0

    .line 2975
    :cond_1
    const-string p2, "android.app.role.DIALER"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p0, 0x13e

    return p0

    .line 2978
    :cond_2
    const-string p2, "android.app.role.EMERGENCY"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p0, 0x13f

    return p0

    .line 2981
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->isOnDeviceIdleAllowlist(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p0, 0x41

    return p0

    .line 2984
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    .line 2985
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/app/ActivityManagerInternal;->isAssociatedCompanionApp(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x39

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public final getRestrictionChangeReasonStatsd(ILjava/lang/String;)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    const/16 p0, 0x8

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRestrictionLevel(I)I
    .locals 0

    .line 1843
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result p0

    return p0
.end method

.method public getRestrictionLevel(ILjava/lang/String;)I
    .locals 0

    .line 1850
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRestrictionLevel(Ljava/lang/String;I)I
    .locals 0

    .line 1857
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getRestrictionLevelStatsd(I)I
    .locals 0

    .line 0
    const/16 p0, 0xa

    if-eq p1, p0, :cond_5

    const/16 p0, 0x14

    if-eq p1, p0, :cond_4

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_3

    const/16 p0, 0x28

    if-eq p1, p0, :cond_2

    const/16 p0, 0x32

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final getRestrictionTypeStatsd(I)I
    .locals 0

    .line 0
    if-eqz p1, :cond_7

    const/16 p0, 0xa

    if-eq p1, p0, :cond_6

    const/16 p0, 0x14

    if-eq p1, p0, :cond_5

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_4

    const/16 p0, 0x28

    if-eq p1, p0, :cond_3

    const/16 p0, 0x32

    if-eq p1, p0, :cond_2

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_1

    const/16 p0, 0x46

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final getTargetSdkStatsd(Ljava/lang/String;)I
    .locals 1

    .line 2116
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2121
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2122
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_1

    goto :goto_0

    .line 2125
    :cond_1
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x1f

    if-ge p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/16 p1, 0x21

    if-ge p0, p1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    if-ne p0, p1, :cond_4

    const/4 p0, 0x3

    return p0

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method public final getThresholdStatsd(I)I
    .locals 0

    .line 0
    const/16 p0, 0x400

    if-eq p1, p0, :cond_1

    const/16 p0, 0x600

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public final getTrackerTypeStatsd(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 7

    .line 1999
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppBatteryExemptionTracker()Lcom/android/server/am/AppBatteryExemptionTracker;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 2000
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppBatteryExemptionTracker;->getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p0

    return-object p0
.end method

.method public getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 0

    .line 2007
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUidBatteryUsageProvider()Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;->getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p0

    return-object p0
.end method

.method public final handleAppStandbyBucketChanged(ILjava/lang/String;I)V
    .locals 12

    .line 2333
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    if-nez v0, :cond_0

    return-void

    .line 2335
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0xc8000

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v7, p1

    move-object v6, p2

    move v4, p3

    .line 2337
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object p0

    move-object v4, v6

    .line 2339
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/16 v10, 0x100

    const/4 v11, 0x0

    move v8, v7

    move-object v7, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    return-void
.end method

.method public final handleBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .locals 10

    .line 2264
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    move v4, v9

    :goto_0
    if-ge v4, v3, :cond_0

    .line 2265
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTracker;

    .line 2266
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/am/BaseAppStateTracker;->onBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2269
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v3

    .line 2270
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v4, p2

    .line 2272
    invoke-interface/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v5

    if-eqz p3, :cond_1

    .line 2276
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/16 v7, 0x400

    const/4 v8, 0x2

    const/16 v3, 0x32

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 2279
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, p1, v9, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2280
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    move v7, v5

    .line 2284
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2285
    invoke-static {v3, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->-$$Nest$mgetLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;ILjava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v7, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x28

    if-ne v3, v4, :cond_3

    const/16 v4, 0x2d

    .line 2291
    :cond_3
    :goto_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    .line 2290
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v1

    .line 2293
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move v5, v7

    const/16 v7, 0x300

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    return-void
.end method

.method public handleCancelRequestBgRestricted(Ljava/lang/String;I)V
    .locals 0

    .line 2356
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    return-void
.end method

.method public handleRequestBgRestricted(Ljava/lang/String;I)V
    .locals 0

    .line 2348
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    return-void
.end method

.method public handleUidActive(I)V
    .locals 5

    .line 2820
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2821
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    .line 2822
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2823
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v4, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;I)V

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    .line 2832
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleUidGone(I)V
    .locals 3

    .line 2366
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2367
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidGone(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleUidInactive(IZ)V
    .locals 5

    .line 2798
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    .line 2799
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2800
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 2802
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2804
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2806
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 2808
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2811
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 2812
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2813
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_3

    .line 2814
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2816
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 2812
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public handleUidProcStateChanged(II)V
    .locals 3

    .line 2360
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2361
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->onUidProcStateChanged(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasForegroundServiceNotifications(Ljava/lang/String;I)Z
    .locals 0

    .line 1983
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotifications(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasForegroundServices(Ljava/lang/String;I)Z
    .locals 0

    .line 1969
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServices(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final initBgRestrictionExemptioFromSysConfig()V
    .locals 3

    .line 1553
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 1554
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBgRestrictionExemption()Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    .line 1561
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1563
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-void
.end method

.method public final initRestrictionStates()V
    .locals 7

    .line 1588
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1589
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    const/16 v5, 0x400

    const/4 v6, 0x2

    .line 1590
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1593
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->isTest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1595
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->scheduleLoadFromXml()V

    .line 1597
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1598
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final initRolesInInterest()V
    .locals 9

    .line 3059
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 3060
    sget-object v1, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 3061
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3062
    array-length v6, v0

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v0, v7

    .line 3063
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 3064
    invoke-virtual {p0, v5, v8}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final initSystemModuleNames()V
    .locals 5

    .line 1604
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1605
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1609
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 1610
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ModuleInfo;

    .line 1611
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1613
    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAutoRestrictAbusiveAppEnabled()Z
    .locals 0

    .line 1865
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    return p0
.end method

.method public isBgAutoRestrictedBucketFeatureFlagEnabled()Z
    .locals 0

    .line 3501
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    return p0
.end method

.method public final isCarrierApp(Ljava/lang/String;)Z
    .locals 4

    .line 2992
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2993
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 2994
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 2995
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2996
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 3000
    monitor-exit v0

    return p0

    .line 3001
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isExemptedFromSysConfig(Ljava/lang/String;)Z
    .locals 0

    .line 1583
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 1584
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOnDeviceIdleAllowlist(I)Z
    .locals 1

    .line 2836
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2838
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 2839
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isOnSystemDeviceIdleAllowlist(I)Z
    .locals 2

    .line 2843
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2845
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 2846
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

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

.method public final isRoleHeldByUid(Ljava/lang/String;I)Z
    .locals 1

    .line 3052
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3053
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 3054
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

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

    .line 3055
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSystemModule(Ljava/lang/String;)Z
    .locals 5

    .line 1617
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 1618
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1620
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1622
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1628
    :try_start_1
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :catch_0
    :cond_1
    move v3, v2

    :goto_0
    if-nez v3, :cond_3

    .line 1634
    :try_start_2
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1639
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1640
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1639
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v3, v1

    .line 1645
    :catch_1
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 1646
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    monitor-exit v1

    return v3

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 1622
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$applyRestrictionLevel$1(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V
    .locals 1

    .line 2202
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {p1, p2, v0, p4, p5}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    move-object p1, p2

    move p2, p3

    move p3, p6

    move-object p5, p8

    move p6, p4

    move p4, p7

    .line 2204
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    return-void
.end method

.method public final synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$6(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V
    .locals 2

    .line 2309
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;-><init>(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method

.method public final synthetic lambda$handleUidActive$9(ILcom/android/server/usage/AppStandbyInternal;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 2824
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-eqz v0, :cond_0

    .line 2825
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/16 v0, 0x32

    if-ne p5, v0, :cond_0

    .line 2826
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    new-instance p5, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;

    invoke-direct {p5, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V

    invoke-virtual {p0, p1, p4, p5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2829
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic lambda$onSystemReady$0()V
    .locals 3

    .line 1530
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1531
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 3

    .line 1567
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1568
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1569
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/high16 v2, 0x100000

    .line 1571
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1576
    :cond_0
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V
    .locals 15

    move/from16 v0, p4

    move-object/from16 v1, p5

    .line 2248
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    move-result v2

    move/from16 v3, p6

    .line 2249
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppRestrictionController;->getThresholdStatsd(I)I

    move-result v3

    iget v4, v1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    .line 2250
    invoke-virtual {p0, v4}, Lcom/android/server/am/AppRestrictionController;->getTrackerTypeStatsd(I)I

    move-result v4

    .line 2251
    iget v5, v1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    iget-object v6, v1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 2252
    iget-object v8, v1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    const/4 v9, 0x6

    if-ne v5, v9, :cond_2

    .line 2253
    iget-object v9, v1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    goto :goto_2

    :cond_2
    move-object v9, v7

    :goto_2
    const/4 v10, 0x7

    if-ne v5, v10, :cond_3

    .line 2254
    iget-object v7, v1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    :cond_3
    move/from16 v1, p2

    move-object v5, v9

    .line 2255
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/AppRestrictionController;->getExemptionReasonStatsd(II)I

    move-result v9

    .line 2256
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppRestrictionController;->getOptimizationLevelStatsd(I)I

    move-result v10

    .line 2257
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppRestrictionController;->getTargetSdkStatsd(Ljava/lang/String;)I

    move-result v11

    .line 2258
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v12

    move/from16 v0, p3

    .line 2259
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    move-result v13

    const/16 v0, 0x1b9

    move-object v14, v7

    move-object v7, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v14

    .line 2247
    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    return-void
.end method

.method public noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    .locals 9

    if-eqz p6, :cond_0

    .line 2393
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subReason is too long, truncating "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2395
    invoke-virtual {p6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, p6

    .line 2400
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/AppRestrictionController;->getRestrictionTypeStatsd(I)I

    move-result v2

    .line 2402
    invoke-virtual {p0, p5, v5}, Lcom/android/server/am/AppRestrictionController;->getRestrictionChangeReasonStatsd(ILjava/lang/String;)I

    move-result v4

    const/16 v0, 0x362

    move v1, p2

    move v3, p4

    move/from16 v8, p7

    move-wide/from16 v6, p8

    .line 2399
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZILjava/lang/String;JI)V

    return-void
.end method

.method public final onLockedBootCompleted()V
    .locals 3

    .line 3494
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3495
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->onLockedBootCompleted()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3497
    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 3483
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removePackage(Ljava/lang/String;I)V

    return-void
.end method

.method public final onPropertiesChanged(Ljava/lang/String;)V
    .locals 3

    .line 3505
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3506
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onPropertiesChanged(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7

    .line 3071
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 3073
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 3074
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-eqz v0, :cond_0

    .line 3076
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    .line 3077
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/32 v4, 0xc8000

    .line 3078
    invoke-virtual {v2, v3, v4, v5, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3081
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3082
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 3083
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3084
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq v4, p2, :cond_1

    goto :goto_2

    .line 3087
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3088
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 3089
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-ltz v5, :cond_2

    if-nez v6, :cond_3

    .line 3092
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3093
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3094
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    if-eqz v6, :cond_3

    .line 3098
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3099
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3102
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_3
    if-ltz p2, :cond_5

    .line 3103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3104
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3105
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 3107
    :cond_5
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSystemReady()V
    .locals 4

    .line 1513
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1515
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->start()V

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initBgRestrictionExemptioFromSysConfig()V

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    .line 1518
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initSystemModuleNames()V

    .line 1519
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initRolesInInterest()V

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->registerForUidObservers()V

    .line 1521
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->registerForSystemBroadcasts()V

    .line 1522
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->registerCarrierPrivilegesCallbacks()V

    .line 1523
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->onSystemReady()V

    .line 1524
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    invoke-interface {v0, v1}, Lcom/android/server/AppStateTracker;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    .line 1526
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1527
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 1529
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController$Injector;->scheduleInitTrackers(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUidAdded(I)V
    .locals 3

    const/16 v0, 0x600

    const/4 v1, 0x0

    .line 3475
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 3477
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3478
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUidRemoved(I)V
    .locals 3

    .line 3487
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3488
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidRemoved(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3490
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUid(I)V

    return-void
.end method

.method public final onUserAdded(I)V
    .locals 3

    .line 3448
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3449
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 3

    .line 3511
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0xc8000

    .line 3512
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    .line 3513
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3514
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->onUserInteractionStarted(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 3

    .line 3468
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3469
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserRemoved(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3471
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUser(I)V

    return-void
.end method

.method public final onUserStarted(I)V
    .locals 3

    const/16 v0, 0x400

    const/4 v1, 0x2

    .line 3454
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(III)V

    .line 3456
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3457
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStarted(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUserStopped(I)V
    .locals 3

    .line 3462
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3463
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStopped(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public postLongRunningFgsIfNecessary(Ljava/lang/String;I)V
    .locals 0

    .line 3150
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postLongRunningFgsIfNecessary(Ljava/lang/String;I)V

    return-void
.end method

.method public refreshAppRestrictionLevelForUid(IIIZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1706
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1707
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1710
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v3

    .line 1711
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1712
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1713
    array-length v10, v9

    const/4 v4, 0x0

    move v11, v4

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v4, v9, v11

    const/4 v8, 0x0

    move v5, v1

    .line 1714
    invoke-interface/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v1

    move-object v12, v3

    move-object v3, v4

    move-wide v13, v6

    const/4 v6, 0x1

    move v4, v1

    move v1, v5

    move/from16 v5, p4

    .line 1715
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v6

    move v15, v1

    .line 1722
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/4 v6, 0x1

    move/from16 v2, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move v5, v4

    move-object v4, v1

    move-object v1, v3

    move v3, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    add-int/lit8 v11, v11, 0x1

    move-object v3, v12

    move-wide v6, v13

    move v1, v15

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final refreshAppRestrictionLevelForUser(III)V
    .locals 11

    .line 1674
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v2

    .line 1675
    invoke-interface {v2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v2

    .line 1676
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1683
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v9

    .line 1684
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/app/usage/AppStandbyInfo;

    .line 1685
    iget-object v2, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    const-wide/32 v3, 0xc8000

    invoke-virtual {v9, v2, v3, v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-gez v2, :cond_1

    .line 1688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1691
    :cond_1
    iget-object v3, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget v4, v7, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v3

    .line 1699
    iget-object v1, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    iget v5, v7, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/4 v6, 0x1

    move v7, p2

    move v8, p3

    move v3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final registerCarrierPrivilegesCallbacks()V
    .locals 6

    .line 3005
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3010
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    .line 3011
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3013
    new-instance v4, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;

    invoke-direct {v4, p0, v3}, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;-><init>(Lcom/android/server/am/AppRestrictionController;I)V

    .line 3014
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3015
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {v0, v3, v5, v4}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3017
    :cond_1
    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public final registerForSystemBroadcasts()V
    .locals 11

    .line 3417
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3418
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3419
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3420
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3421
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3422
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3423
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3424
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3425
    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3426
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3427
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 3428
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3429
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3431
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3433
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {v1, v2, v0, v4, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerForUidObservers()V
    .locals 4

    .line 1653
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    const-string v1, "android"

    const/16 v2, 0xf

    const/4 v3, 0x4

    invoke-interface {v0, p0, v2, v3, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public resetRestrictionSettings()V
    .locals 2

    .line 1538
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1539
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->reset()V

    .line 1540
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    return-void

    :catchall_0
    move-exception p0

    .line 1540
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setDeviceIdleAllowlist([I[I)V
    .locals 0

    .line 2850
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    .line 2851
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    return-void
.end method

.method public tearDown()V
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1547
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->unregisterForUidObservers()V

    .line 1548
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->unregisterForSystemBroadcasts()V

    .line 1549
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeXml()V

    return-void
.end method

.method public final unregisterCarrierPrivilegesCallbacks()V
    .locals 4

    .line 3021
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3025
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 3027
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 3028
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3030
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    :cond_2
    :goto_1
    return-void
.end method

.method public final unregisterForSystemBroadcasts()V
    .locals 2

    .line 3437
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3438
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final unregisterForUidObservers()V
    .locals 1

    .line 1663
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
