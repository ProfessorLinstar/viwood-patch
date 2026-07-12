.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# static fields
.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64

.field static final MAX_USER_ID:I = 0x53e1

.field static final MIN_USER_ID:I = 0xa

.field public static final PRIVATE_SPACE_AUTO_LOCK_INACTIVITY_ALARM_WINDOW_MS:J

.field public static final USER_INFO_DIR:Ljava/lang/String;

.field public static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field public final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public final mAppRestrictionsLock:Ljava/lang/Object;

.field public final mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public final mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public mBootUser:I

.field public final mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public final mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBootPhase:I

.field public final mDeviceInactivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field public mForceEphemeralUsers:Z

.field public final mGuestRestrictions:Landroid/os/Bundle;

.field public final mHandler:Landroid/os/Handler;

.field public final mInternalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mIsDeviceInactivityBroadcastReceiverRegistered:Z

.field public mIsDeviceManaged:Z

.field public final mIsUserManaged:Landroid/util/SparseBooleanArray;

.field public mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNextSerialNumber:I

.field public final mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mOwnerNameTypedValue:Landroid/util/TypedValue;

.field public final mPackagesLock:Ljava/lang/Object;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPrivateSpaceAutoLockSettingsObserver:Lcom/android/server/pm/UserManagerService$SettingsObserver;

.field public mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

.field public final mRecentlyRemovedIds:Ljava/util/LinkedList;

.field public final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field public final mRestrictionsLock:Ljava/lang/Object;

.field public final mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

.field public mUpdatingSystemUserMode:Z

.field public final mUser0Allocations:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field public mUserIds:[I

.field public mUserIdsIncludingPreCreated:[I

.field public final mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

.field public final mUserLifecycleListeners:Ljava/util/ArrayList;

.field public final mUserListFile:Ljava/io/File;

.field public final mUserRestrictionToken:Landroid/os/IBinder;

.field public final mUserRestrictionsListeners:Ljava/util/ArrayList;

.field public final mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

.field public mUserTypeVersion:I

.field public final mUserTypes:Landroid/util/ArrayMap;

.field public mUserVersion:I

.field public final mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

.field public final mUsers:Landroid/util/SparseArray;

.field public final mUsersDir:Ljava/io/File;

.field public final mUsersLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$-nIi6LRodwAORSqw6XAooGUSiIc(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->lambda$convertPreCreatedUserIfPossible$6(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$26ui7_lCqlzkPpzw0dz2f9n5uFs(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->lambda$updateUserRestrictionsInternalLR$3(Landroid/os/Bundle;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8eV6Xmej9_mxKEMO7xMgASyHpwA(Lcom/android/server/pm/UserManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->lambda$someUserHasAccountNoChecks$7(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NMj-qB85ijSYwf8IH4Vvg91OKvo(Landroid/os/IUserRestrictionsListener;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 3647
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IUserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to invoke listener: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3650
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3649
    const-string p1, "IUserRestrictionsListener"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$rRhoSdlK7ENXzeQ0MuUSUFWjg60(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->lambda$setQuietModeEnabledAsync$0(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tsX7gCLULeeS3JBY0HD-bzVn0iQ(Lcom/android/server/pm/UserManagerService;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->lambda$getUserListFile$4(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vpJVddHmPlPLapyRDgqvMTpabok(Lcom/android/server/pm/UserManagerService;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->lambda$getUserFile$5(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yIybRUvnMFarqB2JHfYXkMUsauk(Lcom/android/server/pm/UserManagerService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->onPullAtom(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootUserLatch(Lcom/android/server/pm/UserManagerService;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDeviceManaged(Lcom/android/server/pm/UserManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUserManaged(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackagesLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestrictionsLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserJourneyLogger(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserJourneyLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRestrictionsListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserVisibilityMediator(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserVisibilityMediator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentBootPhase(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mCurrentBootPhase:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForceEphemeralUsers(Lcom/android/server/pm/UserManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDeviceManaged(Lcom/android/server/pm/UserManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddUserInfoFlags(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyUserRestrictionsLR(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelPendingAutoLockAlarms(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupPartialUsers(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cleanupPartialUsers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupPreCreatedUsers(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cleanupPreCreatedUsers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateUserInternalUnchecked(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfinishRemoveUser(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetActivityManagerInternal(Lcom/android/server/pm/UserManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetBootUserUnchecked(Lcom/android/server/pm/UserManagerService;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getBootUserUnchecked()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetCommunalProfileIdUnchecked(Lcom/android/server/pm/UserManagerService;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCommunalProfileIdUnchecked()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetEffectiveUserRestrictions(Lcom/android/server/pm/UserManagerService;I)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMainUserIdUnchecked(Lcom/android/server/pm/UserManagerService;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetProfileIdsLU(Lcom/android/server/pm/UserManagerService;ILjava/lang/String;ZZ)Landroid/util/IntArray;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;ZZ)Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetProfileParentIdUnchecked(Lcom/android/server/pm/UserManagerService;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSupervisingProfileId(Lcom/android/server/pm/UserManagerService;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getSupervisingProfileId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserDataLU(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserDataNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserInfoNoChecks(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserPropertiesInternal(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserProperties;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserTypeDetails(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserTypeDetailsNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserTypeDetails;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUsersInternal(Lcom/android/server/pm/UserManagerService;ZZZ)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minvalidateOwnerNameIfNecessary(Lcom/android/server/pm/UserManagerService;Landroid/content/res/Resources;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misProfileUnchecked(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mregisterStatsCallbacks(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->registerStatsCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUserState(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUserWithProfilesUnchecked(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendUserInfoChangedBroadcast(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDefaultCrossProfileIntentFilters(Lcom/android/server/pm/UserManagerService;ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDevicePolicyUserRestrictionsInner(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLastEnteredForegroundTimeToNow(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setLastEnteredForegroundTimeToNow(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartCommunalProfile(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->startCommunalProfile()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteBitmapLP(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteUserLP(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteUserListLP(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisAutoLockForPrivateSpaceEnabled()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isAutoLockForPrivateSpaceEnabled()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 342
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x37

    .line 343
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/UserManagerService;->PRIVATE_SPACE_AUTO_LOCK_INACTIVITY_ALARM_WINDOW_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1052
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1053
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1052
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V
    .locals 7

    .line 1063
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Landroid/util/SparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserDataPreparer;",
            "Ljava/lang/Object;",
            "Ljava/io/File;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p4

    .line 1070
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    const/4 v0, 0x2

    .line 368
    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 369
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 371
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 380
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionToken:Landroid/os/IBinder;

    .line 393
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    .line 494
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 509
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 518
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 527
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 530
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 541
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 547
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 558
    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 559
    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 568
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 571
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 575
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    .line 578
    new-instance v3, Lcom/android/server/pm/UserJourneyLogger;

    invoke-direct {v3}, Lcom/android/server/pm/UserJourneyLogger;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 619
    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 622
    new-instance v3, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 636
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    .line 638
    new-instance v3, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 853
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    .line 855
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    .line 857
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 859
    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 952
    new-instance v3, Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-direct {v3, p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    const/16 v4, -0x2710

    .line 957
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    .line 1071
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 1072
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1073
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    if-eqz p6, :cond_0

    move-object/from16 v4, p6

    goto :goto_0

    .line 1074
    :cond_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 1075
    new-instance v4, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v4, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 1076
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x18

    invoke-direct/range {v5 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mInternalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1078
    new-instance v5, Lcom/android/server/pm/UserVisibilityMediator;

    invoke-direct {v5, v4}, Lcom/android/server/pm/UserVisibilityMediator;-><init>(Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    .line 1079
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 1080
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypes()Landroid/util/ArrayMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lcom/android/server/pm/UserManagerService;->invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V

    .line 1082
    monitor-enter p4

    .line 1083
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    move-object/from16 v7, p5

    invoke-direct {v2, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 1084
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1086
    new-instance v6, Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1088
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1fd

    const/4 v8, -0x1

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1091
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "userlist.xml"

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 1094
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 1095
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    new-instance v1, Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-direct {v1, p0, v5}, Lcom/android/server/pm/UserSystemPackageInstaller;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 1097
    new-instance v1, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService-IA;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 1098
    const-class v5, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v5, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1099
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1100
    invoke-virtual {v3, v0, v0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->put(II)V

    .line 1101
    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUser0Allocations:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1102
    new-instance p1, Lcom/android/server/pm/UserManagerService$SettingsObserver;

    invoke-direct {p1, p0, v4}, Lcom/android/server/pm/UserManagerService$SettingsObserver;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockSettingsObserver:Lcom/android/server/pm/UserManagerService$SettingsObserver;

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->emulateSystemUserModeIfNeeded()V

    .line 1104
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->initPropertyInvalidatedCaches()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1095
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final checkCreateUsersPermission(I)V
    .locals 3

    const v0, -0x972d

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    .line 4217
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4218
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4221
    :cond_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 4222
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkCreateUsersPermission(Ljava/lang/String;)V
    .locals 3

    .line 4169
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4170
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .locals 3

    .line 4120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 4127
    :cond_0
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4128
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4133
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 3

    .line 4153
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4154
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkQueryOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 3

    .line 4202
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4203
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS, CREATE_USERS, or QUERY_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkQueryUsersPermission(Ljava/lang/String;)V
    .locals 3

    .line 4185
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4186
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or QUERY_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSystemOrRoot(Ljava/lang/String;)V
    .locals 3

    .line 4293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 4294
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 4295
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system may: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkUserTypeConsistency(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0x120c

    .line 6146
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p0, 0x1400

    .line 6147
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 p0, p0, 0x1800

    .line 6148
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)Z
    .locals 1

    .line 5574
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 5575
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5576
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5577
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 7791
    const-string p1, "<unknown>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7793
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-long/2addr p2, p4

    .line 7794
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 7795
    const-string p2, " ago"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7796
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static enforceCurrentUserIfVisibleBackgroundEnabled()V
    .locals 7

    .line 2652
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2655
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2658
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    .line 2668
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    .line 2669
    invoke-virtual {v4, v0, v3}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 2670
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid calling user on devices that enable visible background users. callingUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentUserId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2676
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2677
    throw v0
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .line 963
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 964
    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 965
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I
    .locals 2

    .line 8467
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowedPerParent()I

    move-result v0

    .line 8468
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 8471
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8472
    const-string/jumbo p0, "persist.sys.max_profiles"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static getRedacted(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7376
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_chars"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final hasCreateUsersPermission()Z
    .locals 1

    .line 4262
    const-string v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasManageUsersOrPermission(Ljava/lang/String;)Z
    .locals 2

    .line 4251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4252
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4253
    invoke-static {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

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

.method public static final hasManageUsersPermission()Z
    .locals 1

    .line 4232
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4233
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v0

    return v0
.end method

.method public static hasManageUsersPermission(I)Z
    .locals 1

    const/16 v0, 0x3e8

    .line 4241
    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    const-string v0, "android.permission.MANAGE_USERS"

    .line 4243
    invoke-static {v0, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

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

.method public static hasPermissionGranted(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 4138
    invoke-static {p0, p1, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final hasQueryOrCreateUsersPermission()Z
    .locals 2

    .line 4281
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.QUERY_USERS"

    .line 4282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final hasQueryUsersPermission()Z
    .locals 1

    .line 4271
    const-string v0, "android.permission.QUERY_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final initPropertyInvalidatedCaches()V
    .locals 0

    .line 1113
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 1114
    invoke-static {}, Landroid/os/UserManager;->invalidateQuietModeEnabledCache()V

    .line 1116
    invoke-static {}, Landroid/os/UserManager;->invalidateStaticUserProperties()V

    .line 1117
    invoke-static {}, Landroid/os/UserManager;->invalidateUserPropertiesCache()V

    .line 1119
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    .line 1120
    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    return-void
.end method

.method public static isAtMostOneFlag(I)Z
    .locals 1

    .line 0
    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAutoLockForPrivateSpaceEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameProfileGroup(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2

    .line 1809
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 6251
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6252
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 7371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .locals 7

    .line 6959
    const-string v0, "UserManagerService"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6960
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6961
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 6967
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 6968
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v4

    .line 6969
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 6970
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 6971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read restrictions file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6972
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6971
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6981
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    .line 6975
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 6976
    invoke-static {v1, v2, v4}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6981
    :cond_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    .line 6979
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6981
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_2
    return-object v1

    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6982
    throw p0
.end method

.method public static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    .line 6950
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 6951
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 6952
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 6953
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static readBundleEntry(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3

    .line 7031
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7032
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 7033
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7034
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 6

    .line 6988
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 6989
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "entry"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6990
    const-string v0, "key"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6991
    const-string/jumbo v3, "type"

    invoke-interface {p2, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6992
    const-string v4, "m"

    const/4 v5, -0x1

    invoke-interface {p2, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 6994
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 6995
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-ne v3, v1, :cond_0

    .line 6997
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6998
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7002
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 7003
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7004
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 7005
    :cond_2
    const-string v1, "B"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7006
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 7007
    :cond_3
    const-string v1, "BA"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7008
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 7009
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7010
    :goto_1
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7011
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    .line 7012
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7015
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 7014
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    .line 7017
    :cond_5
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 7018
    const-string p2, "b"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 7019
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 7020
    :cond_6
    const-string p2, "i"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 7021
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 7023
    :cond_7
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .locals 6

    .line 7051
    const-string/jumbo v0, "restrictions"

    const/4 v1, 0x0

    .line 7053
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7054
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 7055
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7056
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 7058
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7059
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 7060
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7062
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 7063
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p0

    .line 7065
    :goto_0
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 7066
    const-string p1, "UserManagerService"

    const-string v0, "Error writing application restrictions list"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2

    .line 7042
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 7043
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    .line 7044
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 7045
    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    return-void
.end method

.method public static writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 10

    .line 7072
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7073
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 7074
    const-string v4, "entry"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7075
    const-string v5, "key"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7077
    instance-of v1, v2, Ljava/lang/Boolean;

    const-string/jumbo v5, "type"

    if-eqz v1, :cond_0

    .line 7078
    const-string v1, "b"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7079
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 7080
    :cond_0
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 7081
    const-string v1, "i"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7082
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 7083
    :cond_1
    const-string v1, ""

    if-eqz v2, :cond_7

    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_2

    goto :goto_4

    .line 7086
    :cond_2
    instance-of v6, v2, Landroid/os/Bundle;

    const-string v7, "B"

    if-eqz v6, :cond_3

    .line 7087
    invoke-interface {p1, v3, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7088
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_5

    .line 7089
    :cond_3
    instance-of v6, v2, [Landroid/os/Parcelable;

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    .line 7090
    const-string v1, "BA"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7091
    check-cast v2, [Landroid/os/Parcelable;

    .line 7092
    array-length v1, v2

    :goto_1
    if-ge v8, v1, :cond_9

    aget-object v6, v2, v8

    .line 7093
    instance-of v9, v6, Landroid/os/Bundle;

    if-eqz v9, :cond_4

    .line 7096
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7097
    invoke-interface {p1, v3, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7098
    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 7099
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 7094
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bundle-array can only hold Bundles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7102
    :cond_5
    const-string/jumbo v6, "sa"

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7103
    check-cast v2, [Ljava/lang/String;

    .line 7104
    const-string v5, "m"

    array-length v6, v2

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 7105
    array-length v5, v2

    :goto_2
    if-ge v8, v5, :cond_9

    aget-object v6, v2, v8

    .line 7106
    const-string/jumbo v7, "value"

    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move-object v6, v1

    .line 7107
    :goto_3
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7108
    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 7084
    :cond_7
    :goto_4
    const-string/jumbo v6, "s"

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v2, :cond_8

    .line 7085
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_8
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7111
    :cond_9
    :goto_5
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public addRemovingUserId(I)V
    .locals 1

    .line 6627
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6628
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 6629
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addRemovingUserIdLocked(I)V
    .locals 2

    .line 6637
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6638
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6640
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 6641
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addUserDataLU(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 1

    .line 7178
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    .line 7180
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final addUserInfoFlags(Landroid/content/pm/UserInfo;I)V
    .locals 1

    .line 2218
    iget p0, p1, Landroid/content/pm/UserInfo;->flags:I

    not-int v0, p0

    and-int/2addr p2, v0

    if-lez p2, :cond_0

    or-int/2addr p0, p2

    .line 2220
    iput p0, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 2221
    invoke-static {p2}, Landroid/os/UserManager;->invalidateOnUserInfoFlagChange(I)V

    :cond_0
    return-void
.end method

.method public addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .locals 2

    .line 3637
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3644
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    new-instance v0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;-><init>(Landroid/os/IUserRestrictionsListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService$LocalService;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    return-void

    .line 3638
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Non-system caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V
    .locals 9

    .line 6014
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getDefaultSystemSettings()Landroid/os/Bundle;

    move-result-object v0

    .line 6015
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getDefaultSecureSettings()Landroid/os/Bundle;

    move-result-object p1

    .line 6016
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 6020
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    .line 6021
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    .line 6023
    :goto_0
    const-string v5, "UserManagerService"

    if-ge v4, v1, :cond_2

    .line 6024
    aget-object v6, v2, v4

    .line 6025
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 6026
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6025
    invoke-static {v7, v6, v8, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 6028
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert default system setting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6032
    :cond_2
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    .line 6033
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_1
    if-ge v3, v0, :cond_4

    .line 6036
    aget-object v2, v1, v3

    .line 6037
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 6038
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6037
    invoke-static {v4, v2, v6, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert default secure setting: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final applyUserRestrictionsForAllUsersLR()V
    .locals 1

    .line 3857
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0}, Lcom/android/server/pm/RestrictionsSet;->removeAllRestrictions()V

    .line 3861
    new-instance v0, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 3883
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final applyUserRestrictionsLR(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3846
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 3847
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    return-void
.end method

.method public final areThereMultipleSwitchableUsers()Z
    .locals 4

    const/4 v0, 0x1

    .line 3079
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    .line 3081
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3082
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public autoLockPrivateSpace()V
    .locals 4

    .line 820
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-locking private space with user-id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 826
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 824
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V
    .locals 3

    .line 1826
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1828
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->getAvailabilityIntentAction(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1827
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1829
    const-string v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1830
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1832
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 1831
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1833
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 1834
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p3

    invoke-virtual {p3, v0, p2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    :cond_0
    const/high16 p3, 0x50000000

    .line 1837
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1842
    new-instance p3, Landroid/app/BroadcastOptions;

    invoke-direct {p3}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 v2, 0x2

    .line 1843
    invoke-virtual {p3, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    .line 1844
    invoke-virtual {p3, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    if-eqz p4, :cond_1

    .line 1847
    const-string p4, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    goto :goto_0

    .line 1848
    :cond_1
    const-string p4, "android.intent.action.PROFILE_AVAILABLE"

    .line 1849
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1846
    invoke-virtual {p3, p4, p1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 1850
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 1851
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .locals 1

    .line 4018
    const-string v0, "android.os.usertype.profile.MANAGED"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z
    .locals 0

    .line 4026
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(Ljava/lang/String;IZ)I

    move-result p1

    if-gtz p1, :cond_1

    .line 4027
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

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

.method public final canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z
    .locals 4

    .line 3906
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3909
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 3913
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p1

    if-lt p1, v0, :cond_3

    .line 3914
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v3
.end method

.method public canAddMoreUsersOfType(Ljava/lang/String;)Z
    .locals 1

    .line 3989
    const-string v0, "check if more users can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 3990
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p1, :cond_0

    .line 3991
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canAddPrivateProfile(I)Z
    .locals 4

    .line 3121
    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 3122
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3123
    const-string v1, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3124
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3126
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3127
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->doesDeviceHardwareSupportPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "no_add_private_profile"

    .line 3128
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v3
.end method

.method public canHaveRestrictedProfile(I)Z
    .locals 4

    .line 3105
    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3106
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3107
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3108
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3111
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3112
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3115
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    .line 3109
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    .line 3116
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public canSwitchToHeadlessSystemUser()Z
    .locals 1

    .line 8591
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getSystemResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111006e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final cancelPendingAutoLockAlarms()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 656
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    if-eqz p0, :cond_0

    .line 657
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    return-void
.end method

.method public final checkAdminStatusChangeAllowed(I)V
    .locals 2

    .line 4311
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string/jumbo v1, "no_grant_admin"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4312
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 4313
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Admin status change is restricted. The DISALLOW_GRANT_ADMIN restriction is applied either on the current or the target user."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .locals 1

    .line 2840
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 2841
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2844
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 2847
    :cond_1
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 2848
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 2847
    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 2851
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final checkQueryOrCreateUsersPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .locals 1

    .line 2897
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2898
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2901
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .locals 1

    .line 2868
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 2869
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2872
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryUsersPermission()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 2875
    :cond_1
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 2876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 2875
    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 2879
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You need INTERACT_ACROSS_USERS, MANAGE_USERS, or QUERY_USERS permission to: check "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final cleanupPartialUsers()V
    .locals 8

    .line 1250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1252
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 1254
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1255
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_0

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v6, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_2

    .line 1256
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1258
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    :cond_1
    const/4 v6, 0x1

    .line 1260
    iput-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1263
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_4

    .line 1266
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1267
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing partially created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void

    .line 1263
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final cleanupPreCreatedUsers()V
    .locals 7

    .line 1279
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1280
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 1283
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1284
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v6, :cond_0

    .line 1285
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    const/16 v6, 0x40

    .line 1287
    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    const/4 v6, 0x1

    .line 1288
    iput-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1291
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_2

    .line 1294
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1295
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing pre-created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 1291
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public clearSeedAccountData(I)V
    .locals 2

    .line 7443
    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 7444
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7446
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7447
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7448
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    .line 7449
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 7450
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7451
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 7452
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 7450
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 7452
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .locals 3

    .line 3561
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictionsNonNull(I)Landroid/os/Bundle;

    move-result-object v0

    .line 3563
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictionsNonNull(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3565
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictionsNonNull(I)Landroid/os/Bundle;

    move-result-object p0

    .line 3567
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 3571
    :cond_0
    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 3572
    invoke-static {p1, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 3573
    invoke-static {p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final convertPreCreatedUserIfPossible(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .locals 6

    .line 6093
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6094
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 6095
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    .line 6099
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v2

    .line 6100
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6101
    const-string p0, "UserManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot reuse pre-created user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " because it didn\'t stop yet"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6103
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    .line 6105
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6106
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6107
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr v3, p2

    .line 6108
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6109
    const-string p0, "UserManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot reuse pre-created user "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " of type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because flags are inconsistent. Flags ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6111
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "); preCreatedUserFlags ( "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 6112
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6109
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 6115
    :cond_2
    const-string v0, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reusing pre-created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and bestowing on it flags "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6116
    invoke-static {p2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6115
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6117
    iput-object p3, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 6118
    iput v3, v2, Landroid/content/pm/UserInfo;->flags:I

    const/4 p1, 0x0

    .line 6119
    iput-boolean p1, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    const/4 p1, 0x1

    .line 6120
    iput-boolean p1, v2, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 6121
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/content/pm/UserInfo;->creationTime:J

    .line 6123
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6124
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6125
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 6126
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6127
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 6128
    new-instance p1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v2, p4}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-object v2

    :catchall_1
    move-exception p0

    .line 6126
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 6105
    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    .line 6095
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 8

    .line 5611
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 5613
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 5616
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1

    .line 5594
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 5596
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 5598
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 7

    .line 6344
    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 6345
    const-string v3, "android.os.usertype.full.RESTRICTED"

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 6347
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 6349
    :try_start_0
    const-string/jumbo v0, "no_modify_accounts"

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 6352
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    iget v4, p0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6355
    const-string/jumbo v0, "no_share_location"

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6357
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6358
    throw p0
.end method

.method public final createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 8

    .line 5699
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5700
    const-string/jumbo v1, "no_add_clone_profile"

    goto :goto_0

    .line 5701
    :cond_0
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5702
    const-string/jumbo v1, "no_add_managed_profile"

    goto :goto_0

    .line 5703
    :cond_1
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5704
    const-string/jumbo v1, "no_add_private_profile"

    goto :goto_0

    .line 5703
    :cond_2
    const-string/jumbo v1, "no_add_user"

    .line 5707
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const-string v3, "Cannot add user"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_3

    .line 5712
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "Cannot create ADMIN user"

    .line 5711
    const-string/jumbo v3, "no_grant_admin"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 5716
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public final createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .locals 10

    .line 5727
    new-instance v8, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 5728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createUser-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5729
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v1, -0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    .line 5732
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5737
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    invoke-virtual {v2, p0, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserCreateJourneyFinish(ILandroid/content/pm/UserInfo;)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    goto :goto_0

    .line 5739
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 5741
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v4

    const/4 v5, -0x1

    const/4 v3, 0x4

    move-object v6, p2

    move v7, p3

    .line 5739
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIILjava/lang/String;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 5743
    :goto_0
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 5739
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 5741
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v4

    const/4 v5, -0x1

    const/4 v3, 0x4

    move-object v6, p2

    move v7, p3

    .line 5739
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIILjava/lang/String;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 5743
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5744
    throw v0
.end method

.method public final createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    const/16 v6, 0x64

    move-object/from16 v7, p1

    .line 5752
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 5753
    iget-object v6, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserTypeDetails;

    const/4 v13, 0x1

    if-nez v6, :cond_0

    .line 5755
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot create user of invalid user type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 5759
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 5760
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    or-int v1, p3, v1

    .line 5761
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5762
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add user. Flags ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5763
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") and userTypeDetails ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") are inconsistent."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5762
    invoke-virtual {v0, v7, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_1
    and-int/lit16 v7, v1, 0x800

    if-eqz v7, :cond_2

    .line 5768
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add user. Flags ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5769
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") indicated SYSTEM user, which cannot be created."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5768
    invoke-virtual {v0, v7, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 5773
    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5774
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add a user of disabled type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 5779
    :cond_3
    iget-object v7, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5780
    :try_start_0
    iget-boolean v8, v0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    if-eqz v8, :cond_4

    or-int/lit16 v1, v1, 0x100

    .line 5783
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-nez v3, :cond_5

    if-gez v2, :cond_5

    .line 5786
    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5787
    invoke-virtual {v0, v12, v1, v9, v5}, Lcom/android/server/pm/UserManagerService;->convertPreCreatedUserIfPossible(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    return-object v7

    .line 5794
    :cond_5
    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 5795
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 5796
    invoke-interface {v7}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 5797
    const-string v7, "Cannot add user. Not enough space on disk."

    const/4 v8, 0x5

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_6
    and-int/lit16 v7, v1, 0x4000

    if-eqz v7, :cond_7

    move v15, v13

    goto :goto_0

    :cond_7
    const/4 v15, 0x0

    .line 5803
    :goto_0
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v16

    .line 5804
    invoke-static {v12}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v17

    .line 5805
    invoke-static {v12}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v18

    .line 5806
    invoke-static {v12}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v7

    .line 5807
    invoke-static {v12}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v8

    .line 5808
    invoke-static {v12}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v10

    .line 5809
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->isProfileParentRequired()Z

    move-result v11

    .line 5811
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    move/from16 p1, v10

    .line 5816
    :try_start_1
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 p2, v10

    const/16 v10, -0x2710

    if-eq v2, v10, :cond_9

    .line 5819
    :try_start_2
    iget-object v14, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5820
    :try_start_3
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v21

    .line 5821
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v21, :cond_8

    .line 5823
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find user data for parent user "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_a

    :cond_8
    :goto_1
    move-object/from16 v14, v21

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 5821
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_9
    const/16 v21, 0x0

    goto :goto_1

    :goto_2
    if-eqz v15, :cond_a

    .line 5828
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v13

    const/16 v10, -0x2710

    if-eq v13, v10, :cond_a

    .line 5829
    const-string v13, "Cannot add user with FLAG_MAIN as main user already exists."

    const/4 v10, 0x6

    invoke-virtual {v0, v13, v10}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_a
    if-nez v3, :cond_b

    .line 5833
    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 5834
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot add more users of type "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ". Maximum number of that type already exists."

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x6

    invoke-virtual {v0, v10, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_b
    if-nez v17, :cond_c

    if-nez v8, :cond_c

    if-nez v7, :cond_c

    .line 5840
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 5844
    const-string v7, "Cannot add user. Maximum user limit is reached."

    const/4 v10, 0x6

    invoke-virtual {v0, v7, v10}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_c
    if-eqz v11, :cond_d

    const/4 v7, 0x0

    .line 5850
    invoke-virtual {v0, v12, v2, v7}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v8

    if-nez v8, :cond_d

    .line 5851
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add more profiles of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    invoke-virtual {v0, v7, v10}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_d
    if-eqz p1, :cond_e

    .line 5857
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->canAddPrivateProfile(I)Z

    move-result v7

    if-nez v7, :cond_e

    .line 5858
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add profile of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_e
    if-eqz v18, :cond_f

    if-eqz v2, :cond_f

    .line 5863
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result v7

    if-nez v7, :cond_f

    .line 5864
    const-string v7, "Cannot add restricted profile - parent user must be system"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 5869
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v8

    .line 5870
    const-string v7, "UserManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5871
    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 5873
    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v14, :cond_10

    .line 5875
    :try_start_7
    iget-object v7, v14, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v7

    if-eqz v7, :cond_10

    or-int/lit16 v1, v1, 0x100

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_9

    :cond_10
    :goto_3
    if-eqz v3, :cond_11

    and-int/lit16 v1, v1, -0x101

    :cond_11
    and-int/lit16 v7, v1, 0x100

    if-eqz v7, :cond_12

    or-int/lit16 v1, v1, 0x2000

    :cond_12
    move v11, v1

    .line 5890
    new-instance v7, Landroid/content/pm/UserInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v10, 0x0

    move-object/from16 v1, p2

    move/from16 p1, v15

    const/16 v15, -0x2710

    :try_start_8
    invoke-direct/range {v7 .. v12}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 5891
    iget v9, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v9, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 5892
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide v9

    iput-wide v9, v7, Landroid/content/pm/UserInfo;->creationTime:J

    const/4 v9, 0x1

    .line 5893
    iput-boolean v9, v7, Landroid/content/pm/UserInfo;->partial:Z

    .line 5894
    iput-boolean v3, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 5895
    sget-object v9, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v9, v7, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 5896
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v9

    if-eqz v9, :cond_13

    if-eq v2, v15, :cond_13

    .line 5897
    invoke-virtual {v0, v2, v12}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result v9

    iput v9, v7, Landroid/content/pm/UserInfo;->profileBadge:I

    goto :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_9

    .line 5899
    :cond_13
    :goto_4
    new-instance v9, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v9}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 5900
    iput-object v7, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5901
    new-instance v10, Landroid/content/pm/UserProperties;

    .line 5902
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserPropertiesReference()Landroid/content/pm/UserProperties;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    iput-object v10, v9, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    .line 5903
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->addUserDataLU(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5904
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 5905
    :try_start_9
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5906
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    if-eqz v14, :cond_17

    if-eqz v16, :cond_15

    .line 5909
    iget-object v10, v14, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v11, v15, :cond_14

    .line 5910
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    iput v11, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 5911
    invoke-virtual {v0, v14}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_5

    :catchall_4
    move-exception v0

    goto/16 :goto_a

    .line 5913
    :cond_14
    :goto_5
    iget-object v10, v14, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v10, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_6

    :cond_15
    if-eqz v18, :cond_17

    .line 5915
    iget-object v10, v14, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v10, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v11, v15, :cond_16

    .line 5916
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    iput v11, v10, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 5917
    invoke-virtual {v0, v14}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5919
    :cond_16
    iget-object v10, v14, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v10, v7, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 5922
    :cond_17
    :goto_6
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 5924
    :try_start_a
    const-string v1, "createUserStorageKeys"

    invoke-virtual {v4, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5925
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v10, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 5926
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v10

    invoke-virtual {v1, v8, v10}, Landroid/os/storage/StorageManager;->createUserStorageKeys(IZ)V

    .line 5927
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5932
    const-string/jumbo v1, "prepareUserData"

    invoke-virtual {v4, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5933
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v10, 0x1

    invoke-virtual {v1, v7, v10}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(Landroid/content/pm/UserInfo;I)V

    .line 5934
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5936
    const-string v1, "LSS.createNewUser"

    invoke-virtual {v4, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5937
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v1, v8, v10}, Lcom/android/internal/widget/LockPatternUtils;->createNewUser(II)V

    .line 5938
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5940
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 5941
    invoke-virtual {v1, v12}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 5942
    const-string v10, "PM.createNewUser"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5943
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v11, p6

    invoke-virtual {v10, v8, v1, v11}, Lcom/android/server/pm/PackageManagerService;->createNewUser(ILjava/util/Set;[Ljava/lang/String;)V

    .line 5944
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5946
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v17, :cond_18

    .line 5949
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 5950
    :try_start_b
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 5951
    monitor-exit v10

    goto :goto_7

    :catchall_5
    move-exception v0

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    throw v0

    :catchall_6
    move-exception v0

    goto/16 :goto_b

    .line 5953
    :cond_18
    invoke-virtual {v6, v1}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    if-eqz p1, :cond_19

    .line 5955
    const-string/jumbo v10, "no_outgoing_calls"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5956
    const-string/jumbo v10, "no_sms"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5959
    :cond_19
    :goto_7
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 5960
    :try_start_d
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v11, v8, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 5961
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const/4 v10, 0x0

    .line 5963
    :try_start_e
    iput-boolean v10, v7, Landroid/content/pm/UserInfo;->partial:Z

    .line 5965
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    .line 5967
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 5968
    :try_start_f
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5969
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 5970
    :try_start_10
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 5972
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PM.onNewUserCreated-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5973
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    .line 5974
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5975
    invoke-virtual {v0, v6, v8}, Lcom/android/server/pm/UserManagerService;->applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V

    .line 5976
    invoke-virtual {v0, v8, v6, v1, v2}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V

    if-eqz v3, :cond_1a

    .line 5983
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting pre-created user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5984
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 5986
    :try_start_11
    invoke-interface {v0, v8}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_8

    :catch_0
    move-exception v0

    .line 5988
    :try_start_12
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not start pre-created user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 5991
    :cond_1a
    invoke-virtual {v0, v7, v5}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 5995
    :goto_8
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :catchall_7
    move-exception v0

    .line 5969
    :try_start_13
    monitor-exit v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :catchall_8
    move-exception v0

    .line 5961
    :try_start_15
    monitor-exit v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 5904
    :goto_9
    :try_start_17
    monitor-exit v13
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    throw v0

    .line 5922
    :goto_a
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 5995
    :goto_b
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5996
    throw v0

    :catchall_9
    move-exception v0

    .line 5783
    :try_start_1a
    monitor-exit v7
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    throw v0
.end method

.method public createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;
    .locals 7

    .line 5664
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 5666
    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v5, -0x2710

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 5673
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    if-eqz p4, :cond_0

    .line 5679
    iget-object p2, p1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget p3, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p3, p4}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 5682
    :cond_0
    iget p2, p0, Landroid/content/pm/UserInfo;->id:I

    move-object p4, p6

    const/4 p6, 0x1

    move-object p3, p5

    move-object p5, p7

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 5684
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 5675
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0

    .line 5667
    :cond_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method public createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 6

    .line 5625
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    const/16 v4, -0x2710

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 5627
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 5630
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 3

    .line 6182
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6183
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6184
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 6186
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6189
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 6190
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 6192
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6193
    const-string v0, "android.intent.extra.user_handle"

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6196
    const-string v0, "android.intent.extra.USER"

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6197
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6199
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "users_guest_created"

    goto :goto_1

    .line 6200
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "users_demo_created"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "users_user_created"

    :goto_1
    const/4 v1, 0x1

    .line 6199
    invoke-static {p2, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6202
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6203
    iget p2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/UserManagerService;->sendProfileAddedBroadcast(II)V

    return-void

    .line 6206
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "user_switcher_enabled"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 6208
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getSystemResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110195

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6210
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "user_switcher_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void

    .line 6186
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final doesDeviceHardwareSupportPrivateSpace()Z
    .locals 3

    .line 1169
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "android.hardware.type.embedded"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "android.hardware.type.watch"

    .line 1170
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "android.software.leanback"

    .line 1171
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v0, "android.hardware.type.automotive"

    .line 1172
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const/4 p1, 0x1

    .line 7515
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "UserManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7517
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 7518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 7519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 7521
    array-length v1, p3

    if-lez v1, :cond_1

    .line 7522
    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const-string v2, "--visibility-mediator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, p0

    move-object v2, p2

    goto :goto_0

    .line 7524
    :cond_2
    aget-object p1, p3, p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V

    return-void

    :cond_3
    move-object v1, p0

    move-object v2, p2

    .line 7527
    iget-object p0, v1, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, v2, p3}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    .line 7532
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    .line 7533
    const-string p2, "Current user: "

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, -0x2710

    if-eq p0, p2, :cond_4

    .line 7535
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_1

    .line 7537
    :cond_4
    const-string p2, "N/A"

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7540
    :goto_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 7541
    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p2

    .line 7542
    :try_start_0
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 7543
    :try_start_1
    const-string v3, "Users:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v10, v0

    .line 7544
    :goto_2
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v10, v3, :cond_6

    .line 7545
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_5

    goto :goto_3

    .line 7549
    :cond_5
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    :goto_3
    add-int/2addr v10, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b

    .line 7551
    :cond_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7553
    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 7554
    const-string v3, "Device properties:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7555
    const-string v3, "  Device policy global restrictions:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7556
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 7557
    :try_start_3
    const-string v4, "    "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v6, -0x1

    .line 7559
    invoke-virtual {v5, v6}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 7557
    invoke-static {v2, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7560
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 7561
    :try_start_4
    const-string v3, "  Guest restrictions:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7562
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 7563
    :try_start_5
    const-string v4, "    "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v2, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7564
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    .line 7565
    :try_start_6
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 7566
    :try_start_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 7567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Device managed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7568
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 7569
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 7570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Recently removed userIds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a

    .line 7572
    :cond_7
    :goto_4
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 7573
    :try_start_8
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 7574
    :try_start_9
    const-string v4, "  Started users state: ["

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7575
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    move v5, v0

    :goto_5
    if-ge v5, v4, :cond_9

    .line 7577
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 7578
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 7579
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x3d

    .line 7580
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 7581
    invoke-static {v7}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_8

    .line 7582
    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9

    :cond_8
    :goto_6
    add-int/2addr v5, p1

    goto :goto_5

    :cond_9
    const/16 v4, 0x5d

    .line 7584
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 7585
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 7586
    :try_start_a
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 7587
    :try_start_b
    const-string v4, "  Cached user IDs: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7588
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7589
    const-string v4, "  Cached user IDs (including pre-created): "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7590
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7591
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 7592
    :try_start_c
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 7594
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 7595
    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p2, v2, p3}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7596
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 7599
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 7600
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result p2

    .line 7601
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Max users: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7602
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getSystemResources()Landroid/content/res/Resources;

    move-result-object p3

    const v3, 0x10e00de

    .line 7603
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    if-eq p2, p3, :cond_a

    .line 7605
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (built-in value: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7607
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " (limit reached: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7608
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Supports switchable users: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  All guests ephemeral: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getSystemResources()Landroid/content/res/Resources;

    move-result-object p3

    const v3, 0x11101ba

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Force ephemeral users: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7612
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p2

    .line 7613
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Is headless-system mode: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7614
    sget-boolean p3, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    if-eq p2, p3, :cond_b

    .line 7615
    const-string p3, "  (differs from the current default build value)"

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7617
    :cond_b
    const-string/jumbo p3, "persist.debug.user_mode_emulation"

    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    .line 7618
    const-string p3, "  (emulated by \'cmd user set-system-user-mode-emulation\')"

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7619
    iget-boolean p3, v1, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    if-eqz p3, :cond_c

    .line 7620
    const-string p3, "  (and being updated after boot)"

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    if-eqz p2, :cond_d

    .line 7624
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Can switch to headless system user: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getSystemResources()Landroid/content/res/Resources;

    move-result-object p3

    const v3, 0x111006e

    .line 7625
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7624
    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7627
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  User version: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v1, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7628
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Owner name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7632
    iget-object p3, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p3

    .line 7633
    :try_start_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Boot user: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7634
    monitor-exit p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 7635
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can add private profile: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/UserManagerService;->canAddPrivateProfile(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7637
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 7638
    const-string p0, "Number of listeners for"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7639
    iget-object p0, v1, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    monitor-enter p0

    .line 7640
    :try_start_e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  restrictions: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7641
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 7642
    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter p2

    .line 7643
    :try_start_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  user lifecycle events: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7644
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 7647
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 7648
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User types version: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7649
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User types ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " types):"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7650
    :goto_7
    iget-object p0, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    if-ge v0, p0, :cond_e

    .line 7651
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7652
    iget-object p0, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    const-string p2, "        "

    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/UserTypeDetails;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/2addr v0, p1

    goto :goto_7

    .line 7657
    :cond_e
    new-instance p0, Landroid/util/IndentingPrintWriter;

    invoke-direct {p0, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 7660
    :try_start_10
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 7661
    iget-object p1, v1, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 7665
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->close()V

    return-void

    :catchall_3
    move-exception v0

    move-object p1, v0

    .line 7657
    :try_start_11
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p1

    :catchall_5
    move-exception v0

    move-object p0, v0

    .line 7644
    :try_start_12
    monitor-exit p2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw p0

    :catchall_6
    move-exception v0

    move-object p1, v0

    .line 7641
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw p1

    :catchall_7
    move-exception v0

    move-object p0, v0

    .line 7634
    :try_start_14
    monitor-exit p3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    throw p0

    :catchall_8
    move-exception v0

    move-object p0, v0

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object p0, v0

    .line 7591
    :try_start_15
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    throw p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 7585
    :goto_9
    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    throw p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 7572
    :goto_a
    :try_start_19
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    throw p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :catchall_a
    move-exception v0

    move-object p0, v0

    .line 7564
    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    :try_start_1c
    throw p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :catchall_b
    move-exception v0

    move-object p0, v0

    .line 7560
    :try_start_1d
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    :try_start_1e
    throw p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 7551
    :goto_b
    :try_start_1f
    monitor-exit v9
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :try_start_20
    throw p0

    .line 7592
    :goto_c
    monitor-exit p2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    throw p0
.end method

.method public final dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V
    .locals 9

    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 7671
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v2

    .line 7672
    const-string v3, "Current user: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_1

    .line 7674
    const-string v0, "Cannot determine current user"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    move v2, p2

    .line 7680
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8

    .line 7681
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_2

    .line 7683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7684
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    move-wide v6, p6

    move-object v2, v3

    move-object v3, p3

    .line 7686
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    .line 7687
    monitor-exit v8

    return-void

    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V
    .locals 9

    .line 7693
    iget-object v7, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7694
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    .line 7695
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7696
    const-string v2, " serialNo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 7697
    const-string v2, " isPrimary="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 7698
    iget v2, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, v7, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_0

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    .line 7700
    const-string v2, " parentId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 7703
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7704
    const-string v2, " <removing> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7706
    :cond_1
    iget-boolean v2, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_2

    .line 7707
    const-string v2, " <partial>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7709
    :cond_2
    iget-boolean v2, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_3

    .line 7710
    const-string v2, " <pre-created>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7712
    :cond_3
    iget-boolean v2, v7, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v2, :cond_4

    .line 7713
    const-string v2, " <converted>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7715
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7716
    const-string v2, "    Type: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7717
    const-string v2, "    Flags: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7718
    iget v2, v7, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7719
    const-string v2, "    State: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7721
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v2

    .line 7722
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    const/4 v4, -0x1

    invoke-virtual {v3, v8, v4}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v3

    .line 7723
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7724
    invoke-static {v3}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7725
    const-string v2, "    Created: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7726
    iget-wide v5, v7, Landroid/content/pm/UserInfo;->creationTime:J

    move-object v1, p1

    move-object v2, p3

    move-wide v3, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 7728
    const-string v2, "    Last logged in: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7729
    iget-wide v5, v7, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 7731
    const-string v2, "    Last logged in fingerprint: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7732
    iget-object v2, v7, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7734
    const-string v2, "    Start time: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7735
    iget-wide v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object v2, p3

    move-wide v3, p6

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 7737
    const-string v2, "    Unlock time: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7738
    iget-wide v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 7740
    const-string v2, "    Last entered foreground: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7741
    iget-wide v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    move-object v2, p3

    move-wide v3, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 7743
    const-string v2, "    Has profile owner: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7744
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 7746
    const-string v2, "    Restrictions:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7747
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7748
    :try_start_1
    const-string v2, "      "

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v5, v7, Landroid/content/pm/UserInfo;->id:I

    .line 7749
    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    .line 7748
    invoke-static {p1, v2, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7750
    const-string v2, "    Device policy restrictions:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7751
    const-string v2, "      "

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v5, v7, Landroid/content/pm/UserInfo;->id:I

    .line 7753
    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    .line 7751
    invoke-static {p1, v2, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7754
    const-string v2, "    Effective restrictions:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7755
    const-string v2, "      "

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    .line 7757
    invoke-virtual {v0, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 7755
    invoke-static {p1, v2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7758
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7760
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 7761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7762
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7765
    :cond_5
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 7766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Seed account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7767
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7768
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 7769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         account type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7770
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7772
    :cond_6
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_7

    .line 7773
    const-string v0, "         account options exist"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7774
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7778
    :cond_7
    const-string v0, "    Can have profile: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7779
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7781
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_8

    .line 7782
    const-string v2, "    "

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/UserProperties;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7785
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Ignore errors preparing storage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7786
    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7785
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7758
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 7723
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final emulateSystemUserModeIfNeeded()V
    .locals 12

    .line 4435
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4438
    :cond_0
    const-string/jumbo v0, "persist.debug.user_mode_emulation"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 4442
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v0

    .line 4445
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4446
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4447
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_2

    .line 4449
    const-string p0, "UserManagerService"

    const-string v0, "emulateSystemUserModeIfNeeded(): no system user data"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    .line 4452
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v4

    .line 4453
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    if-eqz v0, :cond_3

    .line 4457
    const-string v7, "android.os.usertype.system.HEADLESS"

    and-int/lit16 v8, v6, -0x4401

    goto :goto_1

    .line 4460
    :cond_3
    const-string v7, "android.os.usertype.full.SYSTEM"

    or-int/lit16 v8, v6, 0x4400

    .line 4464
    :goto_1
    iget-object v5, v5, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4465
    const-string p0, "UserManagerService"

    const-string v0, "emulateSystemUserModeIfNeeded(): system user type is already %s, returning"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4467
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 4469
    :cond_4
    :try_start_5
    const-string v5, "UserManagerService"

    const-string v9, "Persisting emulated system user data: type changed from %s to %s, flags changed from %s to %s"

    iget-object v10, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v10, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 4472
    invoke-static {v6}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v10, v7, v6, v11}, [Ljava/lang/Object;

    move-result-object v6

    .line 4469
    invoke-static {v5, v9, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4474
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object v7, v5, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 4475
    iput v8, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 4476
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4479
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    if-eqz v0, :cond_6

    if-eqz v3, :cond_5

    .line 4481
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_5

    goto :goto_2

    .line 4483
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isMainUserPermanentAdmin()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4486
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4488
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Designating user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to be Main"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    iget v3, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 4490
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    .line 4498
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_7

    .line 4499
    const-string v0, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transferring Main to user 0 from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v4, v4, -0x4001

    iput v4, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 4501
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_2

    .line 4503
    :cond_7
    const-string v0, "UserManagerService"

    const-string v3, "Designated user 0 to be Main"

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4506
    :cond_8
    :goto_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4507
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v0, 0x1

    .line 4510
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    return-void

    .line 4506
    :goto_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    .line 4507
    :goto_4
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public enforceCrossProfileIntentFilterAccess(IIIZ)V
    .locals 0

    .line 3221
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/UserManagerService;->isCrossProfileIntentFilterAccessible(IIZ)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3223
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CrossProfileIntentFilter cannot be accessed by user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 8399
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is enabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8402
    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8404
    new-instance p1, Landroid/os/UserManager$CheckedUserOperationException;

    const/16 p2, 0xa

    invoke-direct {p1, p0, p2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    return-void
.end method

.method public final ensureCanModifyQuietMode(Ljava/lang/String;IIZZ)V
    .locals 1

    .line 1983
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 1985
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_5

    if-nez p5, :cond_4

    .line 1996
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    invoke-virtual {p0, p4, p3}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2000
    const-string p0, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {p0, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 2006
    :cond_1
    const-class p0, Landroid/content/pm/ShortcutServiceInternal;

    .line 2007
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutServiceInternal;

    if-eqz p0, :cond_2

    .line 2010
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return-void

    .line 2015
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1997
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MANAGE_USERS permission is required to modify quiet mode for a different profile group."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1993
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MANAGE_USERS permission is required to disable quiet mode without credentials."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1989
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public evictCredentialEncryptionKey(I)V
    .locals 3

    .line 2311
    const-string v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2312
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2315
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 2319
    :goto_0
    :try_start_0
    invoke-interface {v0, p1, p0}, Landroid/app/IActivityManager;->restartUserInBackground(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2321
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2323
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2324
    throw p0
.end method

.method public exists(I)Z
    .locals 0

    .line 3194
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    return p0
.end method

.method public final fallbackToSingleUserLP()V
    .locals 8

    .line 5016
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5017
    const-string v0, "android.os.usertype.system.HEADLESS"

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 5018
    :cond_0
    const-string v0, "android.os.usertype.full.SYSTEM"

    goto :goto_0

    .line 5019
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    or-int/lit8 v5, v0, 0x10

    .line 5021
    new-instance v1, Landroid/content/pm/UserInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 5023
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 5024
    new-instance v0, Landroid/content/pm/UserProperties;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 5025
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserPropertiesReference()Landroid/content/pm/UserProperties;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    const/16 v0, 0xa

    .line 5026
    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v0, 0xb

    .line 5027
    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 5028
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 5030
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    .line 5032
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x107003e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 5034
    array-length v4, v0

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 5035
    invoke-static {v6}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    .line 5036
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5040
    :goto_4
    const-string v4, "UserManagerService"

    const-string v5, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5043
    :cond_2
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5044
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5045
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 5047
    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 5050
    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 5052
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5053
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void
.end method

.method public final finishRemoveUser(I)V
    .locals 11

    .line 6704
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishRemoveUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6707
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6708
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 6709
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 6710
    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_0

    .line 6711
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing a pre-created user with user id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6713
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 6714
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void

    .line 6718
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x0

    .line 6719
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 6720
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-interface {v3, v0}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserRemoved(Landroid/content/pm/UserInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 6722
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6728
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 6729
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6730
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6733
    const-string v0, "android.intent.extra.USER"

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6734
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v3

    new-instance v5, Lcom/android/server/pm/UserManagerService$7;

    invoke-direct {v5, p0, p1}, Lcom/android/server/pm/UserManagerService$7;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const-string p0, "android.permission.MANAGE_USERS"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6753
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6754
    throw p0

    .line 6722
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 6709
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 8562
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    .line 8563
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 8565
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public final getAliveUsersExcludingGuestsCountLU()I
    .locals 6

    .line 4099
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4102
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4103
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 6878
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    .line 6890
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 6891
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6892
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 6894
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter p0

    .line 6896
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6897
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getAvailabilityIntentAction(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 1817
    const-string p0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    return-object p0

    .line 1818
    :cond_0
    const-string p0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    .line 1820
    const-string p0, "android.intent.action.PROFILE_UNAVAILABLE"

    return-object p0

    .line 1821
    :cond_2
    const-string p0, "android.intent.action.PROFILE_AVAILABLE"

    return-object p0
.end method

.method public getBootUser()I
    .locals 1

    .line 1391
    const-string v0, "Get boot user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 1393
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getBootUserUnchecked()I

    move-result p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1395
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final getBootUserBasedOnProvisioning()I
    .locals 3

    .line 1432
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 1437
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getFirstSwitchableUser(Z)I

    move-result p0

    const/16 v1, -0x2710

    if-eq p0, v1, :cond_1

    .line 1441
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1439
    const-string v1, "UserManagerService"

    const-string v2, "Boot user is first switchable full user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    .line 1445
    :cond_1
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    const-string v1, "No switchable full user found"

    invoke-direct {p0, v1, v0}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final getBootUserUnchecked()I
    .locals 4

    .line 1400
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 1402
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v1, :cond_0

    .line 1403
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1404
    const-string v1, "UserManagerService"

    const-string v2, "Using provided boot user: %d"

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1405
    iget p0, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1407
    :cond_0
    const-string v1, "UserManagerService"

    const-string v2, "Provided boot user cannot be switched to: %d"

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    .line 1408
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1407
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1411
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1414
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a5

    .line 1415
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1422
    const-string v1, "UserManagerService"

    const-string v2, "Unknown HSUM boot strategy: %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1423
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousOrFirstSwitchableUser()I

    move-result p0

    return p0

    .line 1420
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getBootUserBasedOnProvisioning()I

    move-result p0

    return p0

    .line 1418
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousOrFirstSwitchableUser()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0

    .line 1411
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCommunalProfileId()I
    .locals 1

    .line 1515
    const-string v0, "get communal profile user id"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCommunalProfileIdUnchecked()I

    move-result p0

    return p0
.end method

.method public final getCommunalProfileIdUnchecked()I
    .locals 6

    .line 1521
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1522
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1524
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1525
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCommunalProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1526
    iget p0, v3, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1529
    :cond_1
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getContextResources()Landroid/content/res/Resources;
    .locals 0

    .line 1193
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final getCreationTime()J
    .locals 4

    .line 6176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0xdc46c32800L

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 3

    .line 1714
    const-string v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1715
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1717
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1718
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1719
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1721
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1723
    :cond_0
    :try_start_2
    monitor-exit v2

    goto :goto_1

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 1726
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1727
    throw p0
.end method

.method public final getCrossProfileIntentFilterAccessControl(I)I
    .locals 0

    .line 3204
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3205
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCrossProfileIntentFilterAccessControl(II)I
    .locals 0

    .line 3288
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getCrossProfileIntentFilterAccessControl(I)I

    move-result p1

    .line 3289
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getCrossProfileIntentFilterAccessControl(I)I

    move-result p0

    .line 3290
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getCurrentAndTargetUserIds()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2692
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2694
    const-string p0, "UserManagerService"

    const-string v0, "getCurrentAndTargetUserId() called too early, ActivityManagerInternal is not set yet"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    new-instance p0, Landroid/util/Pair;

    const/16 v0, -0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 2698
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentAndTargetUserIds()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUserId()I
    .locals 1

    .line 2710
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2712
    const-string p0, "UserManagerService"

    const-string v0, "getCurrentUserId() called too early, ActivityManagerInternal is not set yet"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x2710

    return p0

    .line 2716
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 2

    .line 3481
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3482
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 3483
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 3484
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1

    .line 8553
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_0

    .line 8554
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 8555
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 8557
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public final getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;
    .locals 9

    const/4 v0, 0x1

    .line 4999
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 5002
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 5003
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 5004
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v5, v4, Landroid/content/pm/UserInfo;->creationTime:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_0

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    move-object v0, v4

    move-wide v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .locals 2

    .line 3587
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3588
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3590
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3591
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3593
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    .line 3594
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFirstSwitchableUser(Z)I
    .locals 5

    .line 1471
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1472
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1474
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1475
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1476
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1477
    :cond_0
    :goto_1
    iget-object p0, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 1478
    monitor-exit v0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1481
    :cond_2
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFreeProfileBadgeLU(ILjava/lang/String;)I
    .locals 7

    .line 8481
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 8482
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 8484
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 8486
    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 8488
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8489
    iget v4, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8492
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2

    const p0, 0x7fffffff

    :cond_2
    move p1, v2

    :goto_1
    if-ge p1, p0, :cond_4

    .line 8497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public final getGuestName()Ljava/lang/String;
    .locals 1

    .line 5061
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v0, 0x104049f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGuestUsers()Ljava/util/List;
    .locals 7

    .line 6370
    const-string v0, "getGuestUsers"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 6371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6372
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6373
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 6375
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6376
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 6377
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6378
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6381
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInternalForInjectorOnly()Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 1201
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    return-object p0
.end method

.method public getMainDisplayIdAssignedToUser(I)I
    .locals 3

    .line 2763
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2764
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 2765
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2766
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the main display for ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2770
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->getMainDisplayAssignedToUser(I)I

    move-result p0

    return p0
.end method

.method public getMainUserId()I
    .locals 1

    .line 1349
    const-string v0, "get main user id"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result p0

    return p0
.end method

.method public final getMainUserIdUnchecked()I
    .locals 6

    .line 1354
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1355
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1357
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1358
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1359
    iget p0, v3, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1362
    :cond_1
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaxUsersOfTypePerParent(Ljava/lang/String;)I
    .locals 0

    .line 8451
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 8455
    :cond_0
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I

    move-result p0

    return p0
.end method

.method public getNextAvailableId()I
    .locals 5

    .line 7335
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7336
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    if-ltz v1, :cond_0

    .line 7338
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7342
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 7343
    const-string v1, "UserManagerService"

    const-string v2, "All available IDs are used. Recycling LRU ids."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7344
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7345
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 7346
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 7348
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    .line 7350
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7352
    invoke-static {}, Landroid/os/UserManager;->invalidateStaticUserProperties()V

    .line 7353
    invoke-static {}, Landroid/os/UserManager;->invalidateUserPropertiesCache()V

    if-ltz v1, :cond_3

    return v1

    .line 7355
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No user id available!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7350
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getNumberOfUsersOfType(Ljava/lang/String;)I
    .locals 7

    .line 3968
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3969
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3971
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3972
    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 3974
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3979
    :cond_1
    monitor-exit v0

    return v3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOwnerName()Ljava/lang/String;
    .locals 0

    .line 5057
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 8545
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    .line 8546
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 8548
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 5

    .line 6227
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6229
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 6231
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_1

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6232
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found pre-created user of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but it\'s not initialized yet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6234
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6233
    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 6166
    const-string v0, "getPreInstallableSystemPackages"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 6167
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 6168
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6172
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getPreviousFullUserToEnterForeground()I
    .locals 1

    .line 1487
    const-string v0, "get previous user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousFullUserToEnterForegroundUnchecked()I

    move-result p0

    return p0
.end method

.method public final getPreviousFullUserToEnterForegroundUnchecked()I
    .locals 11

    .line 1494
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    .line 1495
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1496
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, -0x2710

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    .line 1498
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1499
    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    if-eq v9, v0, :cond_0

    .line 1500
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v10, v8, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v10, :cond_0

    .line 1501
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1502
    iget-wide v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    cmp-long v10, v7, v4

    if-lez v10, :cond_0

    move-wide v4, v7

    move v3, v9

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1509
    :cond_1
    monitor-exit v1

    return v3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPreviousOrFirstSwitchableUser()I
    .locals 3

    .line 1453
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousFullUserToEnterForeground()I

    move-result v0

    .line 1454
    const-string v1, "UserManagerService"

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_0

    .line 1455
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Boot user is previous user %d"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1459
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getFirstSwitchableUser(Z)I

    move-result p0

    if-eq p0, v2, :cond_1

    .line 1462
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1461
    const-string v2, "Boot user is first switchable user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    .line 1466
    :cond_1
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    const-string v0, "No switchable users found"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 6

    .line 1334
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1338
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1339
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1340
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1343
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPrivateProfileUserId()I
    .locals 6

    .line 1367
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1368
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 1369
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1370
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1371
    iget p0, v4, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1374
    :cond_1
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProfileAccessibilityLabelResId(I)I
    .locals 1

    .line 2563
    const-string v0, "getProfileAccessibilityLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2565
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2566
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 2570
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getAccessibilityString()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getProfileIds(ILjava/lang/String;ZZ)[I
    .locals 3

    .line 1613
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1616
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1618
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1619
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;ZZ)Landroid/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1622
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1620
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1622
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1623
    throw p0
.end method

.method public getProfileIds(IZ)[I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1600
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;ZZ)[I

    move-result-object p0

    return-object p0
.end method

.method public getProfileIdsExcludingHidden(IZ)[I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1698
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;ZZ)[I

    move-result-object p0

    return-object p0
.end method

.method public final getProfileIdsLU(ILjava/lang/String;ZZ)Landroid/util/IntArray;
    .locals 6

    .line 1657
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1658
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    if-nez p1, :cond_0

    goto :goto_2

    .line 1663
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 1665
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1666
    invoke-static {p1, v3}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 1669
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 1672
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1675
    :cond_3
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 1678
    iget-object v4, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_6

    .line 1681
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->isProfileHidden(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 1684
    :cond_6
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-object v0
.end method

.method public getProfileLabelResId(I)I
    .locals 1

    .line 2550
    const-string v0, "getProfileLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2552
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2553
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 2557
    :cond_0
    iget p1, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2558
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getLabel(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 1767
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1773
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1774
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1768
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the profile parent"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProfileParentId(I)I
    .locals 1

    .line 1779
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1780
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result p0

    return p0
.end method

.method public final getProfileParentIdUnchecked(I)I
    .locals 1

    .line 1784
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1785
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1787
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1789
    :cond_0
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    .line 1790
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .locals 2

    .line 1796
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1800
    :cond_0
    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, p1, :cond_2

    const/16 p1, -0x2710

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 1804
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getProfileType(I)Ljava/lang/String;
    .locals 1

    .line 2591
    const-string v0, "getProfileType"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2592
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2593
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2595
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, ""

    :goto_0
    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 2597
    monitor-exit v0

    return-object p0

    .line 2598
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .locals 5

    .line 1580
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 1584
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    .line 1586
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1588
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    .line 1589
    :try_start_1
    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(ILjava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1592
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1590
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1592
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1593
    throw p0
.end method

.method public final getProfilesLU(ILjava/lang/String;ZZ)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    .line 1630
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;ZZ)Landroid/util/IntArray;

    move-result-object p1

    .line 1632
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1633
    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p3

    if-ge v0, p3, :cond_1

    .line 1634
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result p3

    .line 1635
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p3, p3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-nez p4, :cond_0

    .line 1638
    new-instance v1, Landroid/content/pm/UserInfo;

    invoke-direct {v1, p3}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    const/4 p3, 0x0

    .line 1639
    iput-object p3, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1640
    iput-object p3, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_1

    .line 1642
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1644
    :goto_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getRemainingCreatableProfileCount(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 4032
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public final getRemainingCreatableProfileCount(Ljava/lang/String;IZ)I
    .locals 7

    .line 4042
    const-string v0, "get the remaining number of profiles that can be added to the given user."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 4044
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 4045
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 4049
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4051
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.managed_users"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 4056
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4058
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 4059
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 4063
    :cond_2
    invoke-virtual {p0, p2, p1, v1, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;ZZ)[I

    move-result-object p2

    array-length p2, p2

    const/4 v4, 0x1

    if-lez p2, :cond_3

    if-eqz p3, :cond_3

    move p3, v4

    goto :goto_0

    :cond_3
    move p3, v1

    .line 4066
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v5

    sub-int/2addr v5, p3

    .line 4070
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v6

    sub-int/2addr v6, v5

    if-gtz v6, :cond_4

    if-eqz v2, :cond_4

    if-ne v5, v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v6

    .line 4078
    :goto_1
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    sub-int/2addr p2, p3

    sub-int/2addr v2, p2

    .line 4080
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_2
    if-gtz v4, :cond_6

    .line 4083
    monitor-exit v3

    return v1

    .line 4087
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result p2

    if-eq p2, v5, :cond_7

    .line 4088
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result p2

    .line 4089
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr p0, p3

    sub-int/2addr p2, p0

    .line 4088
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4092
    :cond_7
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v3

    return p0

    .line 4060
    :cond_8
    :goto_3
    monitor-exit v3

    return v1

    .line 4093
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_9
    :goto_5
    return v1
.end method

.method public getRemainingCreatableUserCount(Ljava/lang/String;)I
    .locals 8

    .line 3923
    const-string v0, "get the remaining number of users that can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3924
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 3925
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 3928
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3929
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v3

    .line 3933
    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7fffffff

    if-nez v4, :cond_2

    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 3935
    :cond_1
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_0
    move v4, v5

    .line 3938
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3939
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.software.managed_users"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3941
    monitor-exit v2

    return v1

    :cond_3
    const/4 v6, 0x1

    if-gtz v4, :cond_4

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    if-ne v3, v6, :cond_5

    move v3, v6

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    and-int/2addr v3, v7

    if-eqz v3, :cond_6

    move v4, v6

    :cond_6
    if-gtz v4, :cond_7

    .line 3949
    monitor-exit v2

    return v1

    .line 3954
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_8

    goto :goto_4

    .line 3956
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    sub-int v5, v0, p0

    .line 3953
    :goto_4
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 3958
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v2

    return p0

    .line 3959
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_9
    :goto_6
    return v1
.end method

.method public getSeedAccountName(I)Ljava/lang/String;
    .locals 1

    .line 7416
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 7417
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7418
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 7419
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7420
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSeedAccountOptions(I)Landroid/os/PersistableBundle;
    .locals 1

    .line 7434
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 7435
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7436
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 7437
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7438
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSeedAccountType(I)Ljava/lang/String;
    .locals 1

    .line 7425
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 7426
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7427
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 7428
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7429
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSupervisingProfileId()I
    .locals 6

    .line 1535
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1536
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1538
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1539
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSupervisingProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1540
    iget p0, v3, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1543
    :cond_1
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSystemResources()Landroid/content/res/Resources;
    .locals 0

    .line 1189
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final getUidForPackage(Ljava/lang/String;)I
    .locals 3

    .line 6936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6938
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x400000

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6943
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6944
    throw p0

    .line 6943
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .locals 1

    .line 1302
    const-string v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1304
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1305
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserBadgeColorResId(I)I
    .locals 2

    .line 2475
    const-string v0, "getUserBadgeColorResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2477
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2478
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 2479
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2483
    :cond_0
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeColor(I)I

    move-result p0

    return p0

    .line 2480
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge dark color for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeDarkColorResId(I)I
    .locals 2

    .line 2491
    const-string v0, "getUserBadgeDarkColorResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2493
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2494
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2499
    :cond_0
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getDarkThemeBadgeColor(I)I

    move-result p0

    return p0

    .line 2496
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge color for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeLabelResId(I)I
    .locals 2

    .line 2458
    const-string v0, "getUserBadgeLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2460
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2461
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 2462
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2466
    :cond_0
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2467
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeLabel(I)I

    move-result p0

    return p0

    .line 2463
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge label for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeNoBackgroundResId(I)I
    .locals 1

    .line 2526
    const-string v0, "getUserBadgeNoBackgroundResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2528
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2529
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2533
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getBadgeNoBackground()I

    move-result p0

    return p0

    .line 2530
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge (no background) for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeResId(I)I
    .locals 1

    .line 2515
    const-string v0, "getUserBadgeResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2516
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2517
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2521
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getBadgePlain()I

    move-result p0

    return p0

    .line 2518
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserCreationTime(I)J
    .locals 3

    .line 7153
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 7155
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    if-ne v0, p1, :cond_0

    .line 7157
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7160
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v0, :cond_1

    .line 7161
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 7164
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 7169
    iget-wide p0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide p0

    .line 7166
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "userId can only be the calling user or a profile associated with this user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7164
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 2

    .line 3163
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v0, :cond_0

    .line 3165
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1

    .line 3187
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3188
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;
    .locals 7

    .line 5105
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5106
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 5107
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".reservecopy"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5109
    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    new-instance v6, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/16 v4, 0x1f9

    const-string/jumbo v5, "user info"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public getUserHandle(I)I
    .locals 6

    .line 7141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7142
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 7143
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7144
    iget v5, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v5, p1, :cond_0

    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 7147
    monitor-exit v0

    return p0

    .line 7148
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 3408
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3413
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3414
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3415
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3420
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 3421
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3422
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->isSameUserOrProfileGroupOrTargetIsCommunal(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3423
    const-string p0, "get the icon of a user who is not related"

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3426
    :cond_1
    :goto_0
    iget-object p0, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez p0, :cond_2

    .line 3427
    monitor-exit v0

    return-object v2

    .line 3430
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3433
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    invoke-static {p1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3436
    const-string p1, "UserManagerService"

    const-string v0, "Couldn\'t find icon file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 3416
    :cond_3
    :goto_1
    :try_start_2
    const-string p0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserIcon: unknown user #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    monitor-exit v0

    return-object v2

    .line 3430
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 3409
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserIconBadgeResId(I)I
    .locals 1

    .line 2504
    const-string v0, "getUserIconBadgeResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2505
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2506
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2510
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getIconBadge()I

    move-result p0

    return p0

    .line 2507
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested icon badge for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserIds()[I
    .locals 1

    .line 4356
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4357
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4358
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserIdsIncludingPreCreated()[I
    .locals 1

    .line 4389
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4390
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4391
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 2367
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2368
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2369
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2370
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .locals 3

    .line 3152
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3154
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUserInfo: unknown user #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    .line 3158
    iget-object p0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 3176
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3177
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p0, :cond_0

    .line 3178
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    .line 3179
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;
    .locals 0

    .line 8598
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    return-object p0
.end method

.method public final getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;
    .locals 7

    .line 4557
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".backup"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4558
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 4559
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".reservecopy"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4561
    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    new-instance v6, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/16 v4, 0x1f9

    const-string/jumbo v5, "user list"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public getUserLogoutability(I)I
    .locals 0

    .line 3025
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "aconfig flag android.multiuser.logout_user_api not enabled"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .line 2788
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2789
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 2790
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2792
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get user name"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2795
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2796
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2797
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2798
    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 2799
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2801
    :cond_2
    const-string p0, ""

    monitor-exit v1

    return-object p0

    .line 2802
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;
    .locals 3

    .line 2426
    const-string v0, "getUserProperties"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2427
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2430
    :goto_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    .line 2431
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryUsersPermission()Z

    move-result v1

    .line 2432
    new-instance v2, Landroid/content/pm/UserProperties;

    invoke-direct {v2, p0, p1, v0, v1}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;ZZZ)V

    return-object v2

    .line 2435
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot access properties for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;
    .locals 1

    .line 2440
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2441
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2443
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2445
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserRemovabilityLocked(ILjava/lang/String;)I
    .locals 2

    .line 6680
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "User %d can not be %s, "

    invoke-static {v0, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6681
    const-string v0, "UserManagerService"

    if-nez p1, :cond_0

    .line 6682
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "system user cannot be removed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    .line 6685
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v1, :cond_1

    .line 6687
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "invalid user id provided."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0

    .line 6690
    :cond_1
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->isNonRemovableMainUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6691
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "main user cannot be removed when it\'s a permanent admin user."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    .line 6695
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6696
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "it is already scheduled for removal."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method public final getUserRemovalRestrictionOptional(I)Ljava/util/Optional;
    .locals 2

    .line 6528
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6529
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 6530
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 6531
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-eqz p0, :cond_1

    .line 6532
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_1

    move p1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 6535
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    .line 6539
    const-string/jumbo p0, "no_remove_managed_profile"

    goto :goto_1

    .line 6540
    :cond_3
    const-string/jumbo p0, "no_remove_user"

    .line 6537
    :goto_1
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6530
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .locals 1

    .line 3668
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 3671
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_0
    if-ltz p1, :cond_0

    .line 3672
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v0}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v0

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .locals 4

    .line 3680
    const-string v0, "call getUserRestrictionSources."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryUsersPermission(Ljava/lang/String;)V

    .line 3683
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3684
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 3687
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3690
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3691
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v2, -0x2710

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3695
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3697
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .locals 1

    .line 3708
    const-string v0, "getUserRestrictions"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 3709
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getUserSerialNumber(I)I
    .locals 1

    .line 7117
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7118
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7119
    iget p0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, -0x1

    :goto_0
    monitor-exit v0

    return p0

    .line 7120
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserStartRealtime()J
    .locals 4

    .line 2807
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2808
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2809
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2811
    iget-wide v2, p0, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 2813
    monitor-exit v1

    return-wide v2

    .line 2814
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserStatusBarIconResId(I)I
    .locals 1

    .line 2538
    const-string v0, "getUserStatusBarIconResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2540
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2541
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2545
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getStatusBarIcon()I

    move-result p0

    return p0

    .line 2542
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested status bar icon for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserSwitchability(I)I
    .locals 7

    .line 2960
    const-string v0, "getUserSwitchability"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2964
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserSwitchability-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2969
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.telecom"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 2970
    const-string v1, "TM.isInCall"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2971
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2973
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_0

    .line 2975
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move v1, v3

    .line 2979
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2981
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_2

    .line 2979
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2980
    throw p0

    :cond_1
    move v1, v3

    .line 2983
    :goto_2
    const-string v4, "hasUserRestriction-DISALLOW_USER_SWITCH"

    invoke-virtual {v0, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2984
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    const-string/jumbo v5, "no_user_switch"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v1, v1, 0x2

    .line 2987
    :cond_2
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2990
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2991
    const-string p1, "getInt-ALLOW_USER_SWITCHING_WHEN_SYSTEM_USER_LOCKED"

    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2992
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2993
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "allow_user_switching_when_system_user_locked"

    .line 2992
    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 2995
    :goto_3
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2996
    const-string p1, "isUserUnlocked-USER_SYSTEM"

    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2997
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result p0

    .line 2998
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v2, :cond_4

    if-nez p0, :cond_4

    or-int/lit8 v1, v1, 0x4

    .line 3004
    :cond_4
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v1
.end method

.method public final getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2361
    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2362
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;
    .locals 0

    .line 2353
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeNoChecks(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2354
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserTypeNoChecks(I)Ljava/lang/String;
    .locals 1

    .line 2342
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2343
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2344
    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    .line 2345
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserUnlockRealtime()J
    .locals 3

    .line 2819
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2820
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2822
    iget-wide v1, p0, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 2824
    monitor-exit v0

    return-wide v1

    .line 2825
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    .line 1548
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsers(ZZZ)Ljava/util/List;
    .locals 1

    .line 1555
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUsersInternal(ZZZ)Ljava/util/List;
    .locals 7

    .line 1561
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1562
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1563
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 1565
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz p1, :cond_0

    .line 1566
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1567
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_2

    goto :goto_2

    .line 1571
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1573
    :cond_4
    monitor-exit v0

    return-object v1

    .line 1574
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVisibleUsers()[I
    .locals 2

    .line 2749
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2755
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2757
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2758
    throw p0

    .line 2750
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to get list of visible users"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasBadge(I)Z
    .locals 1

    .line 2451
    const-string v0, "hasBadge"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2452
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2453
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .locals 2

    .line 3714
    const-string v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 3715
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3718
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3719
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3720
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    .line 3721
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasRestrictedProfiles(I)Z
    .locals 6

    .line 3133
    const-string v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3134
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3135
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3137
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3138
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v5, :cond_0

    iget v4, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v4, p1, :cond_0

    const/4 p0, 0x1

    .line 3140
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3143
    :cond_1
    monitor-exit v0

    return v2

    .line 3144
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1

    .line 3600
    const-string v0, "hasUserRestriction"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 3602
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->userExists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3605
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .locals 5

    .line 3611
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 3614
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    move v3, v1

    .line 3615
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 3616
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 3617
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3618
    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final initDefaultGuestRestrictions()V
    .locals 3

    .line 3467
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 3468
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3469
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    const-string v2, "android.os.usertype.full.GUEST"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeDetails;

    if-nez v1, :cond_0

    .line 3471
    const-string p0, "UserManagerService"

    const-string v1, "Can\'t set default guest restrictions: type doesn\'t exist."

    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3474
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    .line 3476
    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initPrivateSpaceAutoLockTimer(I)V
    .locals 1

    .line 705
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    .line 706
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    if-eqz v0, :cond_1

    .line 707
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->getUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 708
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    return-void
.end method

.method public final initializeAndRegisterKeyguardLockedStateListener()V
    .locals 4

    .line 740
    const-string v0, "UserManagerService"

    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    .line 744
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 745
    const-string v2, "Adding keyguard locked state listener"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-virtual {v1, v2, p0}, Landroid/app/KeyguardManager;->addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 749
    const-string v1, "Error adding keyguard locked listener "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z
    .locals 1

    .line 6160
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0, p2, p3}, Lcom/android/server/pm/UserSystemPackageInstaller;->installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z

    move-result p0

    return p0
.end method

.method public final invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V
    .locals 2

    .line 5065
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    if-nez p2, :cond_1

    .line 5066
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    iget p2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 5067
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    const/4 v0, 0x1

    const v1, 0x1040708

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 5068
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    .line 5069
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5071
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    return-void
.end method

.method public isAdminUser(I)Z
    .locals 1

    .line 2924
    const-string v0, "isAdminUser"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2925
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2926
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2927
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

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

    .line 2928
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isAutoLockingPrivateSpaceOnRestartsEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final isCreationOverrideEnabled()Z
    .locals 1

    .line 4012
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "debug.user.creation_override"

    .line 4013
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public isCrossProfileIntentFilterAccessible(IIZ)Z
    .locals 0

    .line 3246
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getCrossProfileIntentFilterAccessControl(II)I

    move-result p0

    const/16 p1, 0xa

    const/4 p2, 0x0

    if-ne p1, p0, :cond_0

    .line 3253
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p1, 0x14

    if-ne p1, p0, :cond_2

    if-eqz p3, :cond_1

    .line 3263
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return p2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isCurrentUserOrRunningProfileOfCurrentUser(I)Z
    .locals 2

    .line 2726
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2732
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2733
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 2735
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isUserRunning(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isDefaultHeadlessSystemUserMode()Z
    .locals 2

    .line 4412
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4413
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return p0

    .line 4416
    :cond_0
    const-string/jumbo p0, "persist.debug.user_mode_emulation"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4417
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4418
    const-string v1, "headless"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 4419
    :cond_1
    const-string v1, "full"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    return p0

    .line 4420
    :cond_2
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4421
    const-string v1, "isDefaultHeadlessSystemUserMode(): ignoring invalid valued of property %s: %s"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "UserManagerService"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4427
    :cond_3
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return p0
.end method

.method public isDemoUser(I)Z
    .locals 3

    .line 2906
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2907
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2908
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is a demo user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2912
    :cond_1
    :goto_0
    const-string/jumbo v0, "ro.boot.arc_demo_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 2916
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2917
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2918
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    return v1

    .line 2919
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isForegroundUserAdmin()Z
    .locals 4

    .line 2776
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2777
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v1

    const/16 v2, -0x2710

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 2779
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2780
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v3

    .line 2782
    :cond_1
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isHeadlessSystemUserMode()Z
    .locals 2

    .line 4397
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4398
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4399
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 4400
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isMainUserPermanentAdmin()Z
    .locals 1

    .line 8582
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getSystemResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101cd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isNonRemovableMainUser(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 8573
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isMainUserPermanentAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPreCreated(I)Z
    .locals 1

    .line 2933
    const-string v0, "isPreCreated"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2934
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2935
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2936
    iget-boolean p0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

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

    .line 2937
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isProfile(I)Z
    .locals 1

    .line 2574
    const-string v0, "isProfile"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2575
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public final isProfileHidden(I)Z
    .locals 0

    .line 1702
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    .line 1706
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isProfileUnchecked(I)Z
    .locals 1

    .line 2579
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2580
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2581
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

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

    .line 2582
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isQuietModeEnabled(I)Z
    .locals 2

    .line 2114
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2116
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2117
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 2118
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 2119
    :try_start_2
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2122
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 2120
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_1
    move-exception p0

    .line 2118
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 2123
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public isRestricted(I)Z
    .locals 2

    .line 3094
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 3095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query isRestricted for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3097
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3098
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 3099
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSameProfileGroup(II)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1734
    :cond_0
    const-string v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryUsersPermission(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    return p0
.end method

.method public final isSameProfileGroupNoChecks(II)Z
    .locals 2

    .line 1740
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1741
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1743
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1745
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1747
    monitor-exit v0

    return v1

    .line 1749
    :cond_1
    invoke-static {p1, p0}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1750
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSameUserOrProfileGroupOrTargetIsCommunal(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2

    .line 1757
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 1761
    :cond_0
    iget p0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 p1, -0x2710

    if-eq p0, p1, :cond_1

    iget p1, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 2

    .line 3628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3631
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserRestrictionsUtils;->isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0

    .line 3629
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Non-system caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isUserForeground(I)Z
    .locals 3

    .line 2622
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2623
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 2624
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2625
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is running in the foreground"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2630
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserLimitReached()Z
    .locals 2

    .line 3891
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3892
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v1

    .line 3893
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3894
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 3895
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 3893
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isUserNameSet(I)Z
    .locals 3

    .line 7125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7126
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 7127
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v2

    if-nez v2, :cond_1

    if-ne v1, p1, :cond_0

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 7128
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7130
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get whether user name is set"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7133
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7134
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7135
    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return p0

    .line 7136
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isUserOfType(ILjava/lang/String;)Z
    .locals 1

    .line 2333
    const-string v0, "check user type"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2334
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeNoChecks(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUserRunning(I)Z
    .locals 1

    .line 2616
    const-string v0, "isUserRunning"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2617
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result p0

    return p0
.end method

.method public isUserSwitcherEnabled(I)Z
    .locals 4

    .line 3011
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3013
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getSystemResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 3011
    const-string/jumbo v2, "user_switcher_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3016
    :goto_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "no_user_switch"

    .line 3017
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 3018
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public isUserSwitcherEnabled(ZI)Z
    .locals 2

    .line 3068
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->isUserSwitcherEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_2

    .line 3072
    const-string/jumbo p1, "no_add_user"

    .line 3073
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3074
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->areThereMultipleSwitchableUsers()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z
    .locals 0

    .line 4004
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

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

.method public isUserTypeEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 3997
    const-string v0, "check if user type is enabled."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 3998
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p1, :cond_0

    .line 3999
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUserTypeSubtypeOfFull(Ljava/lang/String;)Z
    .locals 0

    .line 2404
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_0

    .line 2405
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isFull()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUserTypeSubtypeOfProfile(Ljava/lang/String;)Z
    .locals 0

    .line 2410
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_0

    .line 2411
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z
    .locals 0

    .line 2416
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_0

    .line 2417
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUserUnlocked(I)Z
    .locals 1

    .line 2610
    const-string v0, "isUserUnlocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2611
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 1

    .line 2603
    const-string v0, "isUserUnlockingOrUnlocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2605
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public isUserVisible(I)Z
    .locals 3

    .line 2635
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2636
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 2637
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2638
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is visible"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2643
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    move-result p0

    return p0
.end method

.method public isUserVisibleOnDisplay(II)Z
    .locals 0

    .line 2744
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$convertPreCreatedUserIfPossible$6(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 3

    .line 6129
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    .line 6130
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    .line 6131
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 6132
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    if-eqz p0, :cond_0

    .line 6134
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->onPreCreatedUserConversion(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$getUserFile$5(IILjava/lang/String;)V
    .locals 0

    .line 5111
    const-string p2, "UserManagerService"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5113
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5115
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$getUserListFile$4(ILjava/lang/String;)V
    .locals 0

    .line 4563
    const-string p1, "UserManagerService"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserList()V

    return-void
.end method

.method public final synthetic lambda$setQuietModeEnabledAsync$0(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 0

    .line 838
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$someUserHasAccountNoChecks$7(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 7495
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7496
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 7495
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$updateUserRestrictionsInternalLR$3(Landroid/os/Bundle;I)V
    .locals 1

    .line 3788
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionToken:Landroid/os/IBinder;

    invoke-interface {v0, p1, p0, p2}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3790
    :catch_0
    const-string p0, "UserManagerService"

    const-string p1, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logQuietModeEnabled(IZLjava/lang/String;)V
    .locals 6

    .line 2087
    const-string v0, "UserManagerService"

    const-string/jumbo v1, "requestQuietModeEnabled called by package %s, with enableQuietMode %b."

    .line 2090
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2087
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2092
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2093
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    .line 2094
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-void

    .line 2098
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    :goto_0
    sub-long v2, v0, v2

    goto :goto_1

    .line 2101
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v2, p1, Landroid/content/pm/UserInfo;->creationTime:J

    goto :goto_0

    :goto_1
    const/16 p1, 0x37

    .line 2103
    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 2104
    invoke-static {v4}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 2105
    invoke-virtual {p1, p3}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 2106
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 2107
    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 2108
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2109
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 2094
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public makeInitialized(I)V
    .locals 4

    .line 3443
    const-string v0, "makeInitialized"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3446
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v1, :cond_3

    .line 3448
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3452
    :cond_0
    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_1

    or-int/lit8 v2, v2, 0x10

    .line 3453
    iput v2, v1, Landroid/content/pm/UserInfo;->flags:I

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 3456
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 3458
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_2
    return-void

    .line 3449
    :cond_3
    :goto_1
    :try_start_1
    const-string p0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeInitialized: unknown user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    monitor-exit v0

    return-void

    .line 3456
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public markGuestForDeletion(I)Z
    .locals 7

    .line 6393
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 6394
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_remove_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6396
    const-string p0, "UserManagerService"

    const-string p1, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6400
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6403
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6404
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6405
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    .line 6406
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6409
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6410
    :try_start_3
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6411
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 6418
    :cond_2
    :try_start_4
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    const/16 v4, 0x40

    .line 6421
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    .line 6422
    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6423
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 6407
    :cond_3
    :goto_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 6425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 6409
    :goto_1
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    .line 6423
    :goto_2
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    .line 6425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6426
    throw p0
.end method

.method public final markUserForRemovalIfNecessaryLU(Landroid/content/pm/UserInfo;)V
    .locals 4

    .line 1227
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1231
    :cond_0
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1235
    :cond_1
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getSystemResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 1243
    :cond_2
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    const/4 v0, 0x1

    .line 1244
    iput-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    const/16 v0, 0x40

    .line 1245
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    return-void
.end method

.method public maybeScheduleAlarmToAutoLockPrivateSpace()V
    .locals 4

    .line 664
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 665
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    .line 668
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v2

    .line 665
    const-string/jumbo v3, "private_space_auto_lock"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    .line 669
    const-string v2, "UserManagerService"

    if-eq v0, v1, :cond_0

    .line 672
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 671
    const-string v0, "Not scheduling auto-lock on inactivity,preference is set to %d"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    .line 677
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->isQuietModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 678
    const-string v0, "Not scheduling auto-lock alarm for %d, quiet mode already enabled"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/32 v1, 0x493e0

    .line 682
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->scheduleAlarmToAutoLockPrivateSpace(IJ)V

    :cond_2
    return-void
.end method

.method public onBeforeStartUser(I)V
    .locals 5

    .line 7243
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7247
    :cond_0
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 7248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBeforeStartUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7250
    sget-object v2, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 7252
    const-string/jumbo v4, "prepareUserData"

    invoke-virtual {v1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7253
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(Landroid/content/pm/UserInfo;I)V

    .line 7254
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7255
    const-string/jumbo v0, "reconcileAppsData"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7256
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    .line 7258
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz p1, :cond_1

    .line 7261
    const-string v0, "applyUserRestrictions"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7262
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7263
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 7264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7265
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7264
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 7267
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .locals 5

    .line 7275
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7280
    :cond_0
    sget-object v1, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 7283
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 7284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareUserData-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7285
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(Landroid/content/pm/UserInfo;I)V

    .line 7286
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7288
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 7289
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManagerInternal;->markCeStoragePrepared(I)V

    .line 7291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reconcileAppsData-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7292
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, v4, v1}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    .line 7294
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final onPullAtom(ILjava/util/List;)I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x27a8

    const/4 v4, -0x1

    const/4 v6, 0x1

    if-ne v1, v3, :cond_3

    .line 6273
    invoke-virtual {v0, v6, v6, v6}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v1

    .line 6274
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_2

    .line 6277
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 6278
    iget-object v9, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 6279
    invoke-static {v9}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_0

    .line 6283
    iget-object v9, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :goto_1
    move-object v13, v9

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 6286
    :goto_2
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v9

    .line 6287
    :try_start_0
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    .line 6288
    invoke-virtual {v10, v11, v4}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    move/from16 v19, v6

    goto :goto_3

    :cond_1
    const/16 v19, 0x0

    .line 6289
    :goto_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6291
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    iget v14, v8, Landroid/content/pm/UserInfo;->flags:I

    iget-wide v9, v8, Landroid/content/pm/UserInfo;->creationTime:J

    const/16 v20, 0x0

    iget-wide v4, v8, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move-wide v15, v9

    const/16 v10, 0x27a8

    move-wide/from16 v17, v4

    invoke-static/range {v10 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIILjava/lang/String;IJJZ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    const/4 v4, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6289
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const/16 v20, 0x0

    goto :goto_5

    :cond_3
    const/16 v20, 0x0

    const/16 v3, 0x27b0

    if-ne v1, v3, :cond_6

    .line 6303
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-le v1, v6, :cond_5

    .line 6305
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    const/4 v4, -0x1

    .line 6307
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->isUserSwitcherEnabled(I)Z

    move-result v5

    .line 6308
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "no_add_user"

    .line 6309
    invoke-virtual {v0, v7, v4}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v6, v20

    .line 6304
    :goto_4
    invoke-static {v3, v1, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    return v20

    .line 6314
    :cond_6
    const-string v0, "UserManagerService"

    const-string v2, "Unexpected atom tag: %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 7508
    new-instance v0, Lcom/android/server/pm/UserManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/pm/UserManagerServiceShellCommand;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserSystemPackageInstaller;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 7510
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserLoggedIn(I)V
    .locals 5

    .line 7315
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7316
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7321
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 7323
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 7325
    :cond_1
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v1, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 7326
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    return-void

    .line 7317
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "userForeground: unknown user #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 10

    .line 5639
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v0, :cond_0

    .line 5640
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5642
    :goto_1
    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 5644
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot pre-create user of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pre-creating user of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v6, -0x2710

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    .line 5649
    :try_start_0
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 5653
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 3807
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3811
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3812
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3814
    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1

    .line 6322
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 6323
    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6324
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6325
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->addUserDataLU(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6326
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6327
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    return-object v0

    :catchall_0
    move-exception p0

    .line 6326
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 7

    .line 5346
    const-string v0, "UserManagerService"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v1

    const/4 v2, 0x0

    .line 5349
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 5351
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User info not found, returning null, user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5361
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 5354
    :cond_0
    :try_start_2
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5361
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 5357
    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading user info, user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5358
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 5359
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5361
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :goto_1
    if-eqz v1, :cond_1

    .line 5346
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
.end method

.method public readUserLP(ILjava/io/InputStream;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 5397
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 5399
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    .line 5405
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1
    const/4 v7, -0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, -0x2710

    if-ne v3, v4, :cond_17

    .line 5409
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "user"

    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 5410
    const-string v3, "id"

    invoke-interface {v1, v6, v3, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 5412
    const-string v0, "UserManagerService"

    const-string v1, "User id does not match the file name"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 5415
    :cond_2
    const-string/jumbo v3, "serialNumber"

    invoke-interface {v1, v6, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 5416
    const-string v12, "flags"

    invoke-interface {v1, v6, v12, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 5417
    const-string/jumbo v13, "type"

    invoke-interface {v1, v6, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 5418
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_3
    move-object v13, v6

    .line 5419
    :goto_1
    const-string v14, "icon"

    invoke-interface {v1, v6, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5420
    const-string v15, "created"

    invoke-interface {v1, v6, v15, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v15

    .line 5421
    const-string v7, "lastLoggedIn"

    invoke-interface {v1, v6, v7, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v17

    .line 5422
    const-string v7, "lastLoggedInFingerprint"

    invoke-interface {v1, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5424
    const-string v4, "lastEnteredForeground"

    .line 5425
    invoke-interface {v1, v6, v4, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v20

    .line 5426
    const-string/jumbo v4, "profileGroupId"

    invoke-interface {v1, v6, v4, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 5428
    const-string/jumbo v9, "profileBadge"

    invoke-interface {v1, v6, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 5429
    const-string/jumbo v10, "restrictedProfileParentId"

    invoke-interface {v1, v6, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 5431
    const-string/jumbo v10, "partial"

    invoke-interface {v1, v6, v10, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 5432
    const-string/jumbo v5, "preCreated"

    invoke-interface {v1, v6, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 5433
    const-string v2, "convertedFromPreCreated"

    invoke-interface {v1, v6, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    move/from16 v25, v2

    .line 5434
    const-string v2, "guestToRemove"

    invoke-interface {v1, v6, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 5436
    const-string/jumbo v8, "seedAccountName"

    invoke-interface {v1, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v27, v2

    .line 5437
    const-string/jumbo v2, "seedAccountType"

    invoke-interface {v1, v6, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v8, :cond_5

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/16 v26, 0x0

    :goto_2
    move-object/from16 v28, v6

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v26, 0x1

    goto :goto_2

    .line 5442
    :goto_4
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    move-object/from16 v38, v2

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    const-wide/16 v22, 0x0

    const/16 v37, 0x1

    .line 5443
    :goto_5
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move/from16 v39, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 5444
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v6, :cond_16

    const/4 v3, 0x3

    :cond_6
    if-eq v2, v3, :cond_15

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    goto/16 :goto_7

    .line 5448
    :cond_7
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5449
    const-string/jumbo v3, "name"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5450
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_15

    .line 5452
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v2

    goto/16 :goto_7

    .line 5454
    :cond_8
    const-string/jumbo v3, "restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5455
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v33, v2

    goto/16 :goto_7

    .line 5456
    :cond_9
    const-string v3, "device_policy_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5457
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v34, v2

    goto/16 :goto_7

    .line 5458
    :cond_a
    const-string v3, "device_policy_local_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v2, 0xa

    move/from16 v3, p3

    if-ge v3, v2, :cond_b

    .line 5463
    const-string v2, "device_policy_local_restrictions"

    .line 5464
    invoke-static {v1, v2}, Lcom/android/server/pm/RestrictionsSet;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v2

    .line 5466
    invoke-virtual {v2}, Lcom/android/server/pm/RestrictionsSet;->mergeAll()Landroid/os/Bundle;

    move-result-object v2

    :goto_6
    move-object/from16 v35, v2

    goto/16 :goto_7

    .line 5468
    :cond_b
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_6

    .line 5470
    :cond_c
    const-string v3, "device_policy_global_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5471
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v36, v2

    goto/16 :goto_7

    .line 5472
    :cond_d
    const-string v3, "guestRestrictions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5473
    :cond_e
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x3

    if-eq v2, v3, :cond_15

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 5476
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5477
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v2

    .line 5478
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 5479
    invoke-static {v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    .line 5480
    monitor-exit v2

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5485
    :cond_f
    const-string v3, "account"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5486
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_15

    .line 5488
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    goto :goto_7

    .line 5490
    :cond_10
    const-string/jumbo v3, "seedAccountOptions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 5491
    invoke-static {v1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    move-object/from16 v31, v2

    const/16 v26, 0x1

    goto :goto_7

    .line 5493
    :cond_11
    const-string/jumbo v3, "userProperties"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5496
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    if-nez v2, :cond_12

    .line 5498
    const-string v0, "UserManagerService"

    const-string v1, "User has properties but no user type!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v28

    .line 5502
    :cond_12
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserPropertiesReference()Landroid/content/pm/UserProperties;

    move-result-object v2

    .line 5503
    new-instance v3, Landroid/content/pm/UserProperties;

    invoke-direct {v3, v1, v2}, Landroid/content/pm/UserProperties;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/content/pm/UserProperties;)V

    move-object/from16 v32, v3

    goto :goto_7

    .line 5504
    :cond_13
    const-string v3, "lastRequestQuietModeEnabledCall"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 5505
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_15

    .line 5507
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide/from16 v22, v2

    goto :goto_7

    .line 5509
    :cond_14
    const-string v3, "ignorePrepareStorageErrors"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5510
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_15

    .line 5512
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move/from16 v37, v2

    :cond_15
    :goto_7
    move/from16 v3, v39

    goto/16 :goto_5

    :cond_16
    move v0, v4

    move v1, v5

    move v2, v9

    move v5, v12

    move-object v6, v13

    move-object v4, v14

    move-wide v13, v15

    move-wide/from16 v42, v20

    move-wide/from16 v40, v22

    move/from16 v20, v26

    move-object/from16 v3, v29

    move-object/from16 v9, v30

    move-object/from16 v19, v31

    move-object/from16 v16, v32

    move-object/from16 p3, v34

    move-object/from16 v28, v35

    move/from16 v26, v10

    move v15, v11

    move-wide/from16 v11, v17

    move-object/from16 v17, v33

    move-object/from16 v18, v38

    move-object v10, v8

    move-object v8, v7

    move/from16 v7, v39

    goto :goto_8

    :cond_17
    move-object/from16 v28, v6

    move/from16 v7, p1

    move v0, v11

    move v15, v0

    move-object/from16 p3, v28

    move-object/from16 v3, p3

    move-object v4, v3

    move-object v6, v4

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v36, v19

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v37, 0x1

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    .line 5519
    :goto_8
    new-instance v21, Landroid/content/pm/UserInfo;

    move-object/from16 v22, v9

    move v9, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v22

    move/from16 v24, v0

    move/from16 v44, v2

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v15, v25

    move/from16 v10, v26

    move/from16 v0, v27

    move-object/from16 v45, v28

    move-object/from16 v46, v36

    move/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 5520
    iput v7, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 5521
    iput-wide v13, v1, Landroid/content/pm/UserInfo;->creationTime:J

    .line 5522
    iput-wide v11, v1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 5523
    iput-object v8, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 5524
    iput-boolean v10, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 5525
    iput-boolean v9, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 5526
    iput-boolean v15, v1, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 5527
    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    move/from16 v4, v24

    .line 5528
    iput v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v9, v44

    .line 5529
    iput v9, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    move/from16 v11, v23

    .line 5530
    iput v11, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 5533
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 5534
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v1, v21

    .line 5535
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    move-object/from16 v8, v22

    .line 5536
    iput-object v8, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    move-object/from16 v1, v18

    .line 5537
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    move/from16 v1, v20

    .line 5538
    iput-boolean v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    move-object/from16 v1, v19

    .line 5539
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    move-object/from16 v1, v16

    .line 5540
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    move-wide/from16 v3, v40

    .line 5541
    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    move-wide/from16 v3, v42

    .line 5542
    iput-wide v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    if-eqz v37, :cond_18

    .line 5544
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$UserData;->setIgnorePrepareStorageErrors()V

    :cond_18
    move-object/from16 v1, p0

    .line 5547
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v17, :cond_19

    .line 5549
    :try_start_1
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    move-object/from16 v5, v17

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    :cond_19
    move-object/from16 v4, v45

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_c

    :goto_9
    if-eqz v4, :cond_1b

    .line 5552
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v5, v2, v4}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    if-eqz p3, :cond_1a

    .line 5554
    const-string v2, "UserManagerService"

    const-string v4, "Seeing both legacy and current local restrictions in xml"

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_a
    move-object/from16 v2, v46

    goto :goto_b

    :cond_1b
    if-eqz p3, :cond_1a

    .line 5557
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    move-object/from16 v5, p3

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_a

    :goto_b
    if-eqz v2, :cond_1c

    .line 5560
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 5563
    :cond_1c
    monitor-exit v3

    return-object v0

    :goto_c
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final readUserListLP()V
    .locals 12

    .line 4573
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 4576
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 4578
    :try_start_1
    const-string v1, "UserManagerService"

    const-string/jumbo v3, "userlist.xml not found, fallback to single user"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4650
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception v1

    goto/16 :goto_7

    .line 4583
    :cond_0
    :try_start_2
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 4585
    :goto_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    if-eq v4, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eq v4, v5, :cond_2

    .line 4591
    const-string v1, "UserManagerService"

    const-string v3, "Unable to read user list"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4592
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4650
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :cond_2
    const/4 v4, -0x1

    .line 4596
    :try_start_3
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 4597
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "users"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4598
    const-string/jumbo v4, "nextSerialNumber"

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 4599
    invoke-interface {v3, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 4600
    const-string/jumbo v4, "version"

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 4601
    invoke-interface {v3, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 4602
    const-string/jumbo v4, "userTypeConfigVersion"

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 4603
    invoke-interface {v3, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    :cond_3
    const/4 v4, 0x0

    .line 4606
    :cond_4
    :goto_1
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v6, :cond_a

    if-ne v7, v5, :cond_4

    .line 4608
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4609
    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4610
    const-string v7, "id"

    invoke-interface {v3, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/UserManagerService;->readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 4614
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4615
    :try_start_4
    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService;->addUserDataLU(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4616
    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v9, :cond_5

    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    if-gt v9, v10, :cond_6

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    .line 4618
    :cond_5
    :goto_2
    iget-object v9, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 4620
    :cond_6
    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService;->markUserForRemovalIfNecessaryLU(Landroid/content/pm/UserInfo;)V

    .line 4621
    monitor-exit v8

    goto :goto_1

    :goto_3
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    .line 4623
    :cond_7
    const-string v8, "guestRestrictions"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4625
    :cond_8
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    if-eq v4, v6, :cond_9

    const/4 v7, 0x3

    if-eq v4, v7, :cond_9

    if-ne v4, v5, :cond_8

    .line 4628
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "restrictions"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4629
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4630
    :try_start_6
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 4631
    invoke-static {v3, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    .line 4632
    monitor-exit v4

    goto :goto_4

    :catchall_2
    move-exception v1

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1

    :cond_9
    :goto_4
    move v4, v6

    goto :goto_1

    .line 4641
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 4642
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP()V

    .line 4643
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->updateUsersWithFeatureFlags(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4650
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 4652
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4653
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 4654
    const-string v0, "UserManagerService"

    const-string v2, "mUsers is empty, fallback to single user"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_6

    .line 4657
    :cond_b
    :goto_5
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :catch_1
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 4646
    :goto_7
    :try_start_9
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 4647
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4650
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_8
    if-eqz v0, :cond_c

    .line 4573
    :try_start_a
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_9
    throw p0
.end method

.method public reconcileUsers(Ljava/lang/String;)V
    .locals 3

    .line 7303
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v1, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final registerStatsCallbacks()V
    .locals 5

    .line 6257
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 6258
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/16 v3, 0x27a8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 6263
    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/16 p0, 0x27b0

    invoke-virtual {v0, p0, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public removeUser(I)Z
    .locals 5

    .line 6438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUser u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6439
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 6441
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestrictionOptional(I)Ljava/util/Optional;

    move-result-object v0

    .line 6442
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 6443
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 6444
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6445
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot remove user. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is enabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 6448
    :cond_0
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mCurrentBootPhase:I

    const/16 v2, 0x226

    if-ge v0, v2, :cond_1

    .line 6449
    const-string p0, "Cannot remove user, removeUser is called too early during boot. ActivityManager is not ready yet."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 6453
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public final removeUserDataLU(I)V
    .locals 0

    .line 7188
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    .line 7189
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .locals 1

    .line 6512
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 6513
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public removeUserInfo(I)V
    .locals 1

    .line 6334
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6335
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserDataLU(I)V

    .line 6336
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeUserInfoFlags(Landroid/content/pm/UserInfo;I)V
    .locals 0

    .line 2233
    iget p0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr p2, p0

    if-lez p2, :cond_0

    xor-int/2addr p0, p2

    .line 2235
    iput p0, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 2236
    invoke-static {p2}, Landroid/os/UserManager;->invalidateOnUserInfoFlagChange(I)V

    :cond_0
    return-void
.end method

.method public final removeUserState(I)V
    .locals 4

    .line 6758
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user state of user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6762
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 6767
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserStorageKeys(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6770
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying storage keys for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed, continuing anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6775
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 6778
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    .line 6782
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6783
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserDataLU(I)V

    .line 6784
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 6785
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->onUserRemoved(I)V

    .line 6786
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 6787
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v1

    .line 6788
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->delete(I)V

    .line 6789
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6790
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6791
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 6792
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 6793
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 6795
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6796
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 6798
    :cond_0
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6800
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6801
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 6802
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6804
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/ResilientAtomicFile;->delete()V

    .line 6805
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    return-void

    :catchall_1
    move-exception p0

    .line 6802
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 6798
    :goto_2
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    .line 6789
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 6786
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0
.end method

.method public final removeUserUnchecked(I)Z
    .locals 8

    .line 6544
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6547
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6548
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6549
    :try_start_2
    const-string/jumbo v4, "removed"

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLocked(ILjava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 6551
    invoke-static {v4}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6621
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_2

    .line 6553
    :cond_0
    :try_start_4
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 6554
    const-string v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6555
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 6556
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6560
    :try_start_5
    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z

    .line 6562
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    .line 6566
    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/16 v6, 0x40

    invoke-virtual {p0, v3, v6}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    .line 6567
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6568
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6570
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v3, 0x6

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 6571
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v6, v3, Landroid/content/pm/UserInfo;->creationTime:J

    const/16 v3, 0x9

    invoke-virtual {v2, p1, v3, v6, v7}, Lcom/android/server/pm/UserJourneyLogger;->startSessionForDelayedJourney(IIJ)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 6575
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v2

    .line 6577
    :try_start_8
    const-string v3, "UserManagerService"

    const-string v6, "Unable to notify AppOpsService of removing user."

    invoke-static {v3, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6580
    :goto_0
    iget-object v2, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v3, v6, :cond_1

    .line 6581
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6582
    iget-object v2, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(IILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_1
    const/4 v2, 0x0

    .line 6589
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v6, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-interface {v3, p1, v6}, Landroid/app/IActivityManager;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    .line 6621
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catch_1
    move-exception p0

    .line 6616
    :try_start_a
    const-string p1, "UserManagerService"

    const-string v3, "Failed to stop user during removal."

    invoke-static {p1, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 6621
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 6556
    :goto_2
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw p0

    .line 6568
    :goto_3
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 6621
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6622
    throw p0
.end method

.method public removeUserWhenPossible(IZ)I
    .locals 4

    .line 6648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUserWhenPossible u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6649
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 6652
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestrictionOptional(I)Ljava/util/Optional;

    move-result-object p2

    .line 6653
    invoke-virtual {p2}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6654
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 6655
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6656
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot remove user. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6658
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is enabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6656
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 6662
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to immediately remove user "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6663
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 6667
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 6666
    const-string v0, "Unable to immediately remove user %d. Now trying to set it ephemeral."

    invoke-static {v0, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6668
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setUserEphemeralUnchecked(I)I

    move-result p0

    return p0
.end method

.method public final removeUserWithProfilesUnchecked(I)Z
    .locals 6

    .line 6460
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6461
    :try_start_0
    const-string/jumbo v1, "removed"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLocked(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 6463
    invoke-static {v1}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 6465
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 6466
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6467
    :cond_1
    invoke-virtual {p0, p1, v2, v3, v3}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;ZZ)Landroid/util/IntArray;

    move-result-object v2

    .line 6469
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    .line 6472
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentAndTargetUserIds()Landroid/util/Pair;

    move-result-object v0

    .line 6473
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 6474
    const-string p0, "UserManagerService"

    const-string p1, "Current user cannot be removed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 6477
    :cond_2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 6478
    const-string p0, "UserManagerService"

    const-string p1, "Target user of an ongoing user switch cannot be removed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 6481
    :cond_3
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_6

    .line 6482
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_4

    goto :goto_2

    .line 6487
    :cond_4
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removing profile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " associated with user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6489
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 6494
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to immediately remove profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "associated with user "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". User is set as ephemeral and will be removed on user switch or reboot."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6497
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6498
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 6499
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 6501
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6502
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6507
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p0

    return p0

    .line 6469
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z
    .locals 9

    .line 1858
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1861
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v8, :cond_5

    if-nez v0, :cond_4

    goto :goto_3

    .line 1870
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid flags: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1874
    :cond_5
    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eqz p4, :cond_6

    move v7, v1

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move v6, p3

    goto :goto_5

    :cond_6
    move v7, v2

    goto :goto_4

    .line 1873
    :goto_5
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IIZZ)V

    if-eqz v0, :cond_8

    .line 1877
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1876
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_6

    .line 1880
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "SystemUI is not allowed to set QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1884
    :cond_8
    :goto_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    if-eqz v8, :cond_b

    .line 1889
    :try_start_0
    iget-object p3, v3, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    :try_start_1
    invoke-virtual {v3, v6}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1891
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_a

    .line 1896
    :try_start_2
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_7

    .line 1897
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid flags: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ". Can\'t skip credential check for the user"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto/16 :goto_8

    .line 1893
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid user. Can\'t find user details for userId "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v0

    move-object p2, v0

    .line 1891
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p2

    :cond_b
    :goto_7
    if-eqz p2, :cond_c

    .line 1902
    invoke-virtual {v3, v6, v1, p4, v4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1964
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 1907
    :cond_c
    :try_start_5
    invoke-virtual {v3, v6}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 1909
    invoke-virtual {p2}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_10

    if-eqz v0, :cond_d

    .line 1964
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 1914
    :cond_d
    :try_start_6
    iget-object p2, v3, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/KeyguardManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    .line 1915
    invoke-virtual {v3, v6}, Lcom/android/server/pm/UserManagerService;->getProfileParentId(I)I

    move-result p3

    if-eqz p2, :cond_e

    .line 1916
    invoke-virtual {p2, p3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p5

    if-eqz p5, :cond_e

    .line 1917
    invoke-virtual {v3, v6, p4, v4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1964
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_e
    if-eqz p2, :cond_f

    .line 1919
    :try_start_7
    invoke-virtual {p2, p3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p2

    if-nez p2, :cond_f

    .line 1920
    iget-object p2, v3, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 1923
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p5, "user_setup_complete"

    invoke-static {p2, p5, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v1, :cond_f

    .line 1927
    invoke-static {v1}, Lcom/android/internal/app/SetScreenLockDialogActivity;->createBaseIntent(I)Landroid/content/Intent;

    move-result-object p2

    .line 1928
    const-string/jumbo p4, "origin_user_id"

    invoke-virtual {p2, p4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1929
    iget-object p4, v3, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 1930
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 1929
    invoke-virtual {p4, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1964
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 1933
    :cond_f
    :try_start_8
    const-string p2, "UserManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Allowing profile unlock even when device credentials are not set for user "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_10
    iget-object p2, v3, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1939
    invoke-virtual {p2, v6}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 1941
    iget-object p3, v3, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class p5, Landroid/app/KeyguardManager;

    invoke-virtual {p3, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    .line 1946
    iget-object p5, v3, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p5, v6}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p3

    if-eqz p3, :cond_11

    if-eqz v0, :cond_12

    .line 1948
    :cond_11
    iget-object p3, v3, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3, v6}, Lcom/android/internal/widget/LockPatternUtils;->tryUnlockWithCachedUnifiedChallenge(I)Z

    :cond_12
    if-nez v8, :cond_15

    .line 1951
    iget-object p3, v3, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1952
    invoke-virtual {p3, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p3

    if-eqz p3, :cond_15

    if-eqz p2, :cond_13

    .line 1953
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez p2, :cond_15

    :cond_13
    if-eqz v0, :cond_14

    .line 1964
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 1958
    :cond_14
    :try_start_9
    invoke-virtual {v3, v6, p4, v4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1964
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 1961
    :cond_15
    :try_start_a
    invoke-virtual {v3, v6, v2, p4, v4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1964
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_8
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1965
    throw p2
.end method

.method public revokeUserAdmin(I)V
    .locals 10

    .line 2274
    const-string/jumbo v0, "revoke admin privileges"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->checkAdminStatusChangeAllowed(I)V

    .line 2279
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2281
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2282
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2283
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2286
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 2288
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v6

    const-string v8, ""

    const/4 v9, -0x1

    const/16 v5, 0x8

    move v7, p1

    .line 2286
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIILjava/lang/String;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2289
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 2290
    :cond_0
    :try_start_3
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2292
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x6

    invoke-virtual {p1, p0, v0, v1, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2294
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 2296
    :cond_1
    :try_start_5
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v4, v4, 0x2

    iput v4, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 2297
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2298
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2299
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2300
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, -0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    return-void

    .line 2298
    :goto_0
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    .line 2299
    :goto_1
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public final scanNextAvailableIdLocked()I
    .locals 2

    const/16 v0, 0xa

    :goto_0
    const/16 v1, 0x53e1

    if-ge v0, v1, :cond_1

    .line 7363
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public scheduleAlarmToAutoLockPrivateSpace(IJ)V
    .locals 10

    .line 689
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    .line 691
    const-string p0, "UserManagerService"

    const-string p1, "AlarmManager not available, cannot schedule auto-lock alarm"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 694
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->initPrivateSpaceAutoLockTimer(I)V

    .line 695
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v3, v2, p2

    .line 696
    sget-wide v5, Lcom/android/server/pm/UserManagerService;->PRIVATE_SPACE_AUTO_LOCK_INACTIVITY_ALARM_WINDOW_MS:J

    new-instance v8, Landroid/os/HandlerExecutor;

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    const/4 v2, 0x2

    const-string v7, "PrivateSpaceAutoLockTimer"

    invoke-virtual/range {v1 .. v9}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public final scheduleWriteUser(I)V
    .locals 3

    .line 5096
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5097
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5098
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5101
    :cond_0
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    return-void
.end method

.method public final scheduleWriteUserList()V
    .locals 3

    .line 5082
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5083
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5084
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5087
    :cond_0
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    return-void
.end method

.method public final sendManagedProfileRemovedBroadcast(II)V
    .locals 3

    .line 6857
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6858
    const-string v1, "android.intent.extra.USER"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6859
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6860
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 6861
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    const/high16 p2, 0x50000000

    .line 6863
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6865
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendProfileAddedBroadcast(II)V
    .locals 2

    .line 6819
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROFILE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->sendProfileBroadcast(Landroid/content/Intent;II)V

    return-void
.end method

.method public final sendProfileBroadcast(Landroid/content/Intent;II)V
    .locals 1

    .line 6849
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 6850
    const-string v0, "android.intent.extra.USER"

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p3, 0x50000000

    .line 6851
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6853
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendProfileRemovedBroadcast(IILjava/lang/String;)V
    .locals 1

    .line 6839
    const-string v0, "android.os.usertype.profile.MANAGED"

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6840
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->sendManagedProfileRemovedBroadcast(II)V

    .line 6842
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.PROFILE_REMOVED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/UserManagerService;->sendProfileBroadcast(Landroid/content/Intent;II)V

    return-void
.end method

.method public final sendUserInfoChangedBroadcast(I)V
    .locals 4

    .line 3393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3394
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    .line 3395
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3396
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3399
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_INFO_CHANGED_BACKGROUND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 3401
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3402
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_USERS"

    invoke-virtual {p0, v0, v3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3

    .line 6903
    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6905
    invoke-static {p1, v0, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 6910
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 6913
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_2

    .line 6914
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6918
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 6915
    :cond_2
    :goto_0
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)Z

    move-result v0

    .line 6922
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    return-void

    .line 6929
    :cond_3
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6930
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 6931
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6932
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 6922
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 6907
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid package name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBootUser(I)V
    .locals 4

    .line 1380
    const-string v0, "Set boot user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1383
    :try_start_0
    const-string v1, "UserManagerService"

    const-string/jumbo v2, "setBootUser %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1384
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    .line 1385
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p0

    .line 1385
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    .locals 20

    move-object/from16 v0, p0

    if-eqz p2, :cond_4

    .line 6052
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 6056
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v1

    .line 6057
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 6062
    :cond_1
    const-string/jumbo v1, "no_sharing_into_profile"

    const/4 v2, 0x0

    move-object/from16 v3, p3

    .line 6063
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 6066
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 6069
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    if-eqz v1, :cond_2

    .line 6070
    iget-boolean v5, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    if-eqz v5, :cond_2

    goto :goto_1

    .line 6073
    :cond_2
    iget v5, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->direction:I

    if-nez v5, :cond_3

    .line 6074
    iget-object v6, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 6075
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    iget v12, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    move/from16 v10, p1

    move/from16 v11, p4

    .line 6074
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    goto :goto_1

    .line 6078
    :cond_3
    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v14

    iget-object v15, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 6079
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    iget v4, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    move/from16 v18, p1

    move/from16 v17, p4

    move/from16 v19, v4

    .line 6078
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 4

    .line 3489
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3490
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    move-result-object v0

    .line 3491
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 3492
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3493
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3495
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3496
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 3497
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 3498
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3499
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3500
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3501
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3502
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 3499
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 3495
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .locals 6

    .line 3533
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3534
    :try_start_0
    iget-object p4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p4}, Lcom/android/server/pm/RestrictionsSet;->getUserIds()Landroid/util/IntArray;

    move-result-object p4

    .line 3536
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0}, Lcom/android/server/pm/RestrictionsSet;->removeAllRestrictions()V

    .line 3537
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0}, Lcom/android/server/pm/RestrictionsSet;->removeAllRestrictions()V

    .line 3539
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3541
    invoke-virtual {p3}, Lcom/android/server/pm/RestrictionsSet;->getUserIds()Landroid/util/IntArray;

    move-result-object p2

    const/4 v0, 0x0

    move v2, v0

    .line 3542
    :goto_0
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3543
    invoke-virtual {p2, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 3544
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 3545
    invoke-virtual {p3, v3}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 3544
    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3546
    invoke-virtual {p4, v3}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 3549
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    .line 3550
    :goto_1
    invoke-virtual {p4}, Landroid/util/IntArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 3551
    invoke-virtual {p4, v0}, Landroid/util/IntArray;->get(I)I

    move-result p2

    if-ne p2, v1, :cond_1

    goto :goto_2

    .line 3554
    :cond_1
    invoke-virtual {p4, v0}, Landroid/util/IntArray;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3556
    :cond_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setLastEnteredForegroundTimeToNow(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 2

    .line 7500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    .line 7501
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    return-void
.end method

.method public setOrUpdateAutoLockPreferenceForPrivateProfile(I)V
    .locals 7

    .line 757
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    .line 758
    const-string v2, "UserManagerService"

    if-ne v0, v1, :cond_0

    .line 759
    const-string p0, "Auto-lock preference updated but private space user not found"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 765
    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    if-nez v1, :cond_2

    .line 766
    const-string v1, "Registering device inactivity broadcast receivers"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 771
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 775
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    goto :goto_0

    .line 779
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_2

    .line 780
    const-string v0, "Removing device inactivity broadcast receivers"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    .line 782
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 783
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 789
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initializeAndRegisterKeyguardLockedStateListener()V

    return-void

    .line 793
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    .line 794
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 795
    const-string v0, "Removing keyguard locked state listener"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-virtual {p1, p0}, Landroid/app/KeyguardManager;->removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 798
    const-string p1, "Error adding keyguard locked state listener "

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 5

    .line 2023
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2024
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2025
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 2027
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2030
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-ne v3, p2, :cond_0

    .line 2031
    const-string p0, "UserManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Quiet mode is already "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 2034
    :cond_0
    invoke-static {}, Landroid/os/UserManager;->invalidateQuietModeEnabledCache()V

    .line 2035
    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 2036
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 2037
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2038
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2039
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2040
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_1

    .line 2044
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->stopUserForQuietMode(I)V

    .line 2045
    const-class p3, Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    .line 2046
    invoke-virtual {p3, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_2

    :catch_0
    move-exception p3

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 2049
    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2051
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Landroid/app/IActivityManager;->startProfileWithListener(ILandroid/os/IProgressListener;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2055
    :goto_1
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2058
    :goto_2
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/UserManagerService;->logQuietModeEnabled(IZLjava/lang/String;)V

    .line 2063
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V

    .line 2067
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2068
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    .line 2040
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 2028
    :cond_4
    :try_start_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2037
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 7

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setQuietModeEnabled for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on a separate thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mInternalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .locals 1

    .line 7382
    const-string/jumbo v0, "set user seed account data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 7383
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    return-void
.end method

.method public final setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .locals 3

    .line 7390
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7393
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7395
    const-string p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No such user for settings seed data u="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7396
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f4

    .line 7398
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 7400
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz p4, :cond_1

    const/16 p1, 0x3e8

    .line 7402
    invoke-virtual {p4, p1}, Landroid/os/PersistableBundle;->isBundleContentsWithinLengthLimit(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7404
    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 7406
    :cond_1
    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 7407
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p5, :cond_2

    .line 7409
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 7411
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 7407
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 7411
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .locals 3

    .line 1310
    const-string/jumbo v0, "set user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1313
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v2, :cond_0

    .line 1316
    const-string p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User not found for setting user account: u"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 1319
    :cond_0
    :try_start_3
    iget-object p1, v2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 1320
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1321
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1324
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 1327
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1329
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 1324
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 1329
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public setUserAdmin(I)V
    .locals 10

    .line 2242
    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->checkAdminStatusChangeAllowed(I)V

    .line 2247
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2249
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2250
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2251
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2254
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 2255
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v6

    const-string v8, ""

    const/4 v9, -0x1

    const/4 v5, 0x7

    move v7, p1

    .line 2254
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIILjava/lang/String;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2256
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 2257
    :cond_0
    :try_start_3
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2259
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x5

    invoke-virtual {p1, p0, v0, v1, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2262
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 2264
    :cond_1
    :try_start_5
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v4, v4, 0x2

    iput v4, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 2265
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2266
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2267
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2268
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, -0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    return-void

    .line 2266
    :goto_0
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    .line 2267
    :goto_1
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public setUserEnabled(I)V
    .locals 3

    .line 2192
    const-string v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2196
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2197
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2198
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x40

    .line 2200
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->removeUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    .line 2201
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2203
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2204
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 2205
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2206
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->sendProfileAddedBroadcast(II)V

    :cond_1
    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 2203
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 2204
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public setUserEphemeral(IZ)Z
    .locals 1

    .line 3327
    const-string/jumbo v0, "update ephemeral user flag"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3329
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setUserEphemeralUnchecked(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result p0

    return p0

    .line 3330
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setUserNonEphemeralUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public final setUserEphemeralUnchecked(I)I
    .locals 4

    .line 3363
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3365
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3366
    :try_start_1
    const-string/jumbo v2, "set as ephemeral"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLocked(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 3368
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    .line 3370
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3371
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3372
    :try_start_4
    iget-object v1, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 3373
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3374
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3375
    const-string p0, "UserManagerService"

    const-string v0, "User %d is set ephemeral and will be removed on user switch or reboot."

    .line 3376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 3375
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 3371
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 3374
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 3383
    :try_start_0
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3384
    const-string/jumbo v0, "no_set_user_icon"

    const-string v1, "Cannot set user icon"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    .line 3386
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3388
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 6

    .line 3296
    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3297
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3298
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3299
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3303
    :cond_0
    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3304
    const-string p0, "UserManagerService"

    const-string/jumbo v1, "setUserName: ignoring for user #%d as it didn\'t change (%s)"

    .line 3305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->getRedacted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 3304
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3306
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    .line 3309
    const-string v2, "UserManagerService"

    const-string/jumbo v3, "setUserName: resetting name of user #%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3311
    :cond_2
    const-string v2, "UserManagerService"

    const-string/jumbo v3, "setUserName: setting name of user #%d to %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3312
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->getRedacted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 3311
    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3314
    :goto_0
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 3315
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3317
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3319
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3321
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3322
    throw p0

    .line 3300
    :cond_3
    :goto_1
    :try_start_2
    const-string p0, "UserManagerService"

    const-string/jumbo p2, "setUserName: unknown user #%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3301
    monitor-exit v0

    return-void

    .line 3316
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setUserNonEphemeralUnchecked(I)Z
    .locals 8

    .line 3334
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3337
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3339
    const-string p0, "UserManagerService"

    const-string v2, "Cannot set user %d non-ephemeral, invalid user id provided."

    .line 3340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 3339
    invoke-static {v2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    .line 3343
    :cond_0
    :try_start_3
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 3344
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v5

    .line 3347
    :cond_1
    :try_start_5
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v7, v6, 0x2000

    if-eqz v7, :cond_2

    .line 3351
    const-string p0, "UserManagerService"

    const-string v2, "User %d can not be changed to non-ephemeral because it was set ephemeral on create."

    .line 3352
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 3351
    invoke-static {v2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return v3

    .line 3355
    :cond_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    and-int/lit16 p1, v6, -0x101

    .line 3356
    :try_start_8
    iput p1, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 3357
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3358
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return v5

    .line 3355
    :goto_0
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0

    .line 3358
    :goto_1
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .locals 2

    .line 3726
    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3727
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3731
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->userExists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3732
    const-string p0, "UserManagerService"

    const-string p2, "Cannot set user restriction %s. User with id %d does not exist"

    .line 3733
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 3732
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3736
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3739
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 3740
    invoke-virtual {v1, p3}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3739
    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3741
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3743
    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 3744
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setUserRestrictionInner(ILjava/lang/String;Z)V
    .locals 2

    .line 3508
    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3509
    const-string p0, "UserManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Setting invalid restriction "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3512
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3513
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 3514
    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3513
    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3515
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3517
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p2, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 3519
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3521
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 3524
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 3

    .line 2133
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v0

    .line 2138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v1

    .line 2139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 2141
    const-string p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showConfirmCredentialToDisableQuietMode() called too early, managed user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is still alive."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 2139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2149
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    .line 2154
    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2158
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 2161
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2163
    :cond_2
    const-string p2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2164
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2165
    const-string p2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 2166
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2167
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    const/high16 v2, 0x54000000

    invoke-static {p2, p3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 2176
    const-string p3, "android.intent.extra.INTENT"

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10800000

    .line 2177
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2180
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2181
    const-string p2, "custom_logo_res_id"

    const p3, 0x10809ed

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2183
    const-string p2, "custom_logo_description"

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10408e9

    .line 2184
    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2183
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2186
    :cond_3
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2187
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 2186
    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final showHsumNotificationIfNeeded()V
    .locals 6

    .line 4521
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4525
    :cond_0
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "persist.debug.user_mode_emulation"

    .line 4526
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 4530
    :cond_1
    const-string v0, "UserManagerService"

    const-string v1, "Posting warning that device\'s HSUM status doesn\'t match the build\'s."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4532
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v1, 0x1040b01

    .line 4533
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4534
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1040b00

    .line 4535
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4537
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v4, "DEVELOPER"

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x10809c2

    .line 4539
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 4540
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 4541
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4542
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 4543
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    .line 4544
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4545
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4546
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4547
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4548
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 4550
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    .line 4551
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v1, 0x4d

    .line 4552
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 7482
    const-string v0, "check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 7483
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 7488
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7492
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7494
    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 7457
    const-string v0, "check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 7458
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 7462
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7463
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 7465
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 7466
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 7467
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v6, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 7468
    :cond_1
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 7471
    :cond_2
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    .line 7474
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7476
    :cond_5
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startCommunalProfile()V
    .locals 2

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCommunalProfileIdUnchecked()I

    move-result p0

    const/16 v0, -0x2710

    .line 1206
    const-string v1, "UserManagerService"

    if-eq p0, v0, :cond_1

    .line 1207
    const-string v0, "Starting the Communal Profile"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->startProfile(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1213
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 1217
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1216
    const-string v0, "Failed to start communal profile userId=%d"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 1220
    :cond_1
    const-string p0, "Cannot start Communal Profile because there isn\'t one"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopUserForQuietMode(I)V
    .locals 1

    .line 2079
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->stopUserWithDelayedLocking(ILandroid/app/IStopUserCallback;)I

    return-void
.end method

.method public systemReady()V
    .locals 6

    .line 1125
    const-string v0, "appops"

    .line 1126
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1125
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 1128
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1129
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 1130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1136
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1140
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isAutoLockForPrivateSpaceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_0

    .line 1144
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "private_space_auto_lock"

    .line 1145
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockSettingsObserver:Lcom/android/server/pm/UserManagerService$SettingsObserver;

    .line 1147
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1144
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    .line 1149
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 1150
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "private_space_auto_lock"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1149
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->setOrUpdateAutoLockPreferenceForPrivateProfile(I)V

    .line 1157
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isAutoLockingPrivateSpaceOnRestartsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->autoLockPrivateSpace()V

    .line 1161
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->showHsumNotificationIfNeeded()V

    .line 1163
    invoke-static {}, Lcom/android/server/pm/UserManagerInternal;->shouldShowNotificationForBackgroundUserSounds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1164
    new-instance v0, Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;-><init>(Landroid/content/Context;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 1130
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final throwCheckedUserOperationException(Ljava/lang/String;I)V
    .locals 0

    .line 8422
    const-string p0, "UserManagerService"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8423
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    invoke-direct {p0, p1, p2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final truncateString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 5273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5276
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public tryAutoLockingPrivateSpaceOnKeyguardChanged(Z)V
    .locals 4

    .line 805
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isAutoLockForPrivateSpaceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    .line 809
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v2

    .line 806
    const-string/jumbo v3, "private_space_auto_lock"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->autoLockPrivateSpace()V

    :cond_1
    return-void
.end method

.method public final updateUserIds()V
    .locals 10

    .line 7198
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_1

    .line 7201
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7202
    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 7204
    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7213
    :cond_1
    new-array v3, v4, [I

    .line 7214
    new-array v4, v5, [I

    move v5, v2

    move v6, v5

    :goto_2
    if-ge v2, v1, :cond_4

    .line 7219
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7220
    iget-boolean v8, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v8, :cond_3

    .line 7221
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    .line 7222
    aput v8, v4, v5

    .line 7223
    iget-boolean v5, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_2

    add-int/lit8 v5, v6, 0x1

    .line 7224
    aput v8, v3, v6

    move v6, v5

    :cond_2
    move v5, v9

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7228
    :cond_4
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 7229
    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    .line 7234
    invoke-static {v3}, Landroid/content/pm/UserPackage;->setValidUserIds([I)V

    .line 7235
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .locals 4

    .line 3758
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 3759
    invoke-virtual {v0, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 3758
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 3764
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3766
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 3767
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    if-eq v1, p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 3770
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3771
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    .line 3775
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object p1

    .line 3777
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3785
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_3

    .line 3786
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3795
    :cond_3
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 3797
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public final updateUsersWithFeatureFlags(Z)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4679
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 4680
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4682
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    :cond_1
    return-void
.end method

.method public final upgradeIfNecessaryLP()V
    .locals 2

    .line 4665
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(II)V

    return-void
.end method

.method public upgradeIfNecessaryLP(II)V
    .locals 11

    .line 4693
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading users from userVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4694
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4695
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 4696
    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge p1, v5, :cond_1

    .line 4699
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    .line 4700
    const-string v6, "Primary"

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4701
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4702
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040708

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 4703
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    move p1, v5

    :cond_1
    const/4 v6, 0x2

    if-ge p1, v6, :cond_3

    .line 4710
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    .line 4711
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v8, v7, 0x10

    if-nez v8, :cond_2

    or-int/lit8 v7, v7, 0x10

    .line 4712
    iput v7, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 4713
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    move p1, v6

    :cond_3
    const/4 v6, 0x4

    if-ge p1, v6, :cond_4

    move p1, v6

    :cond_4
    const/4 v6, 0x5

    if-ge p1, v6, :cond_5

    .line 4724
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    move p1, v6

    :cond_5
    const/4 v6, 0x6

    if-ge p1, v6, :cond_8

    .line 4729
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    move p1, v4

    .line 4730
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge p1, v8, :cond_7

    .line 4731
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4733
    iget-object v9, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v8, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v10, -0x2710

    if-ne v9, v10, :cond_6

    .line 4735
    iput v4, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 4736
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4739
    :cond_7
    monitor-exit v7

    move p1, v6

    goto :goto_3

    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_3
    const/4 v6, 0x7

    if-ge p1, v6, :cond_c

    .line 4745
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4746
    :try_start_1
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const-string v8, "ensure_verify_apps"

    invoke-virtual {p1, v8}, Lcom/android/server/pm/RestrictionsSet;->removeRestrictionsForAllUsers(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4748
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v8, -0x1

    invoke-virtual {p1, v8}, Lcom/android/server/pm/RestrictionsSet;->getRestrictionsNonNull(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v8, "ensure_verify_apps"

    .line 4749
    invoke-virtual {p1, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    .line 4751
    :cond_9
    :goto_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4753
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    move-result-object p1

    move v7, v4

    .line 4754
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 4755
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    if-eqz v8, :cond_a

    .line 4756
    const-string/jumbo v9, "no_config_wifi"

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v9, v10}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_a

    .line 4758
    const-string/jumbo v9, "no_config_wifi"

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v9, v5, v8}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    move p1, v6

    goto :goto_7

    .line 4751
    :goto_6
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_c
    :goto_7
    const/16 v6, 0x8

    if-ge p1, v6, :cond_10

    .line 4766
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4767
    :try_start_3
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4768
    iget-object v8, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v9, v9, 0x800

    iput v9, v8, Landroid/content/pm/UserInfo;->flags:I

    .line 4773
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v8

    if-nez v8, :cond_d

    .line 4774
    iget-object v8, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v9, v9, 0x400

    iput v9, v8, Landroid/content/pm/UserInfo;->flags:I

    goto :goto_8

    :catchall_2
    move-exception p0

    goto :goto_a

    .line 4776
    :cond_d
    :goto_8
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4780
    :goto_9
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v5, p1, :cond_f

    .line 4781
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4782
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v9, v8, 0x20

    if-nez v9, :cond_e

    or-int/lit16 v8, v8, 0x400

    .line 4783
    iput v8, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 4784
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 4787
    :cond_f
    monitor-exit v7

    move p1, v6

    goto :goto_b

    :goto_a
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_10
    :goto_b
    const/16 v5, 0x9

    if-ge p1, v5, :cond_15

    .line 4793
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    move p1, v4

    .line 4794
    :goto_c
    :try_start_4
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge p1, v7, :cond_14

    .line 4795
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4796
    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v10, v9, 0x800

    if-eqz v10, :cond_12

    and-int/lit16 v10, v9, 0x400

    if-eqz v10, :cond_11

    .line 4799
    const-string v10, "android.os.usertype.full.SYSTEM"

    iput-object v10, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_d

    :catchall_3
    move-exception p0

    goto/16 :goto_e

    .line 4801
    :cond_11
    const-string v10, "android.os.usertype.system.HEADLESS"

    iput-object v10, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_d

    .line 4805
    :cond_12
    :try_start_5
    invoke-static {v9}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 4815
    :goto_d
    :try_start_6
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v10, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v8, :cond_13

    .line 4822
    iget-object v9, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {v8}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v8

    or-int/2addr v8, v10

    iput v8, v9, Landroid/content/pm/UserInfo;->flags:I

    .line 4823
    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 4817
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot upgrade user with flags "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4818
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " because "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p2, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t defined on this device!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 4808
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot upgrade user with flags "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4809
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it doesn\'t correspond to a valid user type."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4825
    :cond_14
    monitor-exit v6

    move p1, v5

    goto :goto_f

    :goto_e
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :cond_15
    :goto_f
    const/16 v5, 0xa

    if-ge p1, v5, :cond_18

    .line 4831
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    move p1, v4

    .line 4832
    :goto_10
    :try_start_7
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge p1, v7, :cond_17

    .line 4833
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4834
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v9, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v9, v9, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v8, :cond_16

    .line 4840
    new-instance v9, Landroid/content/pm/UserProperties;

    .line 4841
    invoke-virtual {v8}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserPropertiesReference()Landroid/content/pm/UserProperties;

    move-result-object v8

    invoke-direct {v9, v8}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    iput-object v9, v7, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    .line 4842
    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :catchall_4
    move-exception p0

    goto :goto_11

    .line 4836
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot upgrade user because "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p2, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t defined on this device!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4844
    :cond_17
    monitor-exit v6

    move p1, v5

    goto :goto_12

    :goto_11
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0

    :cond_18
    :goto_12
    if-ge p1, v2, :cond_1b

    .line 4850
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 4851
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isMainUserPermanentAdmin()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 4852
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 4854
    iget v4, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 4855
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 4859
    :cond_19
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4860
    :try_start_8
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4861
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 4862
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4863
    monitor-exit v5

    :cond_1a
    :goto_13
    move p1, v2

    goto :goto_14

    :catchall_5
    move-exception p0

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p0

    .line 4872
    :cond_1b
    :goto_14
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v4

    if-le v4, p2, :cond_1c

    .line 4874
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4875
    :try_start_9
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeUpgrades()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, v6, v7, p2, v0}, Lcom/android/server/pm/UserManagerService;->upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V

    .line 4877
    monitor-exit v5

    goto :goto_15

    :catchall_6
    move-exception p0

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw p0

    :cond_1c
    :goto_15
    if-ge p1, v2, :cond_1d

    .line 4881
    const-string p1, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User version "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " didn\'t upgrade as expected to "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    if-le p1, v2, :cond_1e

    .line 4885
    const-string p2, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgraded user version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is higher the SDK\'s one of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Someone forgot to update USER_VERSION?"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4889
    :cond_1e
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 4890
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    if-lt v1, p1, :cond_20

    if-ge v3, v4, :cond_1f

    goto :goto_16

    :cond_1f
    return-void

    .line 4893
    :cond_20
    :goto_16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4894
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 4896
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_17

    .line 4899
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void
.end method

.method public upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V
    .locals 3

    .line 4946
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4948
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4946
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4950
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4957
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4958
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded maximum profiles of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4959
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Maximum allowed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4961
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowedPerParent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4958
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v0, :cond_1

    .line 4967
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1000

    .line 4974
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 4976
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    iget v2, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 4979
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4980
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4981
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 4982
    invoke-virtual {v1, v2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 4981
    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 4984
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultRestrictions()Landroid/os/Bundle;

    move-result-object p2

    .line 4983
    invoke-static {v1, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 4985
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 4991
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4994
    iget p2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v0, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result p0

    iput p0, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    return-void

    .line 4991
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 4951
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can only upgrade profile types. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile type."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V
    .locals 5

    .line 4909
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    .line 4917
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getUpToVersion()I

    move-result v1

    if-gt p3, v1, :cond_0

    const/4 v1, 0x0

    .line 4918
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4919
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4920
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getFromType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4922
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getToType()Ljava/lang/String;

    move-result-object v3

    .line 4921
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v3, :cond_1

    .line 4930
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/UserManagerService;->upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V

    .line 4931
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4925
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Upgrade destination user type not defined: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4927
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getToType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public userExists(I)Z
    .locals 5

    .line 4367
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4368
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p0, v3

    if-ne v4, p1, :cond_0

    const/4 p0, 0x1

    .line 4370
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4373
    :cond_1
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .locals 1

    if-eqz p1, :cond_3

    .line 2380
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2382
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_0

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2388
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2389
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2390
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2391
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 2394
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 2395
    iput-object p0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0

    :cond_3
    return-object p1
.end method

.method public final verifyCallingPackage(Ljava/lang/String;I)V
    .locals 3

    .line 8534
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 8535
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {p0, p1, v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    .line 8537
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Specified package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match the calling uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 4322
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4323
    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "photo.png"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4324
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png.tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4325
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4326
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 4328
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    .line 4327
    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 4333
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x64

    invoke-virtual {p2, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4334
    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4335
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4338
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4342
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4344
    const-string p1, "UserManagerService"

    const-string p2, "Error setting photo for user "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 5

    .line 5126
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    .line 5128
    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    .line 5131
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5132
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    .line 5133
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 v1, 0x0

    .line 5135
    :goto_0
    :try_start_2
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing user info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5136
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v0, :cond_0

    .line 5138
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_0
    return-void

    :goto_2
    if-eqz v0, :cond_1

    .line 5128
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw p0
.end method

.method public writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5152
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    .line 5153
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5154
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5156
    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5157
    const-string/jumbo v3, "user"

    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5158
    const-string v3, "id"

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5159
    const-string/jumbo v3, "serialNumber"

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5160
    const-string v3, "flags"

    iget v4, v0, Landroid/content/pm/UserInfo;->flags:I

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5161
    const-string/jumbo v3, "type"

    iget-object v4, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5162
    const-string v3, "created"

    iget-wide v4, v0, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-interface {p2, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5163
    const-string v3, "lastLoggedIn"

    iget-wide v4, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-interface {p2, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5164
    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5165
    const-string v4, "lastLoggedInFingerprint"

    invoke-interface {p2, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5168
    :cond_0
    const-string v3, "lastEnteredForeground"

    iget-wide v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    invoke-interface {p2, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5170
    iget-object v3, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 5171
    const-string v4, "icon"

    invoke-interface {p2, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5173
    :cond_1
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_2

    .line 5174
    const-string/jumbo v3, "partial"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 5176
    :cond_2
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_3

    .line 5177
    const-string/jumbo v3, "preCreated"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 5179
    :cond_3
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v3, :cond_4

    .line 5180
    const-string v3, "convertedFromPreCreated"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 5182
    :cond_4
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v3, :cond_5

    .line 5183
    const-string v3, "guestToRemove"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 5185
    :cond_5
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_6

    .line 5186
    const-string/jumbo v4, "profileGroupId"

    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5188
    :cond_6
    const-string/jumbo v2, "profileBadge"

    iget v4, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-interface {p2, v1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5189
    iget v2, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v3, :cond_7

    .line 5190
    const-string/jumbo v3, "restrictedProfileParentId"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5194
    :cond_7
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_9

    .line 5195
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const/16 v3, 0x1f4

    if-eqz v2, :cond_8

    .line 5196
    const-string/jumbo v4, "seedAccountName"

    .line 5197
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5196
    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5200
    :cond_8
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 5201
    const-string/jumbo v4, "seedAccountType"

    .line 5202
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5201
    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5206
    :cond_9
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 5207
    const-string/jumbo v2, "name"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5208
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5209
    const-string/jumbo v2, "name"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5211
    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5212
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    .line 5213
    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "restrictions"

    .line 5212
    invoke-static {p2, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 5216
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_b

    .line 5217
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v4, -0x1

    .line 5218
    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "device_policy_global_restrictions"

    .line 5217
    invoke-static {p2, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 5221
    const-string v3, "guestRestrictions"

    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5222
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5223
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v5, "restrictions"

    invoke-static {p2, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 5225
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5226
    :try_start_2
    const-string v3, "guestRestrictions"

    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    .line 5225
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 5234
    :cond_b
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 5235
    invoke-virtual {p0, v0}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "device_policy_local_restrictions"

    .line 5234
    invoke-static {p2, p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 5237
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5239
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz p0, :cond_c

    .line 5240
    const-string p0, "account"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5241
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5242
    const-string p0, "account"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5245
    :cond_c
    iget-boolean p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz p0, :cond_d

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz p0, :cond_d

    .line 5246
    const-string/jumbo p0, "seedAccountOptions"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5247
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 5248
    const-string/jumbo p0, "seedAccountOptions"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5251
    :cond_d
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    if-eqz p0, :cond_e

    .line 5252
    const-string/jumbo p0, "userProperties"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5253
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {p0, p2}, Landroid/content/pm/UserProperties;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 5254
    const-string/jumbo p0, "userProperties"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5257
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_f

    .line 5258
    const-string p0, "lastRequestQuietModeEnabledCall"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5259
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5260
    const-string p0, "lastRequestQuietModeEnabledCall"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5263
    :cond_f
    const-string p0, "ignorePrepareStorageErrors"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5264
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5265
    const-string p0, "ignorePrepareStorageErrors"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5267
    const-string/jumbo p0, "user"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5269
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void

    .line 5237
    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final writeUserListLP()V
    .locals 10

    .line 5293
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    .line 5295
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 5298
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5300
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 5301
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5302
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5305
    const-string/jumbo v4, "users"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5306
    const-string/jumbo v4, "nextSerialNumber"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v3, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5307
    const-string/jumbo v4, "version"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-interface {v3, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5308
    const-string/jumbo v4, "userTypeConfigVersion"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-interface {v3, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5320
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5321
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v6, v5, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_0

    .line 5323
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5324
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 5326
    :cond_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-ge v7, v5, :cond_1

    .line 5327
    :try_start_3
    aget p0, v6, v7

    .line 5328
    const-string/jumbo v4, "user"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5329
    const-string v4, "id"

    invoke-interface {v3, v1, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5330
    const-string/jumbo p0, "user"

    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    .line 5333
    :cond_1
    const-string/jumbo p0, "users"

    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5335
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 5336
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 5326
    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception p0

    .line 5338
    :goto_3
    :try_start_6
    const-string v2, "UserManagerService"

    const-string v3, "Error writing user list"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5339
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    if-eqz v0, :cond_2

    .line 5341
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_2
    return-void

    :goto_5
    if-eqz v0, :cond_3

    .line 5295
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw p0
.end method
