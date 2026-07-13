.class public Lcom/android/server/appop/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# static fields
.field public static final NON_PACKAGE_UIDS:[I

.field public static final OPS_RESTRICTED_ON_SUSPEND:[I

.field public static final RATE_LIMITER_WINDOW:Ljava/time/Duration;


# instance fields
.field public final dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mAcceptableLeftDistance:I

.field public final mActiveWatchers:Landroid/util/ArrayMap;

.field mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

.field public final mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

.field mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

.field public final mAsyncOpWatchers:Landroid/util/ArrayMap;

.field public final mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

.field public volatile mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

.field public mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

.field final mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field public final mContext:Landroid/content/Context;

.field public mFastWriteScheduled:Z

.field public final mHandler:Landroid/os/Handler;

.field public volatile mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

.field public mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

.field public final mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

.field public final mKnownDeviceIds:Landroid/util/SparseArray;

.field public mMessagesCollectedCount:F

.field public final mModeWatchers:Landroid/util/ArrayMap;

.field public final mNoteOpCallerStacktraces:Landroid/util/ArraySet;

.field public final mNoteOpCallerStacktracesFile:Ljava/io/File;

.field public final mNotedWatchers:Landroid/util/ArrayMap;

.field public mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field public final mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

.field public final mOpGlobalRestrictions:Landroid/util/ArrayMap;

.field public final mOpModeWatchers:Landroid/util/SparseArray;

.field public final mOpUserRestrictions:Landroid/util/ArrayMap;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field public final mPackageModeWatchers:Landroid/util/ArrayMap;

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mProfileOwners:Landroid/util/SparseIntArray;

.field public mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field public mRarelyUsedPackages:Landroid/util/ArraySet;

.field public mRarelyUsedPackagesInitialized:Z

.field public final mRateLimiter:Lcom/android/server/selinux/RateLimiter;

.field public final mRecentAccessPersistence:Lcom/android/server/appop/AppOpsRecentAccessPersistence;

.field public final mRecentAccessesFile:Landroid/util/AtomicFile;

.field public mSampledAppOpCode:I

.field public mSampledPackage:Ljava/lang/String;

.field public mSamplingStrategy:I

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mStartedWatchers:Landroid/util/ArrayMap;

.field public final mStorageFile:Landroid/util/AtomicFile;

.field public final mSwitchedOps:Landroid/util/SparseArray;

.field public mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTracker;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mWriteRunner:Ljava/lang/Runnable;

.field public mWriteScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$4QeldWBMj6YlbZhhSHdkBipazyw(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)V
    .locals 5

    .line 1659
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    .line 1662
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    const/4 p0, -0x1

    if-eq v0, p0, :cond_0

    .line 1664
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-ltz p0, :cond_0

    .line 1665
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$6UFdJMlVEdApX-_k1ZXaih_y7hc(Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)Z
    .locals 1

    .line 4503
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 4504
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$6k_N9hZ8kvjX_OAIx8qy1xpZV_s(Lcom/android/server/appop/AppOpsService;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->lambda$getUidStateTracker$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$71LMZ7JKcTz2Del8VraOPLH95C8(Landroid/os/RemoteCallback;)V
    .locals 1

    .line 1989
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-LvphSu5hQo1Pm8R22O3seI00E(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Landroid/os/RemoteCallbackList;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->lambda$startWatchingAsyncNoted$8(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Landroid/os/RemoteCallbackList;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$88KncsbhH2kd-HDYOv6wbK3as_E(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cs6vN-igHXngWbyuQPObjqfNiNg(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;)V
    .locals 1

    .line 1658
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda24;-><init>(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;)V

    invoke-virtual {p1, v0}, Lcom/android/server/appop/AttributedOp;->doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H_OtNgiiXWUlQZA6FKtIStkV4xE(Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)Z
    .locals 1

    .line 4516
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 4517
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$KZ8csPYjnHRgqtsqPZIdzSZk2M0(Lcom/android/server/appop/AppOpsService;IZI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUserForDefaultDevice(IZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$V27VMlXcq0A5RHEdccFS2jyDRxk(Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)Z
    .locals 1

    .line 4486
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 4487
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$_3mKgx97gA3YgX5RtEESYaD_JvY(Lcom/android/server/appop/AppOpsService;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOnDefaultDevice(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$dY2bz9MdZpnfSsD9a6i_blsrnnU(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gTPk1MOGd-_YuXFccxYAVQp0m20(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 1638
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    .line 1641
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    .line 1642
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-gez v1, :cond_1

    .line 1645
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1648
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$goph2rcKC3ZkblAuNqSuM_8dDAo(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$iBEgFaVmWH6RsWQk8E__bKKARGk(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ivy8byvsjd3SaSvT4UqsaMoeNyY(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->lambda$removeUser$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$laMlKOOi6dw8cUrr4g6FMdAeID8(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 0

    .line 3737
    :try_start_0
    invoke-interface {p6, p0}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;->opNoted(Landroid/app/AsyncNotedAppOp;)V

    const/4 p0, 0x0

    const/4 p6, 0x1

    .line 3738
    aput-boolean p6, p1, p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3740
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Could not forward noteOp of "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppOps"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$mwzhma31ieiNEIMs5kEanG9uYik(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;)V
    .locals 1

    .line 1634
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda22;-><init>(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;)V

    invoke-virtual {p1, v0}, Lcom/android/server/appop/AttributedOp;->doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tCrK7GHyC4CL9PmON8WCNADuzSQ(Lcom/android/server/appop/AppOpsService;IIZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uCCOXFJxz3bCZJrsIAuF17lDZks(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/appop/AppOpsService;->notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$vGfeEw9xZxujs2PjNSTjusJ_yRE(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IZII)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/appop/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$xAhQeGPgXGiSjmtMzzdf_avZ1GE(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpModeWatchers(Lcom/android/server/appop/AppOpsService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpUserRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRarelyUsedPackages(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidStateTracker(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsUidStateTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRarelyUsedPackages(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRarelyUsedPackagesInitialized(Lcom/android/server/appop/AppOpsService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackagesInitialized:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->finishOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->finishProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPackageListAndResample(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUidStateTracker(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsUidStateTracker;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitializeRarelyUsedPackagesList(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeUserUidStates(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->initializeUserUidStates(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->noteProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyOpChanged(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOpChangedForAllPkgsInUid(Lcom/android/server/appop/AppOpsService;IIZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyOpChangedForPkg(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForPkg(Ljava/lang/String;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWatchersOnDefaultDevice(Lcom/android/server/appop/AppOpsService;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOnDefaultDevice(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageAdded(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageReplaced(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->onPackageReplaced(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUidProcessDeath(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->onUidProcessDeath(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUidStateChanged(Lcom/android/server/appop/AppOpsService;IIZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->onUidStateChanged(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUidMode(Lcom/android/server/appop/AppOpsService;IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/appop/AppOpsService;->startOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->startProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateAppWidgetVisibility(Lcom/android/server/appop/AppOpsService;Landroid/util/SparseArray;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateStartedOpModeForUserForDefaultDevice(Lcom/android/server/appop/AppOpsService;IZI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUserForDefaultDevice(IZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetOPS_RESTRICTED_ON_SUSPEND()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smresolveNonAppUid(Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1a

    const/4 v1, 0x3

    const/16 v2, 0x1c

    const/16 v3, 0x1b

    .line 258
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    const/4 v0, 0x7

    .line 270
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->NON_PACKAGE_UIDS:[I

    const-wide/16 v0, 0xa

    .line 371
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/AppOpsService;->RATE_LIMITER_WINDOW:Ljava/time/Duration;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e9
        0x3ea
        0x411
        0x403
        0x431
        0x7d0
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 9

    .line 1012
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 235
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    .line 291
    new-instance v0, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    .line 299
    new-instance v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-direct {v2, v0, v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;-><init>(Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;I)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 304
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService-IA;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 306
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 307
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 311
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    .line 313
    const-string/jumbo v2, "platform_compat"

    .line 314
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 313
    invoke-static {v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 325
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 337
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    .line 341
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 343
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 350
    new-instance v2, Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 366
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 372
    new-instance v2, Lcom/android/server/selinux/RateLimiter;

    sget-object v3, Lcom/android/server/appop/AppOpsService;->RATE_LIMITER_WINDOW:Ljava/time/Duration;

    invoke-direct {v2, v3}, Lcom/android/server/selinux/RateLimiter;-><init>(Ljava/time/Duration;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    .line 379
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 385
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 390
    new-instance v2, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v2, p0, v1, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 397
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 400
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/4 v2, -0x1

    .line 404
    iput v2, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/4 v2, 0x0

    .line 408
    iput v2, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 416
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 450
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 769
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 770
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 771
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 772
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 773
    new-instance v3, Lcom/android/server/appop/AudioRestrictionManager;

    invoke-direct {v3}, Lcom/android/server/appop/AudioRestrictionManager;-><init>()V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 1090
    new-instance v3, Lcom/android/server/appop/AppOpsService$4;

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 1013
    iput-object p4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1014
    const-string v3, "default:0"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    :goto_0
    const/16 v3, 0xa3

    if-ge v0, v3, :cond_0

    .line 1017
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 1018
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 1019
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 1018
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    sget-boolean v0, Landroid/permission/PermissionManager;->USE_ACCESS_CHECKING_SERVICE:Z

    if-eqz v0, :cond_1

    .line 1022
    new-instance v0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;

    const-class v3, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1023
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-direct {v0, v3}, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceInterface;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    move-object v5, p0

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    goto :goto_1

    .line 1025
    :cond_1
    new-instance v0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;

    new-instance v3, Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    iget-object v8, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    move-object v5, p0

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;-><init>(Ljava/io/File;Ljava/lang/Object;Landroid/os/Handler;Landroid/content/Context;Landroid/util/SparseArray;)V

    invoke-direct {v0, v3}, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceInterface;)V

    iput-object v0, v5, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1029
    :goto_1
    iget-object p0, v5, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    new-instance p2, Lcom/android/server/appop/AppOpsService$3;

    invoke-direct {p2, v5}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-interface {p0, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;)Z

    .line 1050
    new-instance p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    new-instance p2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

    invoke-direct {p2, v5}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-direct {p0, v7, v6, p2}, Lcom/android/server/appop/AppOpsRestrictionsImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;)V

    iput-object p0, v5, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 1053
    invoke-static {v5, v2}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1054
    new-instance p0, Landroid/util/AtomicFile;

    const-string p2, "appops_legacy"

    invoke-direct {p0, v4, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, v5, Lcom/android/server/appop/AppOpsService;->mStorageFile:Landroid/util/AtomicFile;

    .line 1055
    new-instance p0, Landroid/util/AtomicFile;

    const-string p2, "appops_accesses"

    invoke-direct {p0, p1, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, v5, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 1056
    new-instance p1, Lcom/android/server/appop/AppOpsRecentAccessPersistence;

    invoke-direct {p1, p0, v5}, Lcom/android/server/appop/AppOpsRecentAccessPersistence;-><init>(Landroid/util/AtomicFile;Lcom/android/server/appop/AppOpsService;)V

    iput-object p1, v5, Lcom/android/server/appop/AppOpsService;->mRecentAccessPersistence:Lcom/android/server/appop/AppOpsRecentAccessPersistence;

    .line 1063
    iput-object v1, v5, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    .line 1065
    iput-object v6, v5, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 1066
    new-instance p0, Lcom/android/server/appop/AppOpsService$Constants;

    invoke-direct {p0, v5, v6}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    iput-object p0, v5, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 1068
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses()V

    .line 1069
    iget-object p0, v5, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    .line 1073
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    .line 1074
    invoke-static {}, Landroid/app/AppOpsManager;->disableAppOpModeCache()V

    .line 1079
    new-instance p0, Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-direct {p0, v5, v7}, Lcom/android/server/appop/LegacyHistoricalRegistry;-><init>(Ljava/lang/Object;Landroid/content/Context;)V

    iput-object p0, v5, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    return-void
.end method

.method public static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;
    .locals 5

    if-nez p5, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 2600
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2602
    :cond_1
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2604
    invoke-virtual {p5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 2605
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2606
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    if-eq v4, v3, :cond_2

    .line 2608
    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2574
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 2576
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2578
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2579
    iget v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    if-ne v4, p1, :cond_1

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 2586
    new-instance v0, Lcom/android/server/appop/AppOpsService$ChangeRec;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1

    .line 5899
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5900
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5901
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5902
    const-string v0, "  start [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5904
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5905
    const-string v0, "  stop [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5907
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5908
    const-string v0, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5909
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5910
    const-string v0, "  get [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5912
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5913
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5914
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5915
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5916
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5917
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5918
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5919
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5920
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5921
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5922
    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5923
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5924
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5925
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5926
    const-string v0, "              not specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;
    .locals 0

    .line 1826
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$Op;->createEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .line 7469
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7471
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 7477
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public static isOpAllowedForUid(I)Z
    .locals 1

    .line 2936
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0x3e8

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

.method public static onClientDeath(Lcom/android/server/appop/AttributedOp;Landroid/os/IBinder;)V
    .locals 0

    .line 983
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AttributedOp;->onClientDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method public static onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 5931
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 5933
    :cond_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 5934
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const/4 v4, -0x1

    .line 5936
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v5, "read-settings"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_14

    :sswitch_1
    const-string/jumbo v5, "start"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "reset"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "stop"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x8

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "note"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_5
    const-string/jumbo v5, "set"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_1

    :sswitch_6
    const-string v5, "get"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v5, "query-op"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_8
    const-string/jumbo v5, "write-settings"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_0

    .line 6206
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 6192
    :pswitch_0
    invoke-virtual {v0, v6, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_2

    return v1

    .line 6197
    :cond_2
    iget-object v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 6198
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_3
    return v4

    .line 6176
    :pswitch_1
    invoke-virtual {v0, v6, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_4

    return v1

    .line 6181
    :cond_4
    iget-object v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 6182
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-string v16, "appops start shell command"

    const/16 v18, 0x1

    const/16 v19, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v17, 0x1

    invoke-interface/range {v8 .. v19}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    return v7

    :cond_5
    return v4

    .line 6162
    :pswitch_2
    invoke-virtual {v0, v6, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_6

    return v1

    .line 6166
    :cond_6
    iget-object v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 6167
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-string v14, "appops note shell command"

    const/4 v15, 0x1

    const/4 v13, 0x1

    invoke-interface/range {v8 .. v15}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    return v7

    :cond_7
    return v4

    .line 6149
    :pswitch_3
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 6150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 6149
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 6151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6153
    :try_start_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses()V

    .line 6154
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    .line 6155
    const-string v0, "Last settings read."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6157
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6158
    throw v0

    .line 6132
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 6133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 6132
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 6134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6136
    :try_start_3
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6137
    :try_start_4
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v8, v8, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6139
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6140
    :try_start_5
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->writeRecentAccesses()V

    .line 6141
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V

    .line 6142
    const-string v0, "Current settings written."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6144
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    return v7

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 6139
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 6144
    :goto_2
    :try_start_9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6145
    throw v0

    :pswitch_5
    const/4 v1, -0x2

    move v5, v1

    .line 6098
    :goto_3
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 6099
    const-string v9, "--user"

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 6100
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 6101
    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_8
    if-nez v8, :cond_9

    move-object v8, v6

    goto :goto_3

    .line 6106
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unsupported argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_a
    if-ne v5, v1, :cond_b

    .line 6113
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 6116
    :cond_b
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v5, v8}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 6117
    const-string v0, "Reset all modes for: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne v5, v4, :cond_c

    .line 6119
    const-string v0, "all users"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 6121
    :cond_c
    const-string/jumbo v0, "user "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 6123
    :goto_4
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v8, :cond_d

    .line 6125
    const-string v0, "all packages"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 6127
    :cond_d
    const-string/jumbo v0, "package "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    return v7

    .line 6068
    :pswitch_6
    invoke-virtual {v0, v6, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_e

    return v1

    .line 6072
    :cond_e
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 6074
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_f

    goto :goto_9

    :cond_f
    move v3, v7

    .line 6078
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_12

    .line 6079
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 6081
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    move v8, v7

    .line 6082
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 6083
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$OpEntry;

    .line 6084
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v10

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-ne v10, v11, :cond_10

    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-ne v9, v10, :cond_10

    .line 6090
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_12
    return v7

    .line 6075
    :cond_13
    :goto_9
    const-string v0, "No operations."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 5970
    :pswitch_7
    invoke-virtual {v0, v7, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_14

    return v1

    .line 5975
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5976
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 5978
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 5980
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v6, v4, :cond_15

    filled-new-array {v6}, [I

    move-result-object v6

    goto :goto_a

    :cond_15
    move-object v6, v8

    .line 5978
    :goto_a
    invoke-interface {v3, v5, v6}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 5982
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5984
    :cond_16
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 5986
    iget v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v9, v4, :cond_17

    filled-new-array {v9}, [I

    move-result-object v8

    .line 5984
    :cond_17
    invoke-interface {v3, v5, v6, v8}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 5988
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 5991
    :cond_18
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 5993
    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v5, v4, :cond_19

    filled-new-array {v5}, [I

    move-result-object v8

    .line 5991
    :cond_19
    invoke-interface {v1, v3, v8}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v1

    :cond_1a
    :goto_b
    if-eqz v1, :cond_1b

    .line 5995
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1c

    :cond_1b
    move v8, v7

    goto/16 :goto_12

    .line 6003
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move v3, v7

    .line 6004
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_28

    .line 6005
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    .line 6006
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1d

    .line 6007
    const-string v9, "Uid mode: "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6009
    :cond_1d
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    move v9, v7

    .line 6010
    :goto_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_27

    .line 6011
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    .line 6012
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6013
    const-string v11, ": "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6014
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6015
    iget-object v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-wide/16 v12, -0x1

    const/16 v14, 0x1f

    if-nez v11, :cond_22

    .line 6016
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    cmp-long v11, v15, v12

    if-eqz v11, :cond_1e

    .line 6017
    const-string v11, "; time="

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6019
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    move v11, v7

    move-object/from16 p1, v8

    sub-long v7, v5, v15

    .line 6018
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6020
    const-string v7, " ago"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    :cond_1e
    move v11, v7

    move-object/from16 p1, v8

    .line 6022
    :goto_e
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-eqz v7, :cond_1f

    .line 6023
    const-string v7, "; rejectTime="

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6025
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v7

    sub-long v7, v5, v7

    .line 6024
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6026
    const-string v7, " ago"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6028
    :cond_1f
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 6029
    const-string v7, " (running)"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_20
    :goto_f
    move v8, v11

    goto/16 :goto_11

    .line 6030
    :cond_21
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-eqz v7, :cond_20

    .line 6031
    const-string v7, "; duration="

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6032
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v7

    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_f

    :cond_22
    move v11, v7

    move-object/from16 p1, v8

    .line 6036
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$AttributedOpEntry;

    if-eqz v7, :cond_20

    .line 6038
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    cmp-long v8, v15, v12

    if-eqz v8, :cond_23

    .line 6039
    const-string v8, "; time="

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6041
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    move v8, v11

    move-wide/from16 v17, v12

    sub-long v11, v5, v15

    .line 6040
    invoke-static {v11, v12, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6043
    const-string v10, " ago"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10

    :cond_23
    move v8, v11

    move-wide/from16 v17, v12

    .line 6045
    :goto_10
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v10

    cmp-long v10, v10, v17

    if-eqz v10, :cond_24

    .line 6046
    const-string v10, "; rejectTime="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6048
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v10

    sub-long v10, v5, v10

    .line 6047
    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6050
    const-string v10, " ago"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6052
    :cond_24
    invoke-virtual {v7}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_25

    .line 6053
    const-string v7, " (running)"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_11

    .line 6054
    :cond_25
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v10

    cmp-long v10, v10, v17

    if-eqz v10, :cond_26

    .line 6056
    const-string v10, "; duration="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6058
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v10

    .line 6057
    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6062
    :cond_26
    :goto_11
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v9, v9, 0x1

    move v7, v8

    move-object/from16 v8, p1

    goto/16 :goto_d

    :cond_27
    move v8, v7

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    :cond_28
    move v8, v7

    return v8

    .line 5996
    :goto_12
    const-string v1, "No operations."

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5997
    iget v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-le v1, v4, :cond_29

    const/16 v3, 0xa3

    if-ge v1, v3, :cond_29

    .line 5998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 5999
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 5998
    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_29
    return v8

    :pswitch_8
    move v8, v7

    .line 5938
    invoke-virtual {v0, v6, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_2a

    return v1

    .line 5942
    :cond_2a
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 5944
    const-string v0, "Error: Mode not specified."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 5948
    :cond_2b
    invoke-static {v1, v3}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_2c

    return v4

    .line 5953
    :cond_2c
    iget-boolean v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-nez v3, :cond_2d

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_2d

    .line 5954
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    invoke-interface {v3, v6, v0, v5, v1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_13

    :cond_2d
    if-eqz v3, :cond_2e

    .line 5956
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v3, :cond_2e

    .line 5958
    :try_start_a
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 5959
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 5960
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-interface {v5, v0, v3, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_13

    :catch_1
    return v4

    .line 5965
    :cond_2e
    :try_start_b
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v3, v5, v0, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    :goto_13
    return v8

    .line 6209
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x658cadaf -> :sswitch_8
        -0x458a76fa -> :sswitch_7
        0x18f56 -> :sswitch_6
        0x1bc62 -> :sswitch_5
        0x33aff2 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7c514e7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static resolveNonAppUid(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p0, :cond_0

    return v1

    .line 7448
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move p0, v1

    goto :goto_1

    :sswitch_0
    const-string v2, "audioserver"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "shell"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "media"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "root"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v2, "cameraserver"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v2, "dumpstate"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move p0, v0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 p0, 0x411

    return p0

    :pswitch_1
    const/16 p0, 0x3f5

    return p0

    :pswitch_2
    return v0

    :pswitch_3
    const/16 p0, 0x417

    return p0

    :pswitch_4
    const/16 p0, 0x7d0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x4faa5ce3 -> :sswitch_5
        -0x1dbbd58 -> :sswitch_4
        0x3580e2 -> :sswitch_3
        0x62f6fe4 -> :sswitch_2
        0x6855e30 -> :sswitch_1
        0x50251299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 0

    .line 7126
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->addHistoricalOps_enforcePermission()V

    .line 7128
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/HistoricalRegistryInterface;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    return-void
.end method

.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 0

    .line 3146
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkAudioOperation(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkAudioOperationImpl(IIILjava/lang/String;)I
    .locals 1

    .line 3150
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AudioRestrictionManager;->checkAudioOperation(IIILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    return p2

    .line 3155
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 7

    .line 2971
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2978
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 7

    .line 2985
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2992
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public final checkOperationImpl(IILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 8

    .line 2999
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->shouldUseNewCheckOp()Z

    move-result v1

    const/4 v7, 0x1

    if-nez v1, :cond_3

    .line 3000
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3001
    invoke-virtual {p0, p5}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkOperationImpl returned MODE_IGNORED as virtualDeviceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 3006
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3007
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    return v0

    .line 3010
    :cond_1
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v7

    :cond_2
    move-object v3, v1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 3017
    const-string v6, "checkOperation"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->validateOpRequest(IILjava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    return v7

    :cond_4
    :goto_0
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 3025
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->getAppOpMode(IILjava/lang/String;Ljava/lang/String;IZZ)I

    move-result v0

    return v0
.end method

.method public checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 2944
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2951
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 7

    .line 2958
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2965
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 9

    .line 3191
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 3193
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3196
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_1

    .line 3197
    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService;->isPackageExisted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3198
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/android/server/appop/AppOpsService;->filterAppAccessUnlocked(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v8

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :catch_0
    return v8
.end method

.method public final checkSystemUid(Ljava/lang/String;)V
    .locals 1

    .line 7438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    return-void

    .line 7440
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must by called by the system"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearHistory()V
    .locals 0

    .line 7142
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->clearHistory_enforcePermission()V

    .line 7144
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0}, Lcom/android/server/appop/HistoricalRegistryInterface;->clearAllHistory()V

    return-void
.end method

.method public final collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ZI)V
    .locals 19

    .line 3707
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3709
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3711
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3713
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    and-int/lit8 v1, p5, 0x9

    if-eqz v1, :cond_0

    if-eqz p7, :cond_0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 3716
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v1

    :goto_0
    move/from16 v15, p1

    move-object/from16 v14, p2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v9, v1

    :goto_1
    move-wide/from16 v17, v7

    goto/16 :goto_5

    :cond_0
    move-object/from16 v9, p0

    goto :goto_0

    .line 3720
    :goto_2
    :try_start_2
    invoke-virtual {v9, v14, v15}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v10

    .line 3721
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/RemoteCallbackList;

    if-nez v11, :cond_1

    .line 3723
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3763
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v12, 0x1

    move v13, v12

    .line 3726
    :try_start_3
    new-array v12, v13, [Z

    const/4 v1, 0x0

    aput-boolean v1, v12, v1

    move v3, v1

    :goto_3
    move/from16 v2, p8

    if-ge v3, v2, :cond_4

    move v2, v0

    .line 3732
    new-instance v0, Landroid/app/AsyncNotedAppOp;

    .line 3733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v4, p6

    move-wide/from16 v17, v7

    move v7, v1

    move v8, v3

    move/from16 v1, p3

    move-object/from16 v3, p4

    :try_start_4
    invoke-direct/range {v0 .. v6}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    .line 3734
    aput-boolean v7, v12, v7

    move-object v1, v10

    .line 3735
    new-instance v10, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;

    move-object v3, v11

    move-object v11, v0

    move-object v0, v3

    move-object/from16 v16, p4

    move v3, v13

    move/from16 v13, p3

    invoke-direct/range {v10 .. v16}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;-><init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 3747
    aget-boolean v4, v12, v7

    if-nez v4, :cond_3

    .line 3748
    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 3751
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3752
    iget-object v5, v9, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 3755
    :cond_2
    :goto_4
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3756
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_3

    .line 3757
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v4, v8, 0x1

    move/from16 v15, p1

    move-object/from16 v14, p2

    move-object v11, v0

    move-object v10, v1

    move v0, v2

    move v13, v3

    move v3, v4

    move v1, v7

    move-wide/from16 v7, v17

    goto :goto_3

    :cond_4
    move-wide/from16 v17, v7

    .line 3761
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3763
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3761
    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-wide/from16 v17, v7

    .line 3763
    :goto_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3764
    throw v0
.end method

.method public collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    .line 0
    return-void
.end method

.method public final collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1740
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1742
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1740
    const-string v2, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/16 v1, 0x7d0

    if-nez p2, :cond_3

    .line 1747
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 1748
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 1749
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 1750
    iget v4, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    if-le v2, v1, :cond_2

    goto :goto_5

    .line 1756
    :cond_2
    invoke-static {v3, p3}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v3

    .line 1757
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v3, v0

    .line 1761
    :goto_3
    array-length v4, p2

    if-ge v0, v4, :cond_6

    .line 1762
    aget v4, p2, v0

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    if-eqz v4, :cond_8

    if-nez v2, :cond_4

    .line 1765
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    :cond_4
    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    if-le v3, v1, :cond_7

    :cond_6
    move-object p2, v2

    move v2, v3

    goto :goto_5

    .line 1773
    :cond_7
    invoke-static {v4, p3}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    .line 1774
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v3, v4

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    if-le v2, v1, :cond_a

    .line 1781
    const-string p0, "AppOps"

    const-string p1, "The number of attributed op entries has exceeded the threshold. This could be due to DoS attack from malicious apps. The result is throttled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object p2
.end method

.method public collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .locals 5

    .line 7258
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 7260
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7261
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    return-object v3

    .line 7265
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 7266
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 7265
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 7268
    monitor-enter p0

    .line 7269
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 7270
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 7271
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7272
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 7271
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;
    .locals 5

    .line 1793
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v0, "default:0"

    .line 1794
    invoke-interface {p0, p1, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(ILjava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 1800
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 1806
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1808
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    .line 1809
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v2, p2, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    .line 1812
    :cond_3
    :goto_1
    array-length v0, p2

    if-ge v1, v0, :cond_6

    .line 1813
    aget v0, p2, v1

    .line 1814
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_5

    if-nez p1, :cond_4

    .line 1816
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1818
    :cond_4
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v2, v0, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object p1
.end method

.method public final createSandboxUidStateIfNotExistsForAppLocked(ILandroid/util/SparseBooleanArray;)V
    .locals 2

    .line 4890
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    return-void

    .line 4893
    :cond_0
    invoke-static {p1}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 4895
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4897
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    return-void
.end method

.method public final deferResetOpToDpm(ILjava/lang/String;I)V
    .locals 0

    .line 2829
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManagerInternal;->resetOp(ILjava/lang/String;I)V

    return-void
.end method

.method public final doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V
    .locals 12

    .line 1682
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez p0, :cond_0

    goto :goto_4

    .line 1687
    :cond_0
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 1689
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1690
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 1692
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    .line 1693
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v0

    :goto_2
    if-ge v7, v6, :cond_2

    .line 1695
    iget-object v8, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1696
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 1697
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move v10, v0

    :goto_3
    if-ge v10, v9, :cond_1

    .line 1699
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AttributedOp;

    invoke-interface {p2, v11}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public final doForAllAttributedOpsLocked(Ljava/util/function/Consumer;)V
    .locals 3

    .line 1673
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1675
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1676
    invoke-virtual {p0, v2, p1}, Lcom/android/server/appop/AppOpsService;->doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 35
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 6368
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v4, "AppOps"

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4b

    :cond_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v5, 0xa

    if-eqz v0, :cond_15

    move v6, v4

    move v7, v6

    move v8, v5

    const/16 p1, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v4, v3

    move v5, v7

    .line 6385
    :goto_0
    array-length v14, v0

    if-ge v9, v14, :cond_14

    .line 6386
    aget-object v14, v0, v9

    .line 6387
    const-string v13, "-h"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 6388
    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 6390
    :cond_1
    const-string v13, "-a"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move/from16 v17, p1

    goto/16 :goto_4

    .line 6393
    :cond_2
    const-string v13, "--op"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    add-int/lit8 v9, v9, 0x1

    .line 6395
    array-length v7, v0

    if-lt v9, v7, :cond_3

    .line 6396
    const-string v0, "No argument for --op option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6399
    :cond_3
    aget-object v7, v0, v9

    invoke-static {v7, v2}, Lcom/android/server/appop/AppOpsService$Shell;->-$$Nest$smstrOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v7

    or-int/lit8 v12, v12, 0x8

    if-gez v7, :cond_12

    goto/16 :goto_4b

    .line 6404
    :cond_4
    const-string v13, "--package"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    add-int/lit8 v9, v9, 0x1

    .line 6406
    array-length v3, v0

    if-lt v9, v3, :cond_5

    .line 6407
    const-string v0, "No argument for --package option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6410
    :cond_5
    aget-object v3, v0, v9

    .line 6413
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v19, v4

    move/from16 v20, v5

    const-wide/32 v4, 0xc02000

    const/4 v14, 0x0

    :try_start_1
    invoke-interface {v13, v3, v4, v5, v14}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object/from16 v19, v4

    move/from16 v20, v5

    :catch_1
    :goto_1
    if-gez v6, :cond_6

    .line 6419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6422
    :cond_6
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    or-int/lit8 v12, v12, 0x3

    move v6, v4

    :goto_2
    move-object/from16 v4, v19

    :goto_3
    move/from16 v5, v20

    goto/16 :goto_4

    :cond_7
    move-object/from16 v19, v4

    move/from16 v20, v5

    .line 6424
    const-string v4, "--attributionTag"

    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v9, v9, 0x1

    .line 6426
    array-length v4, v0

    if-lt v9, v4, :cond_8

    .line 6427
    const-string v0, "No argument for --attributionTag option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6430
    :cond_8
    aget-object v4, v0, v9

    or-int/lit8 v12, v12, 0x4

    goto :goto_3

    .line 6432
    :cond_9
    const-string v4, "--mode"

    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v9, v9, 0x1

    .line 6434
    array-length v4, v0

    if-lt v9, v4, :cond_a

    .line 6435
    const-string v0, "No argument for --mode option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6438
    :cond_a
    aget-object v4, v0, v9

    invoke-static {v4, v2}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v4

    if-gez v4, :cond_b

    goto/16 :goto_4b

    :cond_b
    move v5, v4

    move-object/from16 v4, v19

    goto/16 :goto_4

    .line 6442
    :cond_c
    const-string v4, "--watchers"

    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v11, p1

    goto :goto_2

    .line 6444
    :cond_d
    const-string v4, "--include-discrete"

    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v9, v9, 0x1

    .line 6446
    array-length v4, v0

    if-lt v9, v4, :cond_e

    .line 6447
    const-string v0, "No argument for --include-discrete option"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6451
    :cond_e
    :try_start_2
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v15, p1

    move v8, v4

    goto :goto_2

    .line 6453
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong parameter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6457
    :cond_f
    const-string v4, "--history"

    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v10, p1

    goto/16 :goto_2

    .line 6459
    :cond_10
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v4, 0x2d

    if-ne v5, v4, :cond_11

    .line 6460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6462
    :cond_11
    const-string v4, "--uid-state-changes"

    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move/from16 v16, p1

    goto/16 :goto_2

    :cond_12
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 6465
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_14
    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object v0, v3

    move v14, v7

    move v4, v12

    move/from16 v21, v16

    move/from16 v22, v17

    move-object/from16 v3, v19

    move/from16 v13, v20

    move/from16 v16, v8

    move/from16 v17, v10

    move/from16 v19, v11

    move/from16 v20, v15

    move v15, v6

    goto :goto_5

    :cond_15
    const/16 p1, 0x1

    move-object v0, v3

    move v13, v4

    move v14, v13

    move v15, v14

    move/from16 v16, v5

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 6471
    :goto_5
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v7, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6472
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 6473
    monitor-enter p0

    .line 6474
    :try_start_3
    const-string v5, "Current AppOps Service state:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v17, :cond_16

    if-nez v19, :cond_16

    .line 6476
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {v5, v2}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v8, v1

    goto/16 :goto_4c

    .line 6478
    :cond_16
    :goto_6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    move-object v11, v8

    .line 6479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 6480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 6481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    if-nez v4, :cond_18

    if-gez v13, :cond_18

    .line 6483
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v10, :cond_18

    if-nez v19, :cond_18

    if-nez v17, :cond_18

    .line 6485
    const-string v10, "  Profile owners:"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 6486
    :goto_7
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v10, v12, :cond_17

    .line 6487
    const-string v12, "    User #"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6488
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 6489
    const-string v12, ": "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6490
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v2, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 6491
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 6493
    :cond_17
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 6496
    :cond_18
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-lez v10, :cond_20

    if-nez v17, :cond_20

    move-object/from16 p3, v3

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v23, 0x0

    .line 6498
    :goto_8
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v10, v3, :cond_1f

    if-ltz v14, :cond_19

    .line 6499
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-eq v14, v3, :cond_19

    move/from16 v24, v4

    move-object/from16 v26, v7

    goto/16 :goto_b

    .line 6503
    :cond_19
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move/from16 v24, v4

    move-object/from16 v26, v7

    move/from16 v25, v23

    const/4 v4, 0x0

    const/16 v23, 0x0

    .line 6504
    :goto_9
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v4, v7, :cond_1e

    .line 6505
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/OnOpModeChangedListener;

    if-eqz v0, :cond_1a

    .line 6507
    invoke-virtual {v7}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v27

    move-object/from16 v28, v3

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v15, v3, :cond_1b

    goto :goto_a

    :cond_1a
    move-object/from16 v28, v3

    :cond_1b
    if-nez v12, :cond_1c

    .line 6512
    const-string v3, "  Op mode watchers:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v12, p1

    :cond_1c
    if-nez v23, :cond_1d

    .line 6516
    const-string v3, "    Op "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6517
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6518
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v23, p1

    .line 6521
    :cond_1d
    const-string v3, "      #"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6522
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v25, p1

    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v28

    goto :goto_9

    :cond_1e
    move/from16 v23, v25

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v24

    move-object/from16 v7, v26

    goto/16 :goto_8

    :cond_1f
    move/from16 v24, v4

    move-object/from16 v26, v7

    goto :goto_c

    :cond_20
    move-object/from16 p3, v3

    move/from16 v24, v4

    move-object/from16 v26, v7

    const/16 v23, 0x0

    .line 6526
    :goto_c
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_24

    if-gez v14, :cond_24

    if-nez v17, :cond_24

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6528
    :goto_d
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_24

    if-eqz v0, :cond_21

    .line 6529
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    goto :goto_f

    :cond_21
    if-nez v4, :cond_22

    .line 6534
    const-string v4, "  Package mode watchers:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v4, p1

    .line 6537
    :cond_22
    const-string v7, "    Pkg "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6538
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6539
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    const/4 v10, 0x0

    .line 6540
    :goto_e
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-ge v10, v12, :cond_23

    .line 6541
    const-string v12, "      #"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, ": "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6542
    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_23
    move/from16 v23, p1

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 6547
    :cond_24
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_27

    if-gez v14, :cond_27

    if-nez v17, :cond_27

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6549
    :goto_10
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_27

    .line 6550
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz v0, :cond_25

    .line 6552
    invoke-virtual {v7}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    if-eq v15, v10, :cond_25

    goto :goto_11

    :cond_25
    if-nez v4, :cond_26

    .line 6557
    const-string v4, "  All op mode watchers:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v4, p1

    .line 6560
    :cond_26
    const-string v10, "    "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6561
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6562
    const-string v10, ": "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v23, p1

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 6565
    :cond_27
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_30

    if-gez v13, :cond_30

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 6568
    :goto_12
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v3, v12, :cond_2f

    .line 6569
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 6570
    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 6571
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v23

    if-gtz v23, :cond_28

    goto :goto_13

    :cond_28
    const/4 v4, 0x0

    .line 6574
    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v4, v23

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    if-ltz v14, :cond_29

    .line 6575
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v23

    if-gez v23, :cond_29

    goto :goto_13

    :cond_29
    if-eqz v0, :cond_2a

    .line 6578
    iget v7, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 6579
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v15, v7, :cond_2a

    :goto_13
    move/from16 v23, v3

    goto :goto_16

    :cond_2a
    if-nez v10, :cond_2b

    .line 6583
    const-string v7, "  All op active watchers:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v10, p1

    .line 6586
    :cond_2b
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6587
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 6588
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    .line 6587
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6589
    const-string v7, " ->"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6590
    const-string v7, "        ["

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6591
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v7

    move/from16 v23, v3

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v7, :cond_2e

    if-lez v3, :cond_2c

    move/from16 v28, v7

    const/16 v7, 0x20

    .line 6594
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_15

    :cond_2c
    move/from16 v28, v7

    .line 6596
    :goto_15
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v28, -0x1

    if-ge v3, v7, :cond_2d

    const/16 v7, 0x2c

    .line 6598
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(C)V

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v28

    goto :goto_14

    .line 6601
    :cond_2e
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6602
    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6603
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_16
    add-int/lit8 v3, v23, 0x1

    goto/16 :goto_12

    :cond_2f
    move/from16 v23, p1

    .line 6606
    :cond_30
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_3a

    if-gez v13, :cond_3a

    .line 6610
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_17
    if-ge v4, v3, :cond_39

    .line 6612
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 6613
    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 6614
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-gtz v12, :cond_31

    :goto_18
    move/from16 v23, v3

    goto :goto_19

    :cond_31
    const/4 v12, 0x0

    .line 6618
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v12, v23

    check-cast v12, Lcom/android/server/appop/AppOpsService$StartedCallback;

    if-ltz v14, :cond_32

    .line 6619
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v23

    if-gez v23, :cond_32

    goto :goto_18

    :cond_32
    if-eqz v0, :cond_33

    move/from16 v23, v3

    .line 6623
    iget v3, v12, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    .line 6624
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v15, v3, :cond_34

    :goto_19
    move/from16 v28, v4

    goto :goto_1c

    :cond_33
    move/from16 v23, v3

    :cond_34
    if-nez v7, :cond_35

    .line 6629
    const-string v3, "  All op started watchers:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v7, p1

    .line 6633
    :cond_35
    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6634
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 6635
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 6634
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6636
    const-string v3, " ->"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6638
    const-string v3, "        ["

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6639
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v28, v4

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_38

    if-lez v4, :cond_36

    move/from16 v29, v3

    const/16 v3, 0x20

    .line 6642
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1b

    :cond_36
    move/from16 v29, v3

    .line 6645
    :goto_1b
    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v29, -0x1

    if-ge v4, v3, :cond_37

    const/16 v3, 0x2c

    .line 6647
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    :cond_37
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v29

    goto :goto_1a

    .line 6650
    :cond_38
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6652
    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6653
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_1c
    add-int/lit8 v4, v28, 0x1

    move/from16 v3, v23

    goto/16 :goto_17

    :cond_39
    move/from16 v23, p1

    .line 6656
    :cond_3a
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_43

    if-gez v13, :cond_43

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6659
    :goto_1d
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_42

    .line 6660
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 6661
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 6662
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-gtz v10, :cond_3b

    goto :goto_1e

    :cond_3b
    const/4 v10, 0x0

    .line 6665
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appop/AppOpsService$NotedCallback;

    if-ltz v14, :cond_3c

    .line 6666
    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v18

    if-gez v18, :cond_3c

    goto :goto_1e

    :cond_3c
    if-eqz v0, :cond_3d

    .line 6669
    iget v10, v12, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 6670
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    if-eq v15, v10, :cond_3d

    :goto_1e
    move/from16 v23, v3

    move/from16 v28, v4

    const/16 v4, 0x2c

    goto/16 :goto_22

    :cond_3d
    if-nez v4, :cond_3e

    .line 6674
    const-string v4, "  All op noted watchers:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v4, p1

    .line 6677
    :cond_3e
    const-string v10, "    "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6678
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 6679
    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 6678
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6680
    const-string v10, " ->"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6681
    const-string v10, "        ["

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6682
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v10

    move/from16 v23, v3

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v10, :cond_41

    if-lez v3, :cond_3f

    move/from16 v28, v4

    const/16 v4, 0x20

    .line 6685
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_20

    :cond_3f
    move/from16 v28, v4

    const/16 v4, 0x20

    .line 6687
    :goto_20
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v10, -0x1

    if-ge v3, v4, :cond_40

    const/16 v4, 0x2c

    .line 6689
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_21

    :cond_40
    const/16 v4, 0x2c

    :goto_21
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v28

    goto :goto_1f

    :cond_41
    move/from16 v28, v4

    const/16 v4, 0x2c

    .line 6692
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6693
    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6694
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_22
    add-int/lit8 v3, v23, 0x1

    move/from16 v4, v28

    goto/16 :goto_1d

    :cond_42
    move/from16 v23, p1

    .line 6697
    :cond_43
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v3}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    move-result v3

    if-eqz v3, :cond_46

    if-gez v14, :cond_46

    if-eqz v0, :cond_46

    if-gez v13, :cond_46

    if-nez v19, :cond_46

    .line 6699
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v3, v2}, Lcom/android/server/appop/AudioRestrictionManager;->dump(Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_45

    if-eqz v23, :cond_44

    goto :goto_23

    :cond_44
    const/4 v3, 0x0

    goto :goto_24

    :cond_45
    :goto_23
    move/from16 v3, p1

    :goto_24
    move/from16 v23, v3

    :cond_46
    if-eqz v23, :cond_47

    .line 6702
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_47
    const/4 v3, 0x0

    .line 6704
    :goto_25
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_6d

    .line 6705
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$UidState;

    .line 6707
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v10, v4, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v12, "default:0"

    .line 6708
    invoke-interface {v7, v10, v12}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(ILjava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v7

    .line 6710
    iget-object v10, v4, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v19, :cond_48

    if-eqz v17, :cond_49

    :cond_48
    move/from16 v25, v3

    move-wide/from16 v29, v5

    move-wide v5, v8

    move/from16 v4, v24

    move-object/from16 v10, v26

    const/16 v18, 0x0

    move-object/from16 v3, p3

    move-object v8, v1

    goto/16 :goto_45

    :cond_49
    if-gez v14, :cond_4b

    if-nez v0, :cond_4b

    if-ltz v13, :cond_4a

    goto :goto_26

    :cond_4a
    move/from16 v25, v3

    move-wide/from16 v27, v8

    move-object/from16 v33, v11

    goto/16 :goto_3a

    :cond_4b
    :goto_26
    if-ltz v14, :cond_4d

    if-eqz v7, :cond_4c

    .line 6717
    invoke-virtual {v7, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v12

    if-ltz v12, :cond_4c

    goto :goto_27

    :cond_4c
    const/4 v12, 0x0

    goto :goto_28

    :cond_4d
    :goto_27
    move/from16 v12, p1

    :goto_28
    if-eqz v0, :cond_4f

    move-wide/from16 v27, v8

    .line 6718
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ne v15, v8, :cond_4e

    goto :goto_29

    :cond_4e
    const/4 v8, 0x0

    goto :goto_2a

    :cond_4f
    move-wide/from16 v27, v8

    :goto_29
    move/from16 v8, p1

    :goto_2a
    if-gez v13, :cond_50

    move/from16 v9, p1

    goto :goto_2b

    :cond_50
    const/4 v9, 0x0

    :goto_2b
    if-nez v9, :cond_53

    if-eqz v7, :cond_53

    move/from16 v25, v3

    const/4 v3, 0x0

    :goto_2c
    if-nez v9, :cond_52

    move/from16 v29, v8

    .line 6721
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_54

    .line 6722
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    if-ne v8, v13, :cond_51

    move/from16 v9, p1

    :cond_51
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v29

    goto :goto_2c

    :cond_52
    :goto_2d
    move/from16 v29, v8

    goto :goto_2e

    :cond_53
    move/from16 v25, v3

    goto :goto_2d

    :cond_54
    :goto_2e
    if-eqz v10, :cond_5d

    move/from16 v8, v29

    const/4 v3, 0x0

    :goto_2f
    if-eqz v12, :cond_55

    if-eqz v8, :cond_55

    if-nez v9, :cond_56

    :cond_55
    move/from16 v29, v8

    goto :goto_30

    :cond_56
    move/from16 v29, v8

    goto/16 :goto_38

    .line 6729
    :goto_30
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v3, v8, :cond_5d

    .line 6731
    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v12, :cond_57

    if-eqz v8, :cond_57

    .line 6732
    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v30

    if-ltz v30, :cond_57

    move/from16 v12, p1

    :cond_57
    move/from16 v30, v3

    if-nez v9, :cond_5b

    const/4 v3, 0x0

    :goto_31
    if-nez v9, :cond_5a

    move/from16 v31, v9

    .line 6736
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_59

    .line 6737
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Op;

    move/from16 v32, v3

    .line 6738
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    move-object/from16 v33, v11

    iget-object v11, v9, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move/from16 v34, v12

    iget v12, v9, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v9, v9, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 6741
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 6738
    invoke-interface {v3, v11, v12, v9}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v13, :cond_58

    move/from16 v9, p1

    goto :goto_32

    :cond_58
    move/from16 v9, v31

    :goto_32
    add-int/lit8 v3, v32, 0x1

    move-object/from16 v11, v33

    move/from16 v12, v34

    goto :goto_31

    :cond_59
    :goto_33
    move-object/from16 v33, v11

    move/from16 v34, v12

    goto :goto_34

    :cond_5a
    move/from16 v31, v9

    goto :goto_33

    :goto_34
    move/from16 v9, v31

    goto :goto_35

    :cond_5b
    move-object/from16 v33, v11

    move/from16 v34, v12

    :goto_35
    if-nez v29, :cond_5c

    .line 6747
    iget-object v3, v8, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    move/from16 v8, p1

    goto :goto_36

    :cond_5c
    move/from16 v8, v29

    :goto_36
    add-int/lit8 v3, v30, 0x1

    move-object/from16 v11, v33

    move/from16 v12, v34

    goto/16 :goto_2f

    :goto_37
    move/from16 v8, v29

    goto :goto_39

    :cond_5d
    :goto_38
    move-object/from16 v33, v11

    goto :goto_37

    :goto_39
    if-eqz v12, :cond_5e

    if-eqz v8, :cond_5e

    if-nez v9, :cond_5f

    :cond_5e
    move-object/from16 v3, p3

    move-object v8, v1

    move-wide/from16 v29, v5

    move/from16 v4, v24

    move-object/from16 v10, v26

    move-wide/from16 v5, v27

    move-object/from16 v11, v33

    const/16 v18, 0x0

    goto/16 :goto_45

    .line 6757
    :cond_5f
    :goto_3a
    const-string v3, "  Uid "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v4, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v2, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6758
    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/appop/AppOpsService$UidState;->dump(Ljava/io/PrintWriter;J)V

    if-eqz v7, :cond_62

    .line 6762
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v3, :cond_62

    .line 6764
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 6765
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    if-ltz v14, :cond_60

    if-eq v14, v8, :cond_60

    goto :goto_3c

    :cond_60
    if-ltz v13, :cond_61

    if-eq v13, v9, :cond_61

    goto :goto_3c

    .line 6772
    :cond_61
    const-string v11, "      "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6773
    const-string v8, ": mode="

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_62
    if-nez v10, :cond_64

    :cond_63
    move-object/from16 v3, p3

    move-object v8, v1

    move-wide/from16 v29, v5

    move/from16 v4, v24

    move-object/from16 v10, v26

    move-wide/from16 v5, v27

    move-object/from16 v11, v33

    const/16 v18, 0x0

    goto/16 :goto_44

    :cond_64
    const/4 v3, 0x0

    .line 6781
    :goto_3d
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_63

    .line 6782
    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v0, :cond_66

    .line 6783
    iget-object v7, v4, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_66

    :cond_65
    move-object v8, v1

    move-wide/from16 v29, v5

    move-object/from16 v23, v10

    move/from16 v4, v24

    move-object/from16 v10, v26

    move-wide/from16 v5, v27

    move-object/from16 v11, v33

    const/16 v18, 0x0

    move/from16 v24, v3

    move-object/from16 v3, p3

    goto/16 :goto_43

    :cond_66
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6787
    :goto_3e
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v7, v9, :cond_65

    .line 6788
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Op;

    .line 6789
    iget v11, v9, Lcom/android/server/appop/AppOpsService$Op;->op:I

    if-ltz v14, :cond_67

    if-eq v14, v11, :cond_67

    move/from16 v23, v3

    move-wide/from16 v29, v5

    goto :goto_3f

    :cond_67
    if-ltz v13, :cond_68

    .line 6793
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    move/from16 v23, v3

    iget-object v3, v9, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-wide/from16 v29, v5

    iget v5, v9, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 6798
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 6795
    invoke-interface {v12, v3, v11, v5}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v3

    if-eq v13, v3, :cond_69

    :goto_3f
    move-object/from16 v3, v26

    move-object/from16 v26, v4

    move/from16 v4, v24

    move/from16 v24, v23

    move-object/from16 v23, v10

    move-object v10, v3

    move-object/from16 v3, p3

    move/from16 v31, v8

    move-wide/from16 v5, v27

    move-object/from16 v11, v33

    const/16 v18, 0x0

    move-object v8, v1

    move/from16 v27, v7

    goto/16 :goto_42

    :cond_68
    move/from16 v23, v3

    move-wide/from16 v29, v5

    :cond_69
    if-nez v8, :cond_6a

    .line 6802
    const-string v3, "    Package "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v31, p1

    goto :goto_40

    :cond_6a
    move/from16 v31, v8

    .line 6805
    :goto_40
    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6806
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6807
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v5, v9, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v6, v9, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v8, v9, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 6812
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 6809
    invoke-interface {v3, v5, v6, v8}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v3

    .line 6808
    invoke-static {v3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v3

    .line 6807
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6813
    invoke-static {v11}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    if-eq v3, v11, :cond_6c

    .line 6815
    const-string v5, " / switch "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6816
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6817
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v5, :cond_6b

    .line 6820
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    goto :goto_41

    .line 6821
    :cond_6b
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v5, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 6824
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 6821
    invoke-interface {v3, v6, v8, v5}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v3

    .line 6825
    :goto_41
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6827
    :cond_6c
    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6828
    const-string v12, "        "

    move-object/from16 v3, v26

    move-object/from16 v26, v4

    move/from16 v4, v24

    move/from16 v24, v23

    move-object/from16 v23, v10

    move-object v10, v3

    move-wide/from16 v5, v27

    move/from16 v27, v7

    move-object v7, v9

    move-wide v8, v5

    move-object/from16 v3, p3

    move-wide/from16 v5, v29

    move-object/from16 v11, v33

    const/16 v18, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v29, v5

    move-wide v5, v8

    move-object v8, v1

    :goto_42
    add-int/lit8 v7, v27, 0x1

    move-object/from16 p3, v3

    move-wide/from16 v27, v5

    move-object v1, v8

    move-object/from16 v33, v11

    move/from16 v3, v24

    move-wide/from16 v5, v29

    move/from16 v8, v31

    move/from16 v24, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v10

    move-object/from16 v10, v23

    goto/16 :goto_3e

    :goto_43
    add-int/lit8 v1, v24, 0x1

    move-object/from16 p3, v3

    move/from16 v24, v4

    move-wide/from16 v27, v5

    move-object/from16 v26, v10

    move-object/from16 v33, v11

    move-object/from16 v10, v23

    move-wide/from16 v5, v29

    move v3, v1

    move-object v1, v8

    goto/16 :goto_3d

    :goto_44
    move/from16 v23, p1

    :goto_45
    add-int/lit8 v1, v25, 0x1

    move-object/from16 p3, v3

    move/from16 v24, v4

    move-object/from16 v26, v10

    move v3, v1

    move-object v1, v8

    move-wide v8, v5

    move-wide/from16 v5, v29

    goto/16 :goto_25

    :cond_6d
    move-object/from16 v3, p3

    move-object v8, v1

    move/from16 v4, v24

    move-object/from16 v10, v26

    const/16 v18, 0x0

    if-eqz v23, :cond_6e

    .line 6834
    :try_start_4
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_46

    :catchall_1
    move-exception v0

    goto/16 :goto_4c

    :cond_6e
    :goto_46
    if-gez v13, :cond_70

    if-nez v19, :cond_70

    if-eqz v17, :cond_6f

    goto :goto_47

    :cond_6f
    move/from16 v13, v18

    goto :goto_48

    :cond_70
    :goto_47
    move/from16 v13, p1

    .line 6838
    :goto_48
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    invoke-interface {v1, v2, v14, v0, v13}, Lcom/android/server/appop/AppOpsRestrictions;->dumpRestrictions(Ljava/io/PrintWriter;ILjava/lang/String;Z)V

    if-nez v17, :cond_72

    if-nez v19, :cond_72

    .line 6841
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 6842
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v1

    if-eqz v1, :cond_71

    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/policy/AppOpsPolicy;

    if-eqz v1, :cond_71

    .line 6844
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/AppOpsPolicy;

    .line 6845
    invoke-virtual {v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->dumpTags(Ljava/io/PrintWriter;)V

    goto :goto_49

    .line 6847
    :cond_71
    const-string v1, "  AppOps policy not set."

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_72
    :goto_49
    if-nez v22, :cond_73

    if-eqz v21, :cond_74

    .line 6852
    :cond_73
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 6853
    const-string v1, "Uid State Changes Event Log:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6854
    invoke-virtual {v8}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/server/appop/AppOpsUidStateTracker;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 6856
    :cond_74
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v17, :cond_75

    if-nez v19, :cond_75

    move v5, v4

    move-object v4, v0

    .line 6860
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    const-string v1, "  "

    move v7, v5

    move v6, v14

    move-object v5, v3

    move v3, v15

    invoke-interface/range {v0 .. v7}, Lcom/android/server/appop/HistoricalRegistryInterface;->dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V

    move v0, v3

    move-object v3, v4

    move v4, v7

    goto :goto_4a

    :cond_75
    move-object v5, v3

    move v6, v14

    move-object v3, v0

    move v0, v15

    :goto_4a
    if-eqz v20, :cond_76

    .line 6864
    const-string v1, "Discrete accesses: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v0

    .line 6865
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    const-string v9, "  "

    move-object v1, v5

    move v5, v4

    move-object v4, v1

    move-object/from16 v1, p2

    move-object v7, v10

    move-object v8, v11

    move/from16 v10, v16

    invoke-interface/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistryInterface;->dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    :cond_76
    :goto_4b
    return-void

    .line 6856
    :goto_4c
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public final dumpHelp(Ljava/io/PrintWriter;)V
    .locals 0

    .line 6215
    const-string p0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6216
    const-string p0, "  -h"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6217
    const-string p0, "    Print this help text."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6218
    const-string p0, "  --op [OP]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6219
    const-string p0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6220
    const-string p0, "  --mode [MODE]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6221
    const-string p0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6222
    const-string p0, "  --package [PACKAGE]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6223
    const-string p0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6224
    const-string p0, "  --attributionTag [attributionTag]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6225
    const-string p0, "    Limit output to data associated with the given attribution tag."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6226
    const-string p0, "  --include-discrete [n]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6227
    const-string p0, "    Include discrete ops limited to n per dimension. Use zero for no limit."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6228
    const-string p0, "  --watchers"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6229
    const-string p0, "    Only output the watcher sections."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6230
    const-string p0, "  --history"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6231
    const-string p0, "    Only output history."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6232
    const-string p0, "  --uid-state-changes"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6233
    const-string p0, "    Include logs about uid state changes."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 29

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    .line 6262
    invoke-virtual/range {p4 .. p5}, Lcom/android/server/appop/AppOpsService$Op;->createSingleAttributionEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    .line 6263
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 6265
    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v5

    .line 6267
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_6

    .line 6269
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 6271
    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v13

    .line 6272
    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v14

    move v15, v8

    .line 6274
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v7

    const-wide/16 v16, 0x0

    .line 6275
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v9

    move-object/from16 v18, v5

    move/from16 v19, v6

    .line 6276
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v5

    .line 6277
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 6283
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 6284
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v20

    .line 6285
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v13

    move-object/from16 v28, v20

    move-object/from16 v20, v4

    move-object/from16 v4, v28

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    const/4 v13, -0x1

    move-object/from16 v20, v4

    move-object v4, v14

    :goto_1
    cmp-long v21, v7, v16

    move-wide/from16 v22, v11

    .line 6288
    const-string v11, "]"

    const-string v12, ", attributionTag="

    move/from16 v24, v15

    const-string v15, ", pkg="

    const-string/jumbo v1, "uid="

    move-wide/from16 v25, v9

    const-string v9, " proxy["

    const-string v10, ")"

    move-object/from16 v27, v11

    const-string v11, " ("

    if-lez v21, :cond_3

    .line 6289
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6290
    const-string v3, "Access: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6291
    invoke-static/range {v22 .. v23}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6292
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6293
    invoke-virtual {v2, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 6294
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6295
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v7, v7, p6

    .line 6296
    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6297
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    cmp-long v3, v5, v16

    if-lez v3, :cond_1

    .line 6299
    const-string v3, " duration="

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6300
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_1
    if-ltz v13, :cond_2

    .line 6303
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6304
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6305
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 6306
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6307
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6308
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6309
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v3, v27

    .line 6310
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v3, v27

    .line 6312
    :goto_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    :cond_3
    move-object/from16 v3, v27

    :goto_3
    cmp-long v5, v25, v16

    if-lez v5, :cond_5

    move-object/from16 v5, p10

    .line 6316
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6317
    const-string v6, "Reject: "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6318
    invoke-static/range {v22 .. v23}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v6, v25

    .line 6319
    invoke-virtual {v2, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 6320
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6321
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v6, v6, p6

    .line 6322
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6323
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ltz v13, :cond_4

    .line 6325
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6326
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6327
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 6328
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6329
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6330
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6331
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6332
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6334
    :cond_4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    :cond_5
    move-object/from16 v5, p10

    :goto_4
    add-int/lit8 v8, v24, 0x1

    move-object/from16 v1, p5

    move-object v3, v5

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v4, v20

    goto/16 :goto_0

    :cond_6
    move-object/from16 v1, p4

    move-object v5, v3

    const-wide/16 v16, 0x0

    .line 6338
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 6339
    const-string v3, "default:0"

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move-object/from16 v2, p5

    .line 6340
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp;

    .line 6342
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6345
    iget-object v2, v1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    move-wide/from16 v9, v16

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v2, :cond_7

    .line 6347
    iget-object v6, v1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 6348
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 6350
    invoke-virtual {v6}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 6351
    iget v6, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    int-to-long v11, v6

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 6354
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Running start at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v1, p2, v3

    .line 6355
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6356
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-wide/16 v1, 0x1

    cmp-long v1, v9, v1

    if-lez v1, :cond_8

    .line 6359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startNesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6360
    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    :cond_8
    return-void
.end method

.method public final dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v4, p6

    move-object/from16 v11, p11

    .line 6240
    iget-object v0, v4, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    const-string v2, "default:0"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/ArrayMap;

    .line 6243
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v0, 0x0

    move v14, v0

    :goto_0
    if-ge v14, v13, :cond_2

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    .line 6246
    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v15, p2

    .line 6245
    invoke-static {v0, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_0
    move-object/from16 v15, p2

    .line 6250
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=[\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6251
    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-wide/from16 v2, p4

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 6253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p6

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final enforceGetAppOpsStatsPermissionIfNeeded(ILjava/lang/String;)V
    .locals 2

    .line 1906
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1907
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1911
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 1913
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 1917
    :cond_1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.GET_APP_OPS_STATS"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final enforceManageAppOpsModes(III)V
    .locals 2

    .line 2111
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2114
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2115
    monitor-enter p0

    .line 2116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_1

    if-ltz p3, :cond_1

    .line 2117
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 2120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2123
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2124
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_APP_OPS_MODES"

    .line 2125
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x0

    .line 2124
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    .line 2123
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V
    .locals 3

    and-int/lit8 p0, p5, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    if-eq p1, v0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    .line 1928
    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_2

    :cond_1
    if-ne p1, v0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v1

    .line 1930
    :goto_1
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_2
    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_3

    .line 1934
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_3
    if-nez p2, :cond_4

    move p0, v2

    goto :goto_3

    :cond_4
    move p0, v1

    .line 1936
    :goto_3
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_4
    and-int/lit8 p0, p5, 0x4

    if-nez p0, :cond_6

    if-nez p3, :cond_5

    move p0, v2

    goto :goto_5

    :cond_5
    move p0, v1

    .line 1940
    :goto_5
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :cond_6
    and-int/lit8 p0, p5, 0x8

    if-eqz p0, :cond_7

    .line 1944
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_7
    if-nez p4, :cond_8

    move p0, v2

    goto :goto_6

    :cond_8
    move p0, v1

    .line 1946
    :goto_6
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_7
    const/16 p0, 0xf

    .line 1949
    invoke-static {p5, p0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1952
    invoke-static {p6, p7}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    cmp-long p0, p8, p6

    if-lez p0, :cond_9

    move v1, v2

    .line 1953
    :cond_9
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/16 p0, 0x1f

    .line 1954
    invoke-static {p10, p0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    return-void
.end method

.method public final evaluateForegroundMode(III)I
    .locals 0

    .line 7510
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTracker;->evalMode(III)I

    move-result p0

    return p0
.end method

.method public extractAsyncOps(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 3836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3838
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 3840
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3842
    monitor-enter p0

    .line 3843
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3844
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final filterAppAccessUnlocked(Ljava/lang/String;I)Z
    .locals 1

    .line 3218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 3219
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3220
    invoke-virtual {v0, p1, p0, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final finishChainsLocked(Landroid/util/SparseLongArray;)V
    .locals 1

    .line 1657
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda23;-><init>(Landroid/util/SparseLongArray;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->doForAllAttributedOpsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4324
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public finishOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 4331
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final finishOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 4337
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 4338
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4339
    invoke-virtual {p0, p6}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4340
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "finishOperationImpl was a no-op as virtualDeviceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppOps"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4344
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4348
    :cond_1
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_2

    :goto_0
    return-void

    .line 4353
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v7, 0x1

    move-object v1, p0

    move v5, p3

    move-object v6, p4

    move v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    .line 4436
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p4

    .line 4438
    iget-boolean v0, p4, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p7

    .line 4446
    :goto_0
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 4448
    :goto_1
    :try_start_1
    iget-boolean v6, p4, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v7, p4, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p5

    move-object v5, v4

    move-object v4, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p4

    move-object v4, v5

    if-nez p4, :cond_2

    .line 4451
    const-string p1, "AppOps"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Operation not found: uid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " pkg="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ") op="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4453
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4451
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    :cond_2
    move-object v1, p0

    move-object v3, p1

    move v6, p3

    move-object v2, p4

    move/from16 v5, p8

    .line 4457
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->getAttributedOpWithClientId(Lcom/android/server/appop/AppOpsService$Op;Landroid/os/IBinder;Ljava/lang/String;IZ)Lcom/android/server/appop/AttributedOp;

    move-result-object p3

    if-nez p3, :cond_3

    .line 4460
    const-string p1, "AppOps"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attribution not found: uid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " pkg="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ") op="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4462
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4460
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4463
    monitor-exit p0

    return-void

    .line 4466
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p3}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_2

    .line 4469
    :cond_4
    const-string p1, "AppOps"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Operation not started: uid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " pkg="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ") op="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4471
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4469
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4467
    :cond_5
    :goto_2
    invoke-virtual {p3, p1}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 4473
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4442
    const-string p2, "finishOperation"

    invoke-virtual {p0, p5, p1, p2}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    return-void
.end method

.method public final finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    .line 4423
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    .locals 0

    .line 4361
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    return-void
.end method

.method public final finishProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .locals 11

    .line 4375
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 4376
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4377
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 4378
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v7

    .line 4379
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v6

    .line 4380
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v8

    move v9, v7

    .line 4381
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_0

    .line 4384
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 4386
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 4387
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4388
    invoke-virtual {p0, v6}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result p3

    const/4 v10, 0x0

    if-nez p3, :cond_1

    .line 4389
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "finishProxyOperationImpl was a no-op as virtualDeviceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppOps"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 4393
    :cond_1
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, v0, p3}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 4394
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, v8, p3}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    .line 4398
    :cond_2
    invoke-static {v3, v0}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    return-object v10

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    if-nez p4, :cond_4

    .line 4405
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 4409
    :cond_4
    invoke-static {v9, v8}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v10

    :cond_5
    move v8, v6

    move v5, v9

    move-object v6, p0

    .line 4415
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    :goto_1
    return-object v10
.end method

.method public finishProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;Z)V
    .locals 1

    .line 4368
    new-instance v0, Landroid/content/AttributionSource;

    invoke-direct {v0, p3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 4369
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    return-void
.end method

.method public final getAppOpMode(IILjava/lang/String;Ljava/lang/String;IZZ)I
    .locals 10

    const/4 v9, 0x1

    .line 3110
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3116
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    return v9

    .line 3120
    :cond_0
    monitor-enter p0

    .line 3121
    :try_start_1
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    move-object v1, p0

    move v3, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3123
    monitor-exit p0

    return v9

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 3125
    :cond_1
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->isOpAllowedForUid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3126
    monitor-exit p0

    return v0

    .line 3129
    :cond_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 3130
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 3131
    invoke-virtual {p0, p5, v0}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v5

    .line 3130
    invoke-interface {v3, p2, v5, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v3

    .line 3133
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    if-eq v3, v5, :cond_4

    if-eqz p6, :cond_3

    goto :goto_0

    .line 3134
    :cond_3
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/appop/AppOpsService;->evaluateForegroundMode(III)I

    move-result v3

    :goto_0
    monitor-exit p0

    return v3

    .line 3137
    :cond_4
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 3138
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 3137
    invoke-interface {v3, p3, v0, v5}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v3

    if-eqz p6, :cond_5

    goto :goto_1

    .line 3139
    :cond_5
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/appop/AppOpsService;->evaluateForegroundMode(III)I

    move-result v3

    :goto_1
    monitor-exit p0

    return v3

    .line 3140
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    .line 3112
    const-string v3, "getAppOpMode"

    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    return v9
.end method

.method public final getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;
    .locals 0

    .line 3777
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getAttributedOpWithClientId(Lcom/android/server/appop/AppOpsService$Op;Landroid/os/IBinder;Ljava/lang/String;IZ)Lcom/android/server/appop/AttributedOp;
    .locals 3

    .line 4478
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 4480
    invoke-virtual {p0, p4, v1}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 4479
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4481
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AttributedOp;

    if-nez p5, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_1

    .line 4485
    new-instance p5, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;

    invoke-direct {p5, p2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;-><init>(Landroid/os/IBinder;)V

    .line 4486
    invoke-virtual {v0, p5}, Lcom/android/server/appop/AttributedOp;->hasInProgressEvent(Ljava/util/function/Predicate;)Z

    move-result p5

    if-eqz p5, :cond_1

    return-object v0

    :cond_1
    const/4 p5, 0x0

    .line 4496
    :try_start_0
    iget v1, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p3, p5

    :goto_0
    const/4 v1, 0x1

    if-eqz p3, :cond_3

    if-eqz v0, :cond_2

    .line 4502
    new-instance p3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;

    invoke-direct {p3, p2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;-><init>(Landroid/os/IBinder;)V

    .line 4503
    invoke-virtual {v0, p3}, Lcom/android/server/appop/AttributedOp;->hasInProgressEvent(Ljava/util/function/Predicate;)Z

    move-result p3

    if-eqz p3, :cond_2

    move p3, v1

    goto :goto_1

    :cond_2
    move p3, p5

    :goto_1
    if-eqz p3, :cond_3

    :goto_2
    return-object v0

    .line 4512
    :cond_3
    iget-object p3, p1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 4513
    invoke-virtual {p0, p4, p1}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 4512
    invoke-virtual {p3, p0, p1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p1, 0x0

    .line 4514
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AttributedOp;

    if-eqz p0, :cond_4

    .line 4515
    new-instance p3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda16;

    invoke-direct {p3, p2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda16;-><init>(Landroid/os/IBinder;)V

    .line 4516
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AttributedOp;->hasInProgressEvent(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p5, v1

    :cond_4
    if-eqz p5, :cond_5

    return-object p0

    :cond_5
    return-object p1
.end method

.method public final getBypassforPackage(Lcom/android/server/pm/pkg/PackageState;)Landroid/app/AppOpsManager$RestrictionBypass;
    .locals 7

    .line 4956
    new-instance v0, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4957
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v2

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    .line 4959
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 4957
    const-string v6, "android.permission.EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS"

    invoke-virtual {p0, v6, v5, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1

    move v3, v4

    :cond_1
    invoke-direct {v0, v1, v2, v3}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    return-object v0
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1961
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    .line 1963
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 1965
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1966
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    .line 1967
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v3, p1

    if-ne v3, v2, :cond_1

    move-object/from16 v2, p12

    goto/16 :goto_3

    :cond_0
    move/from16 v3, p1

    .line 1970
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    move v1, v5

    .line 1971
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v2, v7, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    move v2, v5

    .line 1974
    :goto_1
    :try_start_0
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1975
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1976
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1974
    invoke-virtual {v11, v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v7

    .line 1977
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_4

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v5

    .line 1982
    :goto_2
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1984
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1982
    const-string v11, "android.permission.GET_HISTORICAL_APP_OPS_STATS"

    invoke-virtual {v8, v11, v9, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_5

    move v5, v6

    :cond_5
    if-nez v2, :cond_6

    if-nez v1, :cond_6

    if-nez v7, :cond_6

    if-nez v5, :cond_6

    .line 1989
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;

    move-object/from16 v2, p12

    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    move-object/from16 v2, p12

    .line 1993
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1994
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "getHistoricalOps"

    .line 1993
    const-string v8, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v1, v8, v5, v6, v7}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :goto_3
    const/4 v1, 0x0

    if-eqz v4, :cond_7

    .line 1998
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v17, v4

    goto :goto_4

    :cond_7
    move-object/from16 v17, v1

    :goto_4
    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_8

    .line 2002
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2003
    invoke-static {v4}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    goto :goto_5

    :cond_8
    move-object v4, v1

    :goto_5
    if-eqz v4, :cond_9

    .line 2008
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2007
    invoke-interface {v4, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_9
    move-object/from16 v23, v1

    .line 2011
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v12, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;

    invoke-direct {v12}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;-><init>()V

    iget-object v13, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    .line 2013
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 2014
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v24, v2

    .line 2011
    invoke-static/range {v12 .. v24}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 2016
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 2011
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catch_0
    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    .line 2023
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 2025
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2027
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2028
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string v5, "getHistoricalOps"

    .line 2027
    const-string v6, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v1, v6, v2, v3, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    .line 2031
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_1

    .line 2035
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2036
    invoke-static {v2}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 2041
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2040
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_2
    move-object v11, v1

    .line 2044
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    .line 2046
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2047
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v12, p12

    move-object v0, v1

    move-object v1, p0

    .line 2044
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 2048
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 2044
    invoke-virtual {v13, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getIoHandler()Landroid/os/Handler;
    .locals 0

    .line 8091
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;
    .locals 7

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    .line 5283
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5288
    :cond_0
    invoke-virtual {v0, p0, p1, v1, v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p0

    return-object p0
.end method

.method public final getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;
    .locals 6

    .line 5292
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5297
    :cond_0
    new-instance v0, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 5298
    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    if-eqz p4, :cond_2

    .line 5301
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    :cond_2
    return-object v0
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 8

    .line 1880
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->enforceGetAppOpsStatsPermissionIfNeeded(ILjava/lang/String;)V

    .line 1881
    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1883
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1885
    :cond_0
    monitor-enter p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    .line 1886
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    .line 1889
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1891
    :cond_1
    const-string p2, "default:0"

    invoke-virtual {v1, p0, p3, p2}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1893
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    .line 1896
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    new-instance p3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {p3, v0, p0, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1899
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1900
    monitor-exit v1

    return-object p1

    .line 1894
    :cond_3
    :goto_0
    monitor-exit v1

    return-object p1

    .line 1901
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;
    .locals 1

    const/4 v0, 0x0

    .line 5219
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 5224
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v0, :cond_2

    if-nez p6, :cond_1

    return-object p1

    .line 5229
    :cond_1
    new-instance v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v0, p2, p0}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 5230
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p6, :cond_5

    if-eqz p5, :cond_3

    .line 5235
    iput-object p5, v0, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    :cond_3
    if-eqz p3, :cond_5

    .line 5239
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_4

    .line 5241
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 5243
    :cond_4
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public final getPackageListAndResample()Ljava/util/List;
    .locals 1

    .line 7300
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageNamesForSampling()Ljava/util/List;

    move-result-object v0

    .line 7301
    monitor-enter p0

    .line 7302
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->resamplePackageAndAppOpLocked(Ljava/util/List;)V

    .line 7303
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 4910
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    .line 4911
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4913
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz p0, :cond_1

    return-object p0

    .line 4914
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PackageManagerInternal not loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;
    .locals 1

    .line 4924
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_0

    .line 4925
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 4927
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz p0, :cond_1

    return-object p0

    .line 4928
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PackageManagerLocal not loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPackageNamesForSampling()Ljava/util/List;
    .locals 8

    .line 7389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7390
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 7392
    invoke-virtual {v2}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v1

    .line 7393
    invoke-virtual {v1}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7395
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v7

    const-wide/16 v4, 0x1000

    .line 7394
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 7396
    invoke-virtual {p0, v3}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7397
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 1

    .line 1831
    const-string v0, "default:0"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1833
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackagesForOpsForDevice([ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 16

    move-object/from16 v1, p0

    .line 1839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1840
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.GET_APP_OPS_STATS"

    .line 1841
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1842
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    .line 1840
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1845
    :goto_0
    monitor-enter p0

    .line 1846
    :try_start_0
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move-object v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_6

    .line 1848
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1849
    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    .line 1853
    iget v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v0, v9, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 1857
    :cond_3
    iget-object v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1858
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_2

    .line 1860
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$Ops;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 1861
    invoke-virtual {v1, v11, v12, v13}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_5

    if-nez v7, :cond_4

    .line 1865
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1867
    :cond_4
    new-instance v15, Landroid/app/AppOpsManager$PackageOps;

    iget-object v3, v11, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v11, v11, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v15, v3, v11, v14}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1869
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1873
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_7

    return-object v6

    .line 1874
    :cond_7
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 1873
    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getPersistentDeviceIdForOp(II)Ljava/lang/String;
    .locals 1

    .line 7486
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 7487
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p2

    .line 7486
    invoke-static {v0, p1, p2}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    .line 7489
    const-string p2, "default:0"

    if-nez p1, :cond_0

    return-object p2

    .line 7492
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_1

    return-object p2

    .line 7496
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPersistentIdForDevice(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 7499
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    :cond_2
    if-eqz p2, :cond_3

    return-object p2

    .line 7504
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested persistentId for invalid virtualDeviceId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;
    .locals 2

    .line 2517
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    if-nez v0, :cond_0

    .line 2518
    new-instance v0, Lcom/android/server/pm/ProtectedPackages;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ProtectedPackages;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 2520
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    return-object p0
.end method

.method public final getRuntimeAppOpsList()Ljava/util/List;
    .locals 3

    .line 7378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa3

    if-ge v1, v2, :cond_1

    .line 7380
    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->shouldCollectNotes(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7381
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .locals 5

    .line 2066
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 2067
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2066
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2068
    monitor-enter p0

    const/4 v0, 0x0

    .line 2069
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2071
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2073
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2075
    monitor-exit p0

    return-object v4

    .line 2077
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2078
    new-instance v1, Landroid/app/AppOpsManager$PackageOps;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v1, v4, p1, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2080
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2081
    monitor-exit p0

    return-object v0

    .line 2082
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .locals 1

    .line 4876
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4881
    :cond_0
    new-instance p2, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {p2, p0, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 4882
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    :cond_1
    return-object v0
.end method

.method public final getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;
    .locals 7

    .line 456
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTracker;

    if-nez v0, :cond_0

    .line 457
    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 458
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/appop/AppOpsService;)V

    sget-object v5, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;-><init>(Landroid/app/ActivityManagerInternal;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTracker;

    .line 467
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-interface {v1, v0, v2}, Lcom/android/server/appop/AppOpsUidStateTracker;->addUidStateChangedCallback(Ljava/util/concurrent/Executor;Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;)V

    .line 482
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStateTracker:Lcom/android/server/appop/AppOpsUidStateTracker;

    return-object p0
.end method

.method public final getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 4938
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    .line 4939
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 4941
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-eqz p0, :cond_1

    return-object p0

    .line 4942
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "UserManagerInternal not loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final initializePackageUidStateLocked(IILjava/lang/String;Landroid/util/SparseBooleanArray;)V
    .locals 7

    .line 1303
    invoke-static {p1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    .line 1305
    invoke-virtual {p4, v5, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1307
    :cond_0
    invoke-virtual {p0, v5, p2}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 1308
    iget-object p2, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez p2, :cond_1

    .line 1310
    new-instance p2, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {p2, p3, v2}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 1311
    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1315
    invoke-interface {v0, p3, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultPackageModes(Ljava/lang/String;I)Landroid/util/SparseIntArray;

    move-result-object p1

    const/4 v0, 0x0

    move v6, v0

    .line 1316
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1317
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1319
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 1320
    new-instance v0, Lcom/android/server/appop/AppOpsService$Op;

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    invoke-virtual {p2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v1, p0

    move-object v3, p3

    :goto_1
    add-int/lit8 v6, v6, 0x1

    move-object p0, v1

    move-object p3, v3

    goto :goto_0

    :cond_3
    move-object v1, p0

    .line 1324
    invoke-virtual {v1, v5, p4}, Lcom/android/server/appop/AppOpsService;->createSandboxUidStateIfNotExistsForAppLocked(ILandroid/util/SparseBooleanArray;)V

    return-void
.end method

.method public final initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V
    .locals 7

    .line 7335
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 7336
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getRuntimeAppOpsList()Ljava/util/List;

    move-result-object v1

    .line 7337
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 7339
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    const-wide/16 v4, 0x7

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 7340
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v1

    .line 7341
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v1

    .line 7342
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/appop/AppOpsService$10;

    invoke-direct {v3, p0, p1}, Lcom/android/server/appop/AppOpsService$10;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public initializeUidStates()V
    .locals 9

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 1251
    monitor-enter p0

    .line 1252
    :try_start_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1254
    sget-object v2, Lcom/android/server/appop/AppOpsService;->NON_PACKAGE_UIDS:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v2, v5

    .line 1255
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1256
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v8, p0, v6}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_0
    :goto_1
    const/4 v7, 0x1

    .line 1258
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1261
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1263
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    :try_start_1
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    .line 1265
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 1266
    aget v5, v0, v4

    .line 1267
    invoke-virtual {p0, v5, v3, v1}, Lcom/android/server/appop/AppOpsService;->initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1270
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/android/server/appop/AppOpsService;->trimUidStatesLocked(Landroid/util/SparseBooleanArray;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1271
    :try_start_2
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    .line 1272
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_3
    if-eqz v2, :cond_3

    .line 1262
    :try_start_3
    invoke-interface {v2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v0

    .line 1272
    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final initializeUserUidStates(I)V
    .locals 3

    .line 1276
    monitor-enter p0

    .line 1278
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    :try_start_1
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/appop/AppOpsService;->initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1280
    :try_start_2
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    .line 1281
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_0

    .line 1277
    :try_start_3
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1

    .line 1281
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V
    .locals 3

    .line 1286
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 1288
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1291
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    .line 1292
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1294
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/android/server/appop/AppOpsService;->initializePackageUidStateLocked(IILjava/lang/String;Landroid/util/SparseBooleanArray;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    .line 5152
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5153
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, p0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 5155
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method public final isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_1

    return v0

    .line 5183
    :cond_1
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    if-eqz p2, :cond_2

    .line 5185
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5186
    invoke-virtual {p0, p2, p3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 5190
    :cond_2
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    .line 5191
    invoke-virtual {p0, p1, p3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isAutomotive()Z
    .locals 1

    .line 5315
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z
    .locals 4

    .line 4862
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4863
    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4865
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4866
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return v2

    .line 4870
    :cond_1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4871
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 4870
    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v3, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceProvisioningPackage(ILjava/lang/String;)Z
    .locals 4

    .line 2496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2497
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 2499
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ProtectedPackages;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    .line 2503
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2505
    array-length p1, p0

    move p2, v2

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object v3, p0, p2

    .line 2506
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ProtectedPackages;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final isIncomingPackageValid(Ljava/lang/String;I)Z
    .locals 4

    .line 4834
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 4836
    invoke-virtual {p0, v0, p1}, Lcom/android/server/appop/AppOpsService;->isSpecialPackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4843
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 4847
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4848
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppOps"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method public final isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z
    .locals 0

    .line 5307
    sget-object p0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5310
    :cond_0
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 5311
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z
    .locals 11

    move-object/from16 v0, p6

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    return v1

    .line 5325
    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    .line 5328
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    .line 5329
    invoke-virtual {v5, p2}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->hasRestriction(I)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x1a

    if-ne p2, v2, :cond_4

    .line 5334
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->isAutomotive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5335
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5337
    :try_start_0
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 5338
    invoke-virtual {v5, p3}, Landroid/hardware/SensorPrivacyManager;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 5342
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5343
    throw p0

    .line 5346
    :cond_4
    :goto_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 5347
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    move v2, v1

    :goto_2
    if-ge v2, p1, :cond_a

    .line 5352
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v10, p7

    .line 5353
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->hasRestriction(ILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5355
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 5358
    monitor-enter p0

    .line 5359
    :try_start_1
    iget-boolean p2, p1, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    iget-boolean p2, v0, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    if-eqz p2, :cond_5

    .line 5360
    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 5362
    :cond_5
    iget-boolean p2, p1, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    iget-boolean p2, v0, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz p2, :cond_6

    .line 5363
    monitor-exit p0

    return v1

    .line 5365
    :cond_6
    iget-boolean p1, p1, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    iget-boolean p1, v0, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz p1, :cond_7

    .line 5367
    monitor-exit p0

    return v1

    .line 5369
    :cond_7
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_8
    :goto_4
    return v4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    return v1
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .locals 9

    .line 7021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 7022
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 7027
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 7028
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 7032
    :cond_1
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return v1

    .line 7037
    :cond_2
    monitor-enter p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p2

    .line 7038
    :try_start_0
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    if-nez p0, :cond_3

    .line 7040
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 7043
    :cond_3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$Op;

    if-nez p0, :cond_4

    .line 7045
    monitor-exit v2

    return v1

    .line 7048
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result p0

    monitor-exit v2

    return p0

    .line 7049
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isPackageExisted(Ljava/lang/String;)Z
    .locals 0

    .line 3208
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageNullOrSystem(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 5131
    :cond_0
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 5134
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-lez v1, :cond_2

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_2

    return v0

    .line 5138
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0x20000

    .line 5139
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5138
    invoke-virtual {v0, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-eq v0, p2, :cond_3

    return v2

    .line 5142
    :cond_3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->isSystemPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageOpGrantedByRole(Ljava/lang/String;II)Z
    .locals 4

    .line 2805
    invoke-static {p3}, Landroid/app/AppOpsManager;->opIsPackageAppOpPermission(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2808
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2809
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2811
    :try_start_0
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p3

    .line 2812
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 2811
    invoke-virtual {p0, p3, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const p1, 0x8000

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 2815
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2816
    throw p0
.end method

.method public isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    .line 7056
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7057
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7058
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 7059
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7061
    :try_start_0
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/android/server/appop/AppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    .line 7063
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    .line 7066
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {p0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object p0

    .line 7067
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    .line 7080
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 7070
    :cond_1
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$OpEntry;

    .line 7071
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_2

    .line 7080
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_2
    const/16 p4, 0x18

    .line 7074
    :try_start_2
    invoke-virtual {p0, p4}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 7076
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result p4

    int-to-long p4, p4

    cmp-long p4, v0, p4

    if-nez p4, :cond_3

    .line 7077
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7078
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 7080
    :cond_3
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_4
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7081
    throw p0
.end method

.method public final isSamplingTarget(Landroid/content/pm/PackageInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 7408
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p1, :cond_1

    return v0

    .line 7412
    :cond_1
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 7415
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7419
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    return v4

    :catch_0
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final isSpecialPackage(ILjava/lang/String;)Z
    .locals 0

    .line 4856
    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_1

    .line 4858
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isUidOpGrantedByRole(II)Z
    .locals 4

    .line 2784
    invoke-static {p2}, Landroid/app/AppOpsManager;->opIsUidAppOpPermission(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2787
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2792
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2791
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 2800
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 2796
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p2

    .line 2797
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 2796
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const p1, 0x8000

    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    .line 2800
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2801
    throw p0
.end method

.method public final isValidVirtualDeviceId(I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 4797
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4798
    const-string p0, "AppOps"

    const-string p1, "VirtualDeviceManagerInternal is null when device Id is non-default"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4801
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isValidVirtualDeviceId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4802
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mKnownDeviceIds:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 4803
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPersistentIdForDevice(I)Ljava/lang/String;

    move-result-object p0

    .line 4802
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0

    :cond_2
    return v2
.end method

.method public final synthetic lambda$getUidStateTracker$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 461
    monitor-enter p0

    .line 462
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 463
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic lambda$new$1(I)V
    .locals 1

    const/4 v0, -0x2

    .line 1051
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOnDefaultDevice(II)V

    return-void
.end method

.method public final synthetic lambda$removeUser$12(I)V
    .locals 3

    .line 7007
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from AppOpsService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7008
    monitor-enter p0

    .line 7009
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 7011
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 7012
    invoke-virtual {v1, p1}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->removeUser(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7014
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->removeUidsForUserLocked(I)V

    .line 7015
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic lambda$startWatchingAsyncNoted$8(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Landroid/os/RemoteCallbackList;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Ljava/lang/Object;)V
    .locals 0

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    return-void
.end method

.method public final logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V
    .locals 3

    .line 5196
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result p0

    const-string v0, "Cannot "

    const-string v1, "AppOps"

    if-eqz p0, :cond_0

    .line 5197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": isolated UID"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5198
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v2, 0x2710

    if-ge p0, v2, :cond_1

    .line 5199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": non-application UID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5201
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 10

    .line 3337
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 3346
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v5, 0x0

    const/4 v9, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public noteOperationForDevice(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 10

    .line 3355
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v9, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteOperationImpl(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;
    .locals 15

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move/from16 v4, p5

    .line 3364
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->shouldUseNewCheckOp()Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_4

    .line 3365
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3366
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3367
    invoke-virtual {p0, v4}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v0

    const-string v5, " is invalid"

    const-string v6, "AppOps"

    if-nez v0, :cond_0

    .line 3368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkOperationImpl returned MODE_IGNORED as virtualDeviceId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    new-instance p0, Landroid/app/SyncNotedAppOp;

    invoke-direct {p0, v8, v1, v7, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 3373
    :cond_0
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p0, 0x6f

    if-ne v1, p0, :cond_1

    .line 3376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as incoming package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and uid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_1
    new-instance p0, Landroid/app/SyncNotedAppOp;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v7, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 3383
    :cond_2
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3385
    new-instance p0, Landroid/app/SyncNotedAppOp;

    invoke-direct {p0, v8, v1, v7, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    move-object v3, v0

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    .line 3391
    const-string/jumbo v6, "noteOperation"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->validateOpRequest(IILjava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 3394
    new-instance p0, Landroid/app/SyncNotedAppOp;

    invoke-direct {p0, v8, v1, v7, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_5
    move-object v3, v5

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    .line 3399
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;
    .locals 18

    move-object/from16 v0, p8

    and-int/lit8 v1, p10, 0x10

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v10

    :goto_0
    const/4 v11, 0x2

    const/16 v12, 0x6f

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 3413
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v4

    move-object v4, v3

    .line 3415
    :try_start_1
    iget-boolean v3, v13, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move-object v2, v5

    :cond_1
    move-object/from16 v14, p7

    if-eqz v0, :cond_2

    .line 3431
    invoke-virtual {v1, v4, v14, v0}, Lcom/android/server/appop/AppOpsService;->isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v5

    .line 3435
    :cond_2
    monitor-enter p0

    .line 3436
    :try_start_2
    iget-boolean v5, v13, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v6, v13, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v7, 0x1

    move-object v3, v4

    move-object v4, v2

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v15

    move-object v5, v4

    if-nez v15, :cond_4

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p10

    .line 3439
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V

    if-ne v2, v12, :cond_3

    .line 3446
    const-string v0, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as #getOpsLocked returned null for uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " attributionTag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pvr.isAttributionTagValid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v13, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " pvr.bypass: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    const-string v0, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUidStates.get("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 3455
    :cond_3
    :goto_1
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v11, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_4
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    .line 3458
    invoke-virtual {v1, v15, v2, v3, v9}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v7

    .line 3460
    invoke-virtual {v1, v6, v2}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v8

    .line 3459
    invoke-virtual {v7, v7, v5, v8}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v8

    .line 3461
    invoke-virtual {v8}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 3462
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Noting op not finished: uid "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " pkg "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " code "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " startTime of in progress event="

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 3464
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    move-object/from16 p4, v11

    invoke-virtual {v9}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p4

    .line 3462
    invoke-static {v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    :cond_5
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v9

    .line 3468
    iget-object v10, v15, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 3469
    iget-object v11, v13, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    move-object v12, v8

    const/4 v8, 0x0

    move v13, v3

    move v3, v2

    move v2, v13

    move-object v13, v11

    move-object v11, v7

    move-object v7, v13

    move-object v13, v0

    move-object v0, v12

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    .line 3471
    :try_start_3
    invoke-virtual {v10}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/appop/AttributedOp;->rejected(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    move v7, v12

    .line 3472
    :try_start_4
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V

    .line 3474
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_5

    :cond_6
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v6, p5

    move v7, v12

    .line 3477
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->isOpAllowedForUid(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_3

    .line 3482
    :cond_7
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v8, v10, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 3483
    invoke-virtual {v1, v6, v9}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v12

    .line 3482
    invoke-interface {v3, v8, v12, v9}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v3

    .line 3484
    invoke-static {v9}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v8

    if-eq v3, v8, :cond_a

    .line 3485
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v8, v10, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 3490
    invoke-virtual {v1, v6, v9}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v11

    .line 3488
    invoke-interface {v3, v8, v11, v9}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v3

    .line 3486
    invoke-virtual {v10, v2, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v8

    if-eqz v8, :cond_9

    .line 3496
    invoke-virtual {v10}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v3

    invoke-virtual {v0, v3, v7}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    move/from16 v3, p2

    .line 3497
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_8

    const/4 v3, 0x2

    if-ne v8, v3, :cond_8

    .line 3501
    const-string v0, "AppOps"

    const-string/jumbo v3, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as uid mode is MODE_ERRORED"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    :cond_8
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_9
    move/from16 v3, p2

    goto :goto_3

    :cond_a
    move/from16 v3, p2

    if-eq v9, v2, :cond_b

    const/4 v6, 0x1

    .line 3507
    invoke-virtual {v1, v15, v9, v3, v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v6

    goto :goto_2

    :cond_b
    move-object v6, v11

    .line 3509
    :goto_2
    iget-object v8, v6, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v9, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v12, v6, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v6, v6, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 3515
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3512
    invoke-interface {v11, v12, v9, v6}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v6

    .line 3510
    invoke-virtual {v8, v9, v6}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_d

    .line 3520
    :try_start_5
    invoke-virtual {v10}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v6

    invoke-virtual {v0, v6, v7}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    move/from16 v6, p5

    .line 3521
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_c

    const/4 v3, 0x2

    if-ne v8, v3, :cond_c

    .line 3525
    const-string v0, "AppOps"

    const-string/jumbo v1, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as package mode is MODE_ERRORED"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    :cond_c
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v0

    :cond_d
    :goto_3
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v6, p5

    move/from16 v7, p10

    .line 3538
    :try_start_6
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v8, v1

    move v9, v2

    move-object v11, v5

    move/from16 v1, p9

    .line 3542
    :try_start_7
    invoke-virtual {v8, v1, v9}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v5

    move/from16 v1, p6

    move/from16 v6, p10

    move/from16 v7, p14

    move-object v3, v13

    move-object v2, v14

    .line 3541
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AttributedOp;->accessed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p11, :cond_e

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p10

    move-object/from16 v7, p12

    move-object v1, v8

    move v4, v9

    move-object v5, v11

    move/from16 v8, p13

    move/from16 v9, p14

    .line 3546
    :try_start_8
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ZI)V

    move/from16 v17, v4

    move-object v4, v3

    move/from16 v3, v17

    goto :goto_4

    :cond_e
    move-object/from16 v4, p3

    move-object v1, v8

    move v3, v9

    move-object v5, v11

    .line 3550
    :goto_4
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    move-object v1, v8

    .line 3552
    :goto_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move/from16 v5, p2

    :goto_6
    move/from16 v3, p1

    goto :goto_7

    :catch_1
    move-exception v0

    move v5, v2

    move-object v2, v4

    move-object v4, v3

    goto :goto_6

    .line 3419
    :goto_7
    const-string/jumbo v6, "noteOperation"

    invoke-virtual {v1, v5, v0, v6}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    const/16 v1, 0x6f

    if-ne v3, v1, :cond_f

    .line 3422
    const-string v1, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "noting OP_BLUETOOTH_CONNECT returned MODE_ERRORED as verifyAndGetBypass returned a SecurityException for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and attributionTag: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3427
    :cond_f
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public noteOperationsInBatch(Ljava/util/Map;)V
    .locals 12

    .line 3322
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$NotedOp;

    .line 3324
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3325
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3326
    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getOp()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getUid()I

    move-result v4

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3327
    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getVirtualDeviceId()I

    move-result v7

    .line 3328
    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getShouldCollectAsyncNotedOp()Z

    move-result v8

    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 3329
    invoke-virtual {v1}, Landroid/app/AppOpsManager$NotedOp;->getShouldCollectMessage()Z

    move-result v10

    .line 3325
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 0

    .line 3228
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 3251
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v6

    .line 3252
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3253
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 3254
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v9

    .line 3256
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v15

    .line 3257
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3258
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 3259
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextDeviceId()I

    move-result v16

    .line 3261
    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 3262
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3263
    invoke-virtual {v0, v9}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v8

    const/4 v10, 0x1

    if-nez v8, :cond_0

    .line 3264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteProxyOperationImpl returned MODE_IGNORED as virtualDeviceId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppOps"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v1, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3269
    :cond_0
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v0, v5, v8}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v8

    const/4 v11, 0x2

    if-eqz v8, :cond_1

    .line 3270
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v0, v3, v8}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    move-object v15, v5

    move-object v4, v7

    goto/16 :goto_9

    :cond_2
    if-eqz p6, :cond_3

    .line 3276
    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v10

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 3278
    :goto_0
    invoke-static {v6, v3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 3281
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v1, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3285
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    if-ne v12, v15, :cond_5

    move v12, v10

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    .line 3286
    :goto_1
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v8, -0x1

    invoke-virtual {v13, v14, v8, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move/from16 v17, v10

    :goto_3
    if-nez v2, :cond_a

    if-eqz v17, :cond_8

    goto :goto_4

    :cond_8
    const/4 v11, 0x4

    :goto_4
    move v2, v10

    move v10, v11

    xor-int/lit8 v11, v17, 0x1

    .line 3294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "proxy "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x1

    move v13, v2

    move v2, v6

    const/4 v6, -0x1

    move-object/from16 v18, v7

    const/4 v7, 0x0

    move-object v12, v8

    const/4 v8, 0x0

    move-object/from16 v19, v5

    move v5, v9

    const/4 v9, 0x0

    move/from16 v13, p5

    move-object/from16 v20, v18

    move/from16 v18, v15

    move-object/from16 v15, v19

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object v6

    .line 3299
    invoke-virtual {v6}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0

    if-eqz v0, :cond_9

    .line 3300
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-virtual {v6}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    move-object/from16 v6, v20

    invoke-direct {v0, v2, v1, v6, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9
    move-object/from16 v6, v20

    :goto_5
    move-object v7, v3

    move/from16 v0, v18

    goto :goto_6

    :cond_a
    move v2, v6

    move-object v6, v7

    move/from16 v18, v15

    move-object v15, v5

    move v5, v9

    goto :goto_5

    .line 3305
    :goto_6
    invoke-static {v0, v15}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    .line 3308
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v13, 0x1

    invoke-direct {v0, v13, v1, v6, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    if-eqz v17, :cond_c

    const/16 v8, 0x8

    :goto_7
    move v10, v8

    goto :goto_8

    :cond_c
    const/16 v8, 0x10

    goto :goto_7

    :goto_8
    const/4 v14, 0x1

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object v8, v4

    move v9, v5

    move-object v4, v6

    move/from16 v5, v16

    move v6, v2

    move v2, v0

    move-object/from16 v0, p0

    .line 3314
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;ZI)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 3271
    :goto_9
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v11, v1, v4, v15}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public noteProxyOperationWithState(ILandroid/content/AttributionSourceState;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 1

    .line 3236
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-object v0, p2

    .line 3243
    new-instance p2, Landroid/content/AttributionSource;

    invoke-direct {p2, v0}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 3244
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IZII)V
    .locals 18

    .line 4558
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4560
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    move-object/from16 v4, p1

    .line 4562
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4564
    :try_start_1
    iget v6, v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingPid:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingUid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v8, p0

    move/from16 v10, p2

    :try_start_2
    invoke-virtual {v8, v10, v6, v7}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 4567
    :cond_0
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-interface/range {v9 .. v17}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Ljava/lang/String;IZII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-object/from16 v8, p0

    :catch_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4574
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4575
    throw v0
.end method

.method public final notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 2525
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2526
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/appop/OnOpModeChangedListener;

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2527
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2533
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x2

    if-eq p3, v0, :cond_0

    .line 2535
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2536
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v1

    if-eq v1, p3, :cond_0

    goto :goto_4

    .line 2542
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchedOpCode()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 2543
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    goto :goto_0

    .line 2544
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchedOpCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 2545
    new-array v0, v3, [I

    aput p2, v0, v2

    move-object p2, v0

    goto :goto_0

    .line 2547
    :cond_2
    new-array p2, v3, [I

    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchedOpCode()I

    move-result v0

    aput v0, p2, v2

    .line 2550
    :goto_0
    array-length v0, p2

    :goto_1
    if-ge v2, v0, :cond_4

    aget v1, p2, v2

    .line 2554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2556
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getCallingPid()I

    move-result v5

    .line 2557
    invoke-virtual {p1}, Lcom/android/server/appop/OnOpModeChangedListener;->getCallingUid()I

    move-result v6

    .line 2556
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 2565
    :catch_0
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 2560
    :cond_3
    :try_start_1
    invoke-virtual {p1, v1, p3, p4, p5}, Lcom/android/server/appop/OnOpModeChangedListener;->onOpModeChanged(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 2565
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2566
    throw p0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    return-void
.end method

.method public final notifyOpChangedForAllPkgsInUid(IIZLjava/lang/String;)V
    .locals 11

    .line 2210
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2212
    monitor-enter p0

    .line 2213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 2215
    :try_start_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    .line 2217
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 2219
    invoke-virtual {v6, p2}, Lcom/android/server/appop/OnOpModeChangedListener;->isWatchingUid(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 2223
    invoke-virtual {v6}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto/16 :goto_a

    .line 2228
    :cond_1
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2229
    invoke-static {v7, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    if-nez v3, :cond_2

    .line 2231
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2233
    :cond_2
    invoke-virtual {v3, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2237
    :cond_3
    :try_start_2
    array-length v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_8

    :try_start_3
    aget-object v5, v0, v4

    .line 2238
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    if-eqz v6, :cond_7

    if-nez v3, :cond_4

    .line 2241
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2243
    :cond_4
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    move v8, v2

    :goto_3
    if-ge v8, v7, :cond_7

    .line 2245
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/OnOpModeChangedListener;

    if-eqz p3, :cond_5

    .line 2247
    invoke-virtual {v9}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_5

    goto :goto_4

    .line 2252
    :cond_5
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    if-nez v10, :cond_6

    .line 2254
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2255
    invoke-virtual {v3, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    :cond_6
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 2262
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    if-eqz p3, :cond_9

    .line 2263
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2265
    :cond_9
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v3, :cond_a

    goto :goto_8

    :cond_a
    move p3, v2

    .line 2271
    :goto_5
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p3, v0, :cond_d

    .line 2272
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 2273
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 2275
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>()V

    .line 2277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    move-object v5, p0

    move-object v10, p4

    .line 2276
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2275
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    :cond_b
    move-object v5, p0

    move-object v10, p4

    .line 2280
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    move p4, v2

    :goto_6
    if-ge p4, p0, :cond_c

    .line 2282
    invoke-virtual {v0, p4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 2283
    iget-object v1, v5, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>()V

    .line 2285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2284
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2283
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    add-int/lit8 p3, p3, 0x1

    move-object p0, v5

    move-object p4, v10

    goto :goto_5

    :cond_d
    :goto_8
    return-void

    :catchall_1
    move-exception v0

    move-object v5, p0

    :goto_9
    move-object p1, v0

    .line 2265
    :goto_a
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_9
.end method

.method public final notifyOpChangedForPkg(Ljava/lang/String;III)V
    .locals 10

    .line 2295
    monitor-enter p0

    .line 2296
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_0

    .line 2299
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2301
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    const/4 v5, 0x0

    .line 2303
    :goto_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_2

    if-nez v5, :cond_1

    .line 2306
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2308
    :cond_1
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 2310
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    if-eqz v3, :cond_3

    .line 2311
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {v3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2313
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const-wide/32 v5, 0x402000

    invoke-virtual {v3, p1, v5, v6, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move v2, p2

    .line 2315
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2316
    iget v6, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    if-ne p3, v6, :cond_4

    .line 2319
    invoke-virtual {p0, v5, v3, p1}, Lcom/android/server/appop/AppOpsService;->pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 2321
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    const/4 v5, 0x2

    if-eq p3, v5, :cond_6

    const/4 v5, 0x1

    if-ne p3, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 2325
    :goto_1
    invoke-virtual {p0, p2, v5, v3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IZI)V

    .line 2327
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_7

    const/4 v0, -0x1

    if-eq v3, v0, :cond_7

    .line 2332
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;-><init>()V

    .line 2333
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "default:0"

    move-object v1, p0

    move-object v5, p1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v9

    .line 2332
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    return-void

    .line 2327
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;III)V
    .locals 17

    .line 4667
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4669
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    move-object/from16 v4, p1

    .line 4671
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4673
    :try_start_1
    iget v6, v5, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingPid:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingUid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v8, p0

    move/from16 v10, p2

    :try_start_2
    invoke-virtual {v8, v10, v6, v7}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 4676
    :cond_0
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    invoke-interface/range {v9 .. v16}, Lcom/android/internal/app/IAppOpsNotedCallback;->opNoted(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-object/from16 v8, p0

    :catch_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4683
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4684
    throw v0
.end method

.method public final notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 20

    .line 4615
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4617
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    move-object/from16 v4, p1

    .line 4619
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4621
    :try_start_1
    iget v6, v5, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingPid:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingUid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v8, p0

    move/from16 v10, p2

    :try_start_2
    invoke-virtual {v8, v10, v6, v7}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 4624
    :cond_0
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    move/from16 v19, p11

    invoke-interface/range {v9 .. v19}, Lcom/android/internal/app/IAppOpsStartedCallback;->opStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-object/from16 v8, p0

    :catch_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4632
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4633
    throw v0
.end method

.method public final notifyStorageManagerOpModeChangedSync(IILjava/lang/String;II)V
    .locals 6

    .line 2430
    const-class p0, Landroid/os/storage/StorageManagerInternal;

    .line 2431
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 2433
    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public final notifyWatchersOnDefaultDevice(II)V
    .locals 7

    .line 6993
    monitor-enter p0

    .line 6994
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 6996
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_1

    .line 6998
    :cond_0
    :try_start_2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 6999
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x0

    .line 7000
    const-string v6, "default:0"

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p1, v0

    .line 6999
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public offsetHistory(J)V
    .locals 0

    .line 7118
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->offsetHistory_enforcePermission()V

    .line 7120
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistryInterface;->offsetHistory(J)V

    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 6

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1110
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1111
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const-wide/16 v2, 0x1000

    move-object v1, p1

    .line 1109
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1112
    monitor-enter p0

    .line 1114
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackagesInitialized:Z

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1118
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    .line 1120
    invoke-virtual {p0, p2, p1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p1

    .line 1121
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1122
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v2, v1, p1}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x0

    .line 1126
    invoke-virtual {p0, p2, p1}, Lcom/android/server/appop/AppOpsService;->createSandboxUidStateIfNotExistsForAppLocked(ILandroid/util/SparseBooleanArray;)V

    .line 1127
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 1131
    monitor-enter p0

    .line 1132
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/appop/AppOpsService;->packageRemovedLocked(ILjava/lang/String;)V

    .line 1133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPackageReplaced(Ljava/lang/String;I)V
    .locals 1

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1142
    :cond_0
    monitor-enter p0

    .line 1143
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 1144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 5895
    new-instance v0, Lcom/android/server/appop/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/appop/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onUidProcessDeath(I)V
    .locals 2

    .line 1628
    monitor-enter p0

    .line 1629
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 1633
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda21;

    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda21;-><init>(Landroid/util/SparseLongArray;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->doForAllAttributedOpsInUidLocked(ILjava/util/function/Consumer;)V

    .line 1651
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->finishChainsLocked(Landroid/util/SparseLongArray;)V

    .line 1652
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1630
    :cond_0
    monitor-exit p0

    return-void

    .line 1652
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onUidStateChanged(IIZ)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1515
    monitor-enter p0

    const/4 v7, 0x0

    .line 1516
    :try_start_0
    invoke-virtual {v1, v0, v7}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v8

    move v2, v7

    .line 1520
    :goto_0
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v9, 0x1

    if-ge v2, v3, :cond_1

    .line 1521
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1522
    invoke-virtual {v3, v0}, Lcom/android/server/appop/OnOpModeChangedListener;->isWatchingUid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v3

    and-int/2addr v3, v9

    if-eqz v3, :cond_0

    move v2, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v7

    :goto_1
    if-eqz v8, :cond_c

    if-eqz p3, :cond_c

    if-eqz v2, :cond_c

    .line 1530
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1533
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    const-string v3, "default:0"

    .line 1534
    invoke-interface {v2, v0, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    move v3, v7

    .line 1536
    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1537
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1539
    :cond_2
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1541
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1542
    array-length v3, v2

    move v4, v7

    :goto_3
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 1543
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 1544
    invoke-interface {v6, v5, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(Ljava/lang/String;I)Landroid/util/SparseBooleanArray;

    move-result-object v5

    move v6, v7

    .line 1545
    :goto_4
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v6, v11, :cond_3

    .line 1546
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1550
    :cond_4
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v11, v0

    :goto_5
    if-ltz v11, :cond_c

    .line 1551
    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_a

    .line 1554
    :cond_5
    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    .line 1556
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v3, "default:0"

    invoke-interface {v0, v2, v3, v12}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v0

    .line 1560
    invoke-static {v12}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    const/4 v13, 0x4

    if-eq v0, v2, :cond_6

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v3, "default:0"

    .line 1561
    invoke-interface {v0, v2, v3, v12}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v0

    if-ne v0, v13, :cond_6

    .line 1566
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda20;-><init>()V

    .line 1568
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "default:0"

    .line 1566
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 1569
    :cond_6
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1570
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1571
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/ArraySet;

    if-eqz v14, :cond_b

    .line 1573
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v15, v0

    :goto_6
    if-ltz v15, :cond_b

    .line 1574
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 1575
    invoke-virtual {v0}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v2

    and-int/2addr v2, v9

    if-eqz v2, :cond_a

    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 1577
    invoke-virtual {v0, v2}, Lcom/android/server/appop/OnOpModeChangedListener;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_9

    .line 1580
    :cond_7
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_7
    if-ltz v0, :cond_a

    .line 1581
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v2, :cond_9

    :cond_8
    move v7, v0

    goto :goto_8

    .line 1585
    :cond_9
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v2, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 1588
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1585
    invoke-interface {v3, v4, v5, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v13, :cond_8

    .line 1590
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>()V

    .line 1592
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/OnOpModeChangedListener;

    move-object v5, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v6, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1593
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v16, v2

    move-object v2, v4

    move-object v4, v6

    const-string v6, "default:0"

    move-object v9, v7

    move v7, v0

    move-object v0, v5

    move-object v5, v9

    move-object/from16 v9, v16

    .line 1590
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_8
    add-int/lit8 v0, v7, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    goto :goto_7

    :cond_a
    :goto_9
    add-int/lit8 v15, v15, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_6

    :cond_b
    :goto_a
    add-int/lit8 v11, v11, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_5

    :cond_c
    if-eqz v8, :cond_10

    .line 1604
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_10

    .line 1606
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1608
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_f

    .line 1610
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    const/4 v6, 0x0

    .line 1611
    :goto_d
    iget-object v7, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    .line 1613
    iget-object v7, v5, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1614
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    const/4 v9, 0x0

    .line 1615
    :goto_e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    .line 1617
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AttributedOp;

    move/from16 v11, p2

    .line 1618
    invoke-virtual {v10, v11}, Lcom/android/server/appop/AttributedOp;->onUidStateChanged(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_d
    move/from16 v11, p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_e
    move/from16 v11, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_f
    move/from16 v11, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1624
    :cond_10
    monitor-exit p0

    return-void

    :goto_f
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 0

    .line 1441
    monitor-enter p0

    .line 1442
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->packageRemovedLocked(ILjava/lang/String;)V

    .line 1443
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final packageRemovedLocked(ILjava/lang/String;)V
    .locals 7

    .line 1448
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda10;-><init>()V

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    .line 1449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1448
    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1451
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1459
    :cond_0
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1460
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {v1, p2, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(Ljava/lang/String;I)Z

    if-eqz v0, :cond_5

    .line 1463
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1465
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, p0, :cond_5

    .line 1467
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    move v2, p1

    .line 1468
    :goto_1
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1470
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1471
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v4, p1

    .line 1472
    :goto_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1473
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AttributedOp;

    .line 1475
    :goto_3
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1476
    iget-object v6, v5, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1478
    :cond_1
    :goto_4
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1479
    iget-object v6, v5, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    return-void
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 4692
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public prepareInternalCallbacks()V
    .locals 2

    .line 1234
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$8;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$8;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return-void
.end method

.method public final pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .locals 8

    .line 2086
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2088
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    .line 2089
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2091
    iget p2, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2092
    iget-object p2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget p3, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2095
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iget p1, p1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2096
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2092
    invoke-interface {p2, v3, p3, v0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(Ljava/lang/String;III)V

    .line 2097
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 2098
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 2099
    iget-object p2, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz p2, :cond_0

    .line 2101
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    iget-object p2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2103
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2102
    invoke-interface {p2, p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public publish()V
    .locals 2

    .line 1084
    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1085
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1086
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerLocalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerLocalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService-IA;)V

    const-class p0, Lcom/android/server/appop/AppOpsManagerLocal;

    invoke-static {p0, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final readAttributionOp(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p1

    .line 5508
    const-string v1, "default:0"

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 5509
    invoke-virtual {v2, v2, v3, v1}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v2

    .line 5511
    const-string/jumbo v1, "n"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 5512
    invoke-static {v4, v5}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v11

    .line 5513
    invoke-static {v4, v5}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v12

    .line 5515
    const-string/jumbo v1, "t"

    const-wide/16 v13, 0x0

    invoke-interface {v0, v3, v1, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 5516
    const-string/jumbo v1, "r"

    invoke-interface {v0, v3, v1, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 5517
    const-string v1, "d"

    const-wide/16 v8, -0x1

    invoke-interface {v0, v3, v1, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 5518
    const-string/jumbo v1, "pp"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5519
    const-string/jumbo v10, "pu"

    const/4 v15, -0x1

    invoke-interface {v0, v3, v10, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 5520
    const-string/jumbo v10, "pc"

    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    cmp-long v10, v4, v13

    if-lez v10, :cond_0

    .line 5523
    const-string v10, "default:0"

    move-wide/from16 v16, v8

    move-object v9, v0

    move-object v8, v1

    move-wide v0, v6

    move v7, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    move-wide v0, v6

    :goto_0
    cmp-long v3, v0, v13

    if-lez v3, :cond_1

    .line 5527
    invoke-virtual {v2, v0, v1, v11, v12}, Lcom/android/server/appop/AttributedOp;->rejected(JII)V

    :cond_1
    return-void
.end method

.method public final readOp(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 5534
    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 5535
    new-instance v2, Lcom/android/server/appop/AppOpsService$Op;

    iget v7, p2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 5537
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 5539
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 5540
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-le v0, p0, :cond_4

    :cond_1
    if-eq p2, p3, :cond_0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    goto :goto_0

    .line 5544
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    .line 5545
    const-string/jumbo p3, "st"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5546
    const-string p2, "id"

    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/appop/AppOpsService;->readAttributionOp(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V

    goto :goto_0

    .line 5548
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element under <op>: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5549
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5548
    const-string p3, "AppOps"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 5554
    :cond_4
    iget-object p0, v4, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez p0, :cond_5

    .line 5556
    new-instance p0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {p0, v5, v4}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 5557
    iget-object p1, v4, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5559
    :cond_5
    iget p1, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 5

    const/4 v0, 0x0

    .line 5461
    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5462
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 5464
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 5465
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 5470
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5471
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5472
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->readUid(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    .line 5474
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <pkg>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5475
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5474
    const-string v3, "AppOps"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final readRecentAccesses()V
    .locals 1

    .line 5384
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5385
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStorageFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses(Landroid/util/AtomicFile;)V

    return-void

    .line 5392
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses(Landroid/util/AtomicFile;)V

    return-void
.end method

.method public final readRecentAccesses(Landroid/util/AtomicFile;)V
    .locals 7

    .line 5398
    monitor-enter p1

    .line 5399
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5402
    :try_start_1
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5408
    :try_start_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 5409
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5411
    :try_start_3
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 5413
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_7

    .line 5422
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 5423
    :cond_1
    :goto_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    if-eq v4, v3, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 5424
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_2
    :goto_2
    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 5429
    :cond_3
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 5430
    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5431
    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_1

    .line 5432
    :cond_4
    const-string/jumbo v5, "uid"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5434
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 5436
    :cond_5
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <app-ops>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5437
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5436
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 5451
    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_8

    .line 5419
    :cond_7
    :try_start_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "no start tag found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5444
    :goto_4
    :try_start_6
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5447
    :try_start_7
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 5448
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V

    goto :goto_3

    .line 5455
    :catch_1
    :goto_5
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5456
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_9

    .line 5447
    :goto_6
    :try_start_9
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5448
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5451
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 5454
    :catch_2
    :try_start_b
    throw v1

    .line 5404
    :catch_3
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No existing app ops "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; starting empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_7
    return-void

    .line 5455
    :goto_8
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0

    .line 5456
    :goto_9
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw p0
.end method

.method public readState()V
    .locals 0

    .line 2061
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    return-void
.end method

.method public final readUid(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 5483
    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 5484
    invoke-virtual {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 5485
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 5487
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v1, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 5488
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_4

    :cond_1
    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 5492
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5493
    const-string/jumbo v4, "op"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5494
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/appop/AppOpsService;->readOp(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V

    goto :goto_0

    .line 5496
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <pkg>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5497
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5496
    const-string v4, "AppOps"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public rebootHistory(J)V
    .locals 2

    .line 7150
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->rebootHistory_enforcePermission()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7152
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 7155
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {v1}, Lcom/android/server/appop/HistoricalRegistryInterface;->shutdown()V

    if-lez v0, :cond_1

    .line 7158
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 7165
    :cond_1
    new-instance p1, Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    check-cast p2, Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-direct {p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry;-><init>(Lcom/android/server/appop/LegacyHistoricalRegistry;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    .line 7169
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/server/appop/HistoricalRegistryInterface;->systemReady(Landroid/content/ContentResolver;)V

    .line 7170
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0}, Lcom/android/server/appop/HistoricalRegistryInterface;->persistPendingHistory()V

    return-void
.end method

.method public final refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 12

    .line 1362
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1363
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1364
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    .line 1365
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1366
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 1367
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    .line 1370
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    .line 1371
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_0

    .line 1376
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1377
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 1376
    invoke-virtual {v1, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1382
    :cond_1
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez p1, :cond_2

    goto/16 :goto_6

    .line 1387
    :cond_2
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez p1, :cond_3

    goto :goto_6

    .line 1393
    :cond_3
    iput-object v3, p1, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 1394
    iget-object p2, p1, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 1398
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    :goto_2
    if-ge v5, p2, :cond_7

    .line 1400
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 1401
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_6

    .line 1403
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1404
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1405
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_4
    if-ltz v6, :cond_5

    .line 1407
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1408
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_5

    .line 1413
    :cond_4
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1415
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1417
    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1415
    invoke-virtual {v0, v0, v8, v9}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v8

    .line 1418
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v8, v9}, Lcom/android/server/appop/AttributedOp;->add(Lcom/android/server/appop/AttributedOp;)V

    .line 1419
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_6
    return-void
.end method

.method public reloadNonHistoricalState()V
    .locals 5

    .line 2053
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2054
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "reloadNonHistoricalState"

    .line 2053
    const-string v4, "android.permission.MANAGE_APPOPS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2055
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V

    .line 2056
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    return-void
.end method

.method public final removeUidsForUserLocked(I)V
    .locals 2

    .line 7428
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 7429
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 7430
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 7431
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 7432
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeUser(I)V
    .locals 2

    .line 7005
    const-string/jumbo v0, "removeUser"

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 7006
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;
    .locals 9

    .line 7185
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 7186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7187
    monitor-enter p0

    .line 7188
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 7189
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v7, 0x1

    if-nez v0, :cond_0

    .line 7190
    :try_start_1
    new-instance p1, Lcom/android/internal/app/MessageSamplingConfig;

    .line 7191
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p2

    sget-object p3, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p2, v7, v8, p3}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_1

    .line 7194
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7195
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7198
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v4

    .line 7199
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    move-object v3, p1

    move-object v6, p3

    .line 7197
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 7201
    new-instance p0, Lcom/android/internal/app/MessageSamplingConfig;

    iget p1, v1, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    iget p2, v1, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 7202
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p3

    sget-object v0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p3, v7, v8, v0}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object p3

    invoke-virtual {p3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit v1

    return-object p0

    :catchall_1
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_0

    .line 7203
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7218
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 7219
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7222
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 7233
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 v1, 0xa3

    invoke-static {p3, v0, v1}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v0

    .line 7236
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    const/4 v2, 0x4

    if-ge v1, v0, :cond_0

    iget v3, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    .line 7241
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    if-eq v1, v2, :cond_1

    .line 7243
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    const/4 v0, 0x0

    .line 7244
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 7247
    :cond_1
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 7248
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    iget v2, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 7249
    new-instance v1, Landroid/app/RuntimeAppOpAccessMessage;

    iget v7, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    move v2, p1

    move-object v4, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/RuntimeAppOpAccessMessage;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    :cond_2
    :goto_0
    return-void
.end method

.method public final resampleAppOpForPackageLocked(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 7324
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    if-eqz p2, :cond_0

    .line 7325
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p2

    const/16 v0, 0xa3

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    iput p2, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 p2, 0xa2

    .line 7326
    iput p2, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 7327
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    return-void
.end method

.method public final resamplePackageAndAppOpLocked(Ljava/util/List;)V
    .locals 3

    .line 7309
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7310
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 7311
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7313
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    .line 7312
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 7315
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7317
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    .line 7316
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 2630
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2631
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2632
    const-string/jumbo v7, "resetAllModes"

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eqz v0, :cond_0

    .line 2638
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-wide/16 v7, 0x2000

    invoke-interface {v6, v0, v7, v8, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v6, v5

    .line 2645
    :goto_0
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2648
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2649
    monitor-enter p0

    .line 2651
    :try_start_1
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    const/4 v9, 0x0

    move-object v10, v9

    move-object v9, v2

    move-object v2, v10

    const/4 v10, 0x0

    :goto_1
    if-ltz v3, :cond_11

    .line 2652
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2655
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v13, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v14, "default:0"

    .line 2656
    invoke-interface {v12, v13, v14}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(ILjava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 2658
    iget v13, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v13, v6, :cond_1

    if-ne v6, v5, :cond_5

    .line 2659
    :cond_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    sub-int/2addr v13, v7

    :goto_2
    if-ltz v13, :cond_5

    .line 2661
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 2662
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2663
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    .line 2664
    iget v14, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v1, v14, v15}, Lcom/android/server/appop/AppOpsService;->isUidOpGrantedByRole(II)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    :goto_3
    move/from16 p1, v7

    goto :goto_4

    .line 2665
    :cond_2
    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v14

    goto :goto_3

    .line 2666
    :goto_4
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v8, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v5, "default:0"

    invoke-interface {v7, v8, v5, v15, v14}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(ILjava/lang/String;II)Z

    .line 2671
    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    move-object v14, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v7, :cond_3

    aget-object v17, v5, v2

    .line 2672
    iget v8, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move/from16 v20, v2

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 2673
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/util/ArraySet;

    move/from16 v16, v8

    .line 2672
    invoke-static/range {v14 .. v19}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v2, v17

    .line 2674
    iget v8, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move/from16 v21, v3

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 2675
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/util/ArraySet;

    move-object/from16 v17, v2

    move/from16 v16, v8

    .line 2674
    invoke-static/range {v14 .. v19}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v3, v17

    move/from16 v2, v18

    .line 2677
    iget v8, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v9, v15, v8, v3, v2}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    add-int/lit8 v3, v20, 0x1

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v21

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_3
    move-object v2, v14

    :goto_6
    move/from16 v21, v3

    goto :goto_7

    :cond_4
    move/from16 p1, v7

    goto :goto_6

    :goto_7
    add-int/lit8 v13, v13, -0x1

    move/from16 v7, p1

    move/from16 v3, v21

    const/4 v5, -0x1

    goto/16 :goto_2

    :cond_5
    move/from16 v21, v3

    move/from16 p1, v7

    .line 2684
    iget-object v3, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    goto/16 :goto_c

    :cond_6
    const/4 v3, -0x1

    if-eq v4, v3, :cond_7

    .line 2688
    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2689
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v4, v5, :cond_7

    goto/16 :goto_c

    .line 2694
    :cond_7
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2695
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2696
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2697
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2698
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2699
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_8

    .line 2703
    :cond_8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2704
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object v12, v2

    :goto_9
    if-ltz v8, :cond_e

    .line 2705
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    .line 2706
    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v1, v13}, Lcom/android/server/appop/AppOpsService;->shouldDeferResetOpToDpm(I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2707
    iget v2, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/appop/AppOpsService;->deferResetOpToDpm(ILjava/lang/String;I)V

    goto/16 :goto_b

    .line 2710
    :cond_9
    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v13}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 2711
    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v14, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v0, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2715
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2712
    invoke-interface {v13, v14, v3, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v0

    .line 2716
    iget v3, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v1, v15, v3, v13}, Lcom/android/server/appop/AppOpsService;->isPackageOpGrantedByRole(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    goto :goto_a

    .line 2717
    :cond_a
    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    :goto_a
    if-ne v0, v3, :cond_b

    goto :goto_b

    .line 2722
    :cond_b
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v13, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    move/from16 v16, v0

    iget v0, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2726
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2722
    invoke-interface {v10, v13, v14, v3, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(Ljava/lang/String;III)V

    .line 2728
    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v14, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2729
    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 2730
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/util/ArraySet;

    .line 2729
    invoke-static/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v12

    .line 2731
    iget v13, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 2732
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/util/ArraySet;

    .line 2731
    invoke-static/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    move/from16 v3, v16

    .line 2734
    iget v10, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v9, v10, v14, v15, v3}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 2736
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2737
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2738
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_c
    move/from16 v10, p1

    move-object v12, v0

    :cond_d
    :goto_b
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p2

    const/4 v3, -0x1

    goto/16 :goto_9

    .line 2742
    :cond_e
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 2743
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2744
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v2, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2745
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2744
    invoke-interface {v0, v15, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(Ljava/lang/String;I)Z

    :cond_f
    move-object/from16 v0, p2

    move-object v2, v12

    const/4 v3, -0x1

    goto/16 :goto_8

    :cond_10
    :goto_c
    add-int/lit8 v3, v21, -0x1

    move/from16 v7, p1

    move-object/from16 v0, p2

    const/4 v5, -0x1

    goto/16 :goto_1

    :cond_11
    if-eqz v10, :cond_12

    .line 2751
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 2753
    :cond_12
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_16

    .line 2756
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2757
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/OnOpModeChangedListener;

    .line 2758
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    const/4 v10, 0x0

    .line 2759
    :goto_e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_15

    .line 2760
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2761
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2762
    const-string v3, "default:0"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2763
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v3, :cond_13

    .line 2764
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2766
    :cond_13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 2767
    iget-object v13, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>()V

    iget v3, v11, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 2769
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v11, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 2767
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v1, p0

    goto :goto_f

    :cond_14
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_e

    :cond_15
    move-object/from16 v1, p0

    goto :goto_d

    .line 2775
    :cond_16
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v0, :cond_17

    .line 2777
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2778
    iget v2, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    iget v3, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 2779
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    iget v6, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->previous_mode:I

    move-object/from16 v1, p0

    .line 2778
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyStorageManagerOpModeChangedSync(IILjava/lang/String;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_17
    return-void

    .line 2753
    :goto_11
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public resetHistoryParameters()V
    .locals 0

    .line 7134
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetHistoryParameters_enforcePermission()V

    .line 7136
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0}, Lcom/android/server/appop/HistoricalRegistryInterface;->resetHistoryParameters()V

    return-void
.end method

.method public resetPackageOpsNoHistory(Ljava/lang/String;)V
    .locals 4

    .line 7087
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetPackageOpsNoHistory_enforcePermission()V

    .line 7088
    monitor-enter p0

    .line 7089
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 7090
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-wide/16 v2, 0x0

    .line 7089
    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7092
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 7094
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v1, :cond_1

    .line 7096
    monitor-exit p0

    return-void

    .line 7098
    :cond_1
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 7099
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v2, p1, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(Ljava/lang/String;I)Z

    if-eqz v1, :cond_2

    .line 7101
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 7103
    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final scheduleFastWriteLocked()V
    .locals 3

    .line 5259
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5260
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 5261
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 5262
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5263
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V
    .locals 12

    .line 4528
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 4530
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4531
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    if-eqz v4, :cond_2

    .line 4533
    iget v6, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v6, :cond_0

    if-eq v6, p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 4537
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4539
    :cond_1
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    return-void

    .line 4545
    :cond_4
    iget-object v11, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda3;-><init>()V

    .line 4547
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4548
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v1, p0

    move-object v5, p3

    move-object/from16 v6, p4

    .line 4545
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;III)V
    .locals 11

    .line 4639
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 4641
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4642
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    if-eqz v4, :cond_2

    .line 4644
    iget v6, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-ltz v6, :cond_0

    if-eq v6, p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 4648
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4650
    :cond_1
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    return-void

    .line 4656
    :cond_4
    iget-object v10, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;-><init>()V

    .line 4658
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4659
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    .line 4656
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 14

    .line 4583
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 4585
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4587
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$StartedCallback;

    if-eqz v4, :cond_2

    .line 4589
    iget v6, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    move/from16 v7, p2

    if-ltz v6, :cond_0

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 4594
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4596
    :cond_1
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move/from16 v7, p2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move/from16 v7, p2

    if-nez v2, :cond_4

    return-void

    .line 4604
    :cond_4
    iget-object v13, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;-><init>()V

    .line 4606
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4607
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 4604
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleWriteLocked()V
    .locals 3

    .line 5252
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5253
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 5254
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .locals 2

    .line 1433
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v0, :cond_0

    .line 1435
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmCheckOpsDelegate(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1436
    :goto_0
    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    return-void
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 8

    .line 3161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3162
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3163
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3165
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AudioRestrictionManager;->setZenModeAudioRestriction(IIII[Ljava/lang/String;)V

    .line 3169
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    .line 3170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, -0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 3169
    invoke-static {p2, p0, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCameraAudioRestriction(I)V
    .locals 3

    .line 3176
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3178
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/AudioRestrictionManager;->setCameraAudioRestriction(I)V

    .line 3181
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    const/16 v1, 0x1c

    .line 3183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3181
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3184
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x3

    .line 3186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3184
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCheckOpsDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .locals 2

    .line 2924
    monitor-enter p0

    .line 2925
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v0, :cond_0

    .line 2926
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2927
    :goto_0
    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 2928
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setHistoryParameters(IJI)V
    .locals 6

    .line 7110
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->setHistoryParameters_enforcePermission()V

    .line 7112
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    int-to-long v4, p4

    move v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistryInterface;->setHistoryParameters(IJJ)V

    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 2447
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 9

    .line 2452
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2453
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2454
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2458
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/appop/AppOpsService;->isDeviceProvisioningPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2459
    const-string p0, "AppOps"

    const-string p1, "Cannot set op mode for device provisioning app by Shell"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2463
    :cond_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    const/4 p1, 0x0

    .line 2467
    :try_start_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2474
    monitor-enter p0

    .line 2475
    :try_start_1
    iget-object v7, p1, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    :try_start_2
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2477
    iget-object p1, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2478
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2477
    invoke-interface {p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result p1

    if-eq p1, p4, :cond_2

    .line 2480
    iget-object p1, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2482
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2481
    invoke-interface {p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result p1

    .line 2483
    iput-object p5, v1, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 2484
    iget-object p2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p5, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 2485
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 2484
    invoke-interface {p2, p3, p5, p4, p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(Ljava/lang/String;III)V

    :goto_0
    move v6, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_1
    move-object p0, v0

    goto :goto_3

    :cond_2
    const/4 p1, 0x3

    goto :goto_0

    .line 2488
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, p4

    .line 2490
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyStorageManagerOpModeChangedSync(IILjava/lang/String;II)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_1

    .line 2488
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catch_0
    move-exception v0

    move-object v1, p0

    move v3, p2

    move-object p0, v0

    .line 2469
    const-string/jumbo p1, "setMode"

    invoke-virtual {v1, v3, p0, p1}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    return-void
.end method

.method public setUidMode(III)V
    .locals 1

    const/4 v0, 0x0

    .line 2130
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 7

    .line 2140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2141
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    const/4 v0, 0x0

    .line 2143
    invoke-virtual {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->isDeviceProvisioningPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2144
    const-string p0, "AppOps"

    const-string p1, "Cannot set uid mode for device provisioning app by Shell"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2148
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    if-nez p4, :cond_1

    .line 2151
    invoke-virtual {p0, p2, v2, p3}, Lcom/android/server/appop/AppOpsService;->updatePermissionRevokedCompat(III)V

    .line 2155
    :cond_1
    monitor-enter p0

    .line 2156
    :try_start_0
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    const/4 v0, 0x0

    .line 2158
    invoke-virtual {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    if-ne p3, p1, :cond_2

    .line 2161
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_3

    :cond_2
    const/16 p1, 0x2710

    if-lt p2, p1, :cond_3

    .line 2165
    const-string p1, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to set mode for unknown uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    :cond_3
    new-instance v1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v1, p0, p2}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 2170
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2174
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v4, "default:0"

    invoke-interface {p1, v3, v4, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result p1

    .line 2176
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq p1, v3, :cond_5

    .line 2177
    :try_start_3
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v4, "default:0"

    .line 2178
    invoke-interface {p1, v3, v4, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    move v6, p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x3

    goto :goto_0

    .line 2185
    :goto_1
    :try_start_4
    iput-object p4, p0, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 2186
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget p4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string v1, "default:0"

    invoke-interface {p1, p4, v1, v2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(ILjava/lang/String;II)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p1, :cond_6

    .line 2188
    :try_start_5
    monitor-exit p0

    return-void

    :cond_6
    const/4 p1, 0x2

    if-eq p3, p1, :cond_8

    if-eq p3, v6, :cond_8

    const/4 p1, 0x1

    if-ne p3, p1, :cond_7

    move v0, p1

    .line 2193
    :cond_7
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2195
    :cond_8
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p2

    move v5, p3

    .line 2197
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyStorageManagerOpModeChangedSync(IILjava/lang/String;II)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_2
    move-object p1, v0

    .line 2195
    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .locals 6

    .line 6887
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6888
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 6889
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 6888
    const-string v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 6891
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_2

    .line 6892
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 6894
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6896
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6900
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 6901
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 6902
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public final setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .locals 4

    .line 6907
    monitor-enter p0

    .line 6908
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6912
    :try_start_1
    new-instance v0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    invoke-direct {v0, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6916
    :try_start_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6914
    :catch_0
    monitor-exit p0

    return-void

    .line 6919
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->setRestriction(IZLandroid/os/PackageTagsList;I)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 6923
    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    .line 6924
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6923
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6925
    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;-><init>()V

    .line 6926
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6927
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 6925
    invoke-static {v1, p0, p1, p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6930
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6931
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6932
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->destroy()V

    .line 6934
    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 7

    .line 6872
    const-string/jumbo v0, "setUserRestrictions"

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 6873
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6874
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v1, 0xa3

    if-ge v2, v1, :cond_1

    .line 6876
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6878
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v4, p2

    move v5, p3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p0, v1

    move-object p2, v4

    move p3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shouldCollectNotes(I)Z
    .locals 3

    const/16 v0, 0xa2

    .line 4697
    const-string/jumbo v1, "opCode"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 4699
    invoke-static {p1}, Landroid/app/AppOpsManager;->shouldForceCollectNoteForOp(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4703
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 4710
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4715
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 4716
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1

    :catch_0
    return v2
.end method

.method public final shouldDeferResetOpToDpm(I)Z
    .locals 0

    .line 2822
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->supportsResetOp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldIgnoreCallback(III)Z
    .locals 0

    .line 4789
    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_APPOPS"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldStartForMode(IZ)Z
    .locals 0

    .line 0
    if-eqz p1, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldUseNewCheckOp()Z
    .locals 2

    .line 4720
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public shutdown()V
    .locals 2

    .line 1717
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    monitor-enter p0

    .line 1720
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1721
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 1722
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1726
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1728
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeRecentAccesses()V

    .line 1730
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->shutdown()V

    .line 1734
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {p0}, Lcom/android/server/appop/HistoricalRegistryInterface;->shutdown()V

    return-void

    .line 1726
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 13

    .line 3853
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startOperationDryRun(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IZ)Landroid/app/SyncNotedAppOp;
    .locals 16

    move/from16 v8, p1

    move/from16 v0, p9

    and-int/lit8 v1, p8, 0x10

    const/4 v9, 0x1

    if-nez v1, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    const/4 v10, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 4235
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4237
    :try_start_1
    iget-boolean v1, v11, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object/from16 v12, p4

    .line 4251
    :goto_1
    monitor-enter p0

    .line 4254
    :try_start_2
    iget-boolean v5, v11, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v6, v11, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v7, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v13

    if-nez v13, :cond_2

    .line 4262
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v10, v8, v12, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 4265
    :cond_2
    invoke-virtual {v1, v13, v8, v2, v9}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v10

    .line 4266
    iget-object v14, v13, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 4267
    iget-object v7, v11, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v8, 0x0

    move/from16 v6, p5

    move-object v4, v3

    move-object v5, v12

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v7

    move v8, v3

    move-object v3, v4

    .line 4269
    invoke-static {v8}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    .line 4272
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v12, v14, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 4273
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v15

    .line 4272
    invoke-interface {v11, v12, v15, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v11

    .line 4274
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v12

    if-eq v11, v12, :cond_3

    .line 4275
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v9, v14, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 4280
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v6

    .line 4278
    invoke-interface {v2, v9, v6, v4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v2

    .line 4276
    invoke-virtual {v14, v8, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v2

    .line 4282
    invoke-virtual {v1, v2, v0}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4288
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v2, v8, v5, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_3
    if-eq v4, v8, :cond_4

    .line 4291
    invoke-virtual {v1, v13, v4, v2, v9}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v10

    .line 4293
    :cond_4
    iget-object v2, v10, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v4, v10, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v9, v10, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v10, v10, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 4299
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 4296
    invoke-interface {v6, v9, v4, v10}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v6

    .line 4294
    invoke-virtual {v2, v4, v6}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    if-eq v2, v0, :cond_6

    .line 4307
    :cond_5
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v2, v8, v5, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    .line 4315
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4317
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v7, v8, v5, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    .line 4315
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_3

    :catch_1
    move-exception v0

    .line 4241
    :goto_3
    invoke-static {v2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4242
    const-string v0, "AppOps"

    const-string v1, "Cannot startOperation: isolated process"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4244
    :cond_7
    const-string v1, "AppOps"

    const-string v2, "Cannot startOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4246
    :goto_4
    new-instance v0, Landroid/app/SyncNotedAppOp;

    move-object/from16 v4, p4

    invoke-direct {v0, v10, v8, v4, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public startOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 0

    .line 3866
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p12}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v1, p6

    .line 3878
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->shouldUseNewCheckOp()Z

    move-result v2

    const/4 v8, 0x1

    if-nez v2, :cond_2

    .line 3879
    invoke-virtual {v0, v4}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3880
    invoke-virtual {v0, v3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3881
    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startOperationImpl returned MODE_IGNORED as virtualDeviceId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3887
    :cond_0
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3888
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3892
    :cond_1
    invoke-static/range {p3 .. p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 3894
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v5, 0x1

    .line 3900
    const-string/jumbo v6, "startOperation"

    move v2, v4

    move v4, v1

    move v1, v3

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->validateOpRequest(IILjava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move v3, v1

    move-object v1, v5

    move-object v5, v4

    move v4, v2

    if-nez v1, :cond_3

    .line 3903
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/16 v1, 0x66

    if-eq v3, v1, :cond_4

    const/16 v1, 0x78

    if-eq v3, v1, :cond_4

    const/16 v1, 0x87

    if-ne v3, v1, :cond_5

    :cond_4
    const/16 v1, 0x1b

    .line 3916
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 3919
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v1, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const/16 v1, 0x86

    if-ne v3, v1, :cond_6

    const/16 v1, 0x1a

    .line 3924
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 3927
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v1, v3, v7, v5}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move-object v1, v0

    move-object v6, v7

    move/from16 v7, p6

    .line 3931
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public final startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 20

    move-object/from16 v0, p9

    move/from16 v10, p12

    and-int/lit8 v1, p11, 0x10

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_0

    move v7, v11

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    const/4 v12, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p8

    .line 4080
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v3

    .line 4082
    :try_start_1
    iget-boolean v2, v8, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object/from16 v5, p5

    :goto_1
    move-object/from16 v13, p8

    if-eqz v0, :cond_2

    .line 4091
    invoke-virtual {v1, v4, v13, v0}, Lcom/android/server/appop/AppOpsService;->isAttributionTagDefined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v3

    .line 4097
    :cond_2
    monitor-enter p0

    move-object v4, v5

    .line 4098
    :try_start_2
    iget-boolean v5, v8, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v6, v8, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v7, 0x1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v14

    move-object v5, v4

    move/from16 v15, p10

    const/4 v9, 0x0

    if-nez v14, :cond_3

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p11

    move/from16 v10, p16

    move/from16 v11, p17

    .line 4101
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 4107
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v12, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_3
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move v12, v9

    move/from16 v9, p11

    .line 4110
    invoke-virtual {v1, v14, v2, v3, v11}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v7

    .line 4112
    invoke-virtual {v1, v6, v2}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v12

    .line 4111
    invoke-virtual {v7, v7, v5, v12}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;

    move-result-object v12

    .line 4113
    iget-object v11, v14, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 4114
    iget-object v8, v8, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    move-object/from16 v17, v7

    move-object v7, v8

    const/4 v8, 0x0

    move/from16 v19, v3

    move v3, v2

    move/from16 v2, v19

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v18

    move/from16 v19, v3

    move v3, v2

    move/from16 v2, v19

    .line 4116
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v7

    const/16 v8, 0x1b

    if-ne v2, v8, :cond_5

    const/16 v8, 0x275b

    if-ne v3, v8, :cond_5

    .line 4123
    const-string v8, "com.mediatek.callrecorder"

    .line 4125
    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4126
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "workaround startOperation - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " skip op_record_audio check"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 p9, v0

    :cond_4
    :goto_3
    move-object v14, v1

    move v1, v2

    move-object v2, v4

    move-object v0, v5

    const/16 v17, 0x0

    goto/16 :goto_5

    .line 4132
    :cond_5
    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->isOpAllowedForUid(I)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    .line 4137
    :cond_6
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    move-object/from16 p9, v0

    iget v0, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 4139
    invoke-virtual {v1, v6, v7}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v3

    .line 4138
    invoke-interface {v8, v0, v3, v7}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(ILjava/lang/String;I)I

    move-result v0

    .line 4141
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-eq v0, v3, :cond_8

    .line 4142
    invoke-virtual {v11, v2, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v8

    .line 4143
    invoke-virtual {v1, v8, v10}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4150
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v0

    invoke-virtual {v12, v0, v9}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    move/from16 v3, p3

    move/from16 v10, p16

    move/from16 v11, p17

    move v7, v9

    const/4 v9, 0x0

    .line 4151
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 4154
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_7
    move/from16 v3, p3

    move v8, v9

    goto :goto_3

    :cond_8
    move/from16 v3, p3

    move v8, v9

    const/4 v9, 0x0

    if-eq v7, v2, :cond_9

    const/4 v0, 0x1

    .line 4158
    invoke-virtual {v1, v14, v7, v3, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v7

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    move-object/from16 v7, v17

    .line 4159
    :goto_4
    iget-object v6, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v14, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v9, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v7, v7, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 4165
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4162
    invoke-interface {v0, v9, v14, v7}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v0

    .line 4160
    invoke-virtual {v6, v14, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    if-eqz v10, :cond_a

    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    .line 4174
    :cond_a
    :try_start_3
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v6

    invoke-virtual {v12, v6, v8}, Lcom/android/server/appop/AttributedOp;->rejected(II)V

    move/from16 v6, p6

    move/from16 v10, p16

    move/from16 v11, p17

    move v7, v8

    const/4 v9, 0x0

    move v8, v0

    .line 4175
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v14, v1

    move v1, v2

    move-object v2, v4

    move-object v0, v5

    .line 4178
    :try_start_4
    new-instance v3, Landroid/app/SyncNotedAppOp;

    invoke-direct {v3, v8, v1, v0, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v3

    :catchall_1
    move-exception v0

    move-object v1, v14

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object v14, v1

    goto/16 :goto_a

    :goto_5
    if-eqz v18, :cond_b

    .line 4195
    :try_start_5
    invoke-virtual {v14, v15, v1}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v6

    .line 4196
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v7

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v5, p9

    move/from16 v8, p11

    move/from16 v9, p16

    move/from16 v10, p17

    move-object v4, v13

    move-object v13, v0

    move-object v0, v12

    move v12, v1

    move-object/from16 v1, p1

    .line 4193
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->createPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    move/from16 v9, v17

    :goto_6
    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p11

    move/from16 v10, p16

    move/from16 v11, p17

    move v2, v12

    move-object v5, v13

    move-object v1, v14

    move/from16 v8, v18

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_9

    :cond_b
    move-object/from16 v5, p9

    move-object v13, v0

    move-object v0, v12

    move v12, v1

    .line 4200
    invoke-virtual {v14, v15, v12}, Lcom/android/server/appop/AppOpsService;->getPersistentDeviceIdForOp(II)Ljava/lang/String;

    move-result-object v6

    .line 4201
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$UidState;->getState()I

    move-result v7

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v8, p11

    move/from16 v9, p16

    move/from16 v10, p17

    const/16 v16, 0x1

    .line 4198
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->started(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v9, v16

    goto :goto_6

    .line 4207
    :goto_7
    :try_start_6
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4210
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p13, :cond_c

    if-nez v8, :cond_c

    const/4 v0, 0x1

    const/4 v1, 0x1

    move-object/from16 p5, p0

    move/from16 p8, p2

    move/from16 p6, p3

    move-object/from16 p7, p4

    move-object/from16 p11, p14

    move/from16 p12, p15

    move/from16 p10, v0

    move/from16 p13, v1

    move-object/from16 p9, v5

    .line 4213
    invoke-virtual/range {p5 .. p13}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ZI)V

    move-object/from16 v4, p7

    move/from16 v2, p8

    goto :goto_8

    :cond_c
    move/from16 v2, p2

    move-object/from16 v4, p4

    .line 4217
    :goto_8
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_a

    .line 4205
    :goto_9
    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4210
    :goto_a
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    move/from16 v3, p3

    :goto_b
    move/from16 v2, p2

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v4, v3

    move v3, v2

    goto :goto_b

    .line 4086
    :goto_c
    const-string/jumbo v5, "startOperation"

    invoke-virtual {v1, v3, v0, v5}, Lcom/android/server/appop/AppOpsService;->logVerifyAndGetBypassFailure(ILjava/lang/SecurityException;Ljava/lang/String;)V

    .line 4087
    new-instance v0, Landroid/app/SyncNotedAppOp;

    move-object/from16 v1, p5

    invoke-direct {v0, v12, v2, v1, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 0

    .line 3944
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 23

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v0, p3

    .line 3969
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    .line 3970
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3971
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 3972
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v11

    .line 3974
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v5

    .line 3975
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3976
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 3977
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNextDeviceId()I

    move-result v8

    .line 3979
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 3980
    invoke-virtual {v1, v3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3981
    invoke-virtual {v1, v11}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v9

    const-string v12, " is invalid"

    const-string v13, "AppOps"

    const/4 v14, 0x1

    if-nez v9, :cond_0

    .line 3982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startProxyOperationImpl returned MODE_IGNORED as proxyVirtualDeviceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v14, v3, v7, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3990
    :cond_0
    invoke-virtual {v1, v8}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startProxyOperationImpl returned MODE_IGNORED as proxiedVirtualDeviceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v14, v3, v7, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3999
    :cond_1
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v1, v2, v9}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4000
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v1, v6, v9}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    move-object v4, v7

    goto/16 :goto_9

    .line 4005
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p8, :cond_4

    move v13, v14

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    .line 4008
    :goto_0
    invoke-static {v4, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 4011
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v14, v3, v7, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const/4 v15, -0x1

    if-eqz v0, :cond_7

    move/from16 v0, p11

    if-eq v0, v15, :cond_8

    and-int/lit8 v16, p9, 0x8

    if-nez v16, :cond_6

    and-int/lit8 v16, p10, 0x8

    if-eqz v16, :cond_8

    :cond_6
    move/from16 v16, v14

    goto :goto_1

    :cond_7
    move/from16 v0, p11

    :cond_8
    const/16 v16, 0x0

    .line 4019
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-ne v9, v5, :cond_9

    move v9, v14

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    .line 4020
    :goto_2
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v12, v14, v15, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_b

    if-nez v9, :cond_b

    if-eqz v16, :cond_a

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v12, 0x1

    .line 4025
    :goto_4
    invoke-static {v5, v6}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_c

    .line 4028
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3, v7, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_c
    if-eqz v12, :cond_d

    const/16 v6, 0x8

    goto :goto_5

    :cond_d
    const/16 v6, 0x10

    :goto_5
    if-nez v13, :cond_11

    move-object v0, v7

    move-object v7, v2

    move v2, v5

    move v5, v8

    move v8, v6

    move v6, v4

    move-object v4, v0

    move-object v0, v1

    move v1, v3

    move-object v3, v9

    move/from16 v9, p4

    .line 4037
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService;->startOperationDryRun(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IZ)Landroid/app/SyncNotedAppOp;

    move-result-object v13

    move-object v1, v0

    move v0, v2

    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move v4, v6

    move-object v5, v7

    move/from16 v22, v8

    .line 4042
    invoke-virtual {v13}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    invoke-virtual {v1, v2, v9}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v2

    if-nez v2, :cond_e

    return-object v13

    :cond_e
    if-eqz v12, :cond_f

    const/16 v17, 0x2

    :goto_6
    const/16 v18, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x4

    move/from16 v17, v2

    goto :goto_6

    :goto_7
    xor-int/lit8 v14, v12, 0x1

    .line 4049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v6, v10

    const/4 v10, 0x0

    move v7, v11

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v13, p4

    move/from16 v16, p7

    move/from16 v18, p11

    move/from16 v12, v17

    move/from16 v17, p9

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v8

    move v9, v13

    .line 4054
    invoke-virtual {v8}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    invoke-virtual {v1, v2, v9}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v2

    if-nez v2, :cond_10

    return-object v8

    :cond_10
    move-object v10, v6

    move v11, v7

    move v13, v9

    move/from16 v7, v20

    move/from16 v12, v22

    move-object v9, v5

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p10

    move/from16 v18, p11

    move v8, v4

    move-object/from16 v6, v19

    move v4, v0

    move-object/from16 v5, v21

    goto :goto_8

    :cond_11
    move v0, v5

    move-object/from16 v19, v7

    move-object/from16 v21, v9

    move/from16 v13, p4

    move-object v9, v2

    move v12, v6

    move v7, v8

    move/from16 v3, p2

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p10

    move/from16 v18, p11

    move-object/from16 v6, v19

    move-object/from16 v5, v21

    move-object/from16 v2, p1

    move v8, v4

    move v4, v0

    .line 4059
    :goto_8
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 4001
    :goto_9
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3, v4, v6}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public startProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 1

    move-object v0, p3

    .line 3956
    new-instance p3, Landroid/content/AttributionSource;

    invoke-direct {p3, v0}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 3957
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 8

    .line 3559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3560
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3561
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v3, v0

    :goto_0
    const/4 v6, 0x0

    if-eqz p1, :cond_1

    .line 3566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3567
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa2

    .line 3566
    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 3572
    :cond_2
    monitor-enter p0

    .line 3573
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_3

    .line 3575
    :try_start_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3576
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    .line 3578
    :goto_1
    :try_start_2
    new-instance v0, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    move-object v2, p2

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    .line 3580
    array-length p0, p1

    :goto_2
    if-ge v6, p0, :cond_4

    aget p2, p1, v6

    .line 3581
    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    .line 3583
    :cond_4
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_3

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 3

    .line 3782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3783
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3785
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3786
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    .line 3788
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3790
    monitor-enter p0

    .line 3791
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 3794
    new-instance v0, Landroid/os/RemoteCallbackList$Builder;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/os/RemoteCallbackList$Builder;-><init>(I)V

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 3796
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList$Builder;->setInterfaceDiedCallback(Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;)Landroid/os/RemoteCallbackList$Builder;

    move-result-object v0

    .line 3798
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList$Builder;->build()Landroid/os/RemoteCallbackList;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3801
    new-instance v0, Lcom/android/server/appop/AppOpsService$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/appop/AppOpsService$9;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 3808
    :cond_1
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3809
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3810
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 2834
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 11

    .line 2841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2842
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, -0x1

    const/16 v1, 0xa2

    invoke-static {p1, v8, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2853
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->filterAppAccessUnlocked(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v9, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2854
    :goto_1
    monitor-enter p0

    if-eq p1, v8, :cond_2

    .line 2855
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_6

    :cond_2
    move v10, p1

    :goto_2
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_4

    if-ne p1, v8, :cond_3

    const/4 p1, -0x2

    :cond_3
    move v5, p1

    goto :goto_3

    :cond_4
    move v5, v10

    .line 2868
    :goto_3
    :try_start_1
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-nez p1, :cond_5

    .line 2870
    new-instance v0, Lcom/android/server/appop/AppOpsService$ModeCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, -0x1

    move-object v1, p0

    move v4, p3

    move-object v2, p4

    :try_start_2
    invoke-direct/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIIII)V

    .line 2872
    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {v2}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_4
    move-object p1, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_4

    :cond_5
    move-object v1, p0

    :goto_5
    if-eq v10, v8, :cond_7

    .line 2875
    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_6

    .line 2877
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2878
    iget-object p3, v1, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p3, v10, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2880
    :cond_6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v9, :cond_9

    .line 2883
    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_8

    .line 2885
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2886
    iget-object p3, v1, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2888
    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2890
    :cond_9
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 8

    .line 3655
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3656
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3657
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v3, v0

    .line 3661
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Ops cannot be null or empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/16 v1, 0xa2

    .line 3662
    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3664
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3665
    monitor-enter p0

    .line 3666
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 3668
    :try_start_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3669
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    .line 3671
    :goto_1
    :try_start_2
    new-instance v0, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    move-object v2, p2

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$NotedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V

    .line 3673
    array-length p0, p1

    :goto_2
    if-ge v6, p0, :cond_2

    aget p2, p1, v6

    .line 3674
    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    .line 3676
    :cond_2
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_3

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 8

    .line 3607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3608
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3609
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v3, v0

    .line 3614
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Ops cannot be null or empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3616
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/16 v1, 0xa2

    .line 3615
    invoke-static {p1, v6, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3617
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3619
    monitor-enter p0

    .line 3620
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 3622
    :try_start_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3623
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    .line 3626
    :goto_1
    :try_start_2
    new-instance v0, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, p0

    move-object v2, p2

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$StartedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsStartedCallback;III)V

    .line 3628
    array-length p0, p1

    :goto_2
    if-ge v6, p0, :cond_2

    aget p2, p1, v6

    .line 3629
    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    .line 3631
    :cond_2
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_3

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3591
    :cond_0
    monitor-enter p0

    .line 3592
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3593
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_1

    .line 3595
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3597
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3599
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$ActiveCallback;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3601
    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 3

    .line 3815
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3816
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3819
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    .line 3821
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3823
    monitor-enter p0

    .line 3824
    :try_start_0
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;

    if-eqz p1, :cond_0

    .line 3826
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3827
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 3828
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3831
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

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2898
    :cond_0
    monitor-enter p0

    .line 2899
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz p1, :cond_4

    .line 2901
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 2902
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2903
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2904
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2905
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2906
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2909
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 2910
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2911
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2912
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2913
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2917
    :cond_4
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .locals 3

    .line 3681
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3682
    monitor-enter p0

    .line 3683
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 3684
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_0

    .line 3686
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3688
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3690
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$NotedCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$NotedCallback;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3692
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    .locals 3

    .line 3636
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3638
    monitor-enter p0

    .line 3639
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 3640
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_0

    .line 3642
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3645
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3647
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$StartedCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$StartedCallback;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3649
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V
    .locals 3

    .line 7284
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    .line 7285
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x3

    .line 7286
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7287
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    return-void

    .line 7289
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7290
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7291
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x2

    .line 7292
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7293
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public systemReady()V
    .locals 12

    .line 1148
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 1150
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->systemReady()V

    .line 1151
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->initializeUidStates()V

    .line 1153
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 1154
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/appop/HistoricalRegistryInterface;->systemReady(Landroid/content/ContentResolver;)V

    .line 1156
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1157
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1158
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    const-string/jumbo v0, "package"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1161
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->prepareInternalCallbacks()V

    .line 1166
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1167
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1168
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1169
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/appop/AppOpsService$5;

    invoke-direct {v7, p0}, Lcom/android/server/appop/AppOpsService$5;-><init>(Lcom/android/server/appop/AppOpsService;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1205
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$6;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$7;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$7;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 1229
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method

.method public final trimUidStatesLocked(Landroid/util/SparseBooleanArray;Ljava/util/Map;)V
    .locals 6

    .line 1329
    monitor-enter p0

    .line 1331
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    .line 1332
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x0

    .line 1333
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1334
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_4

    const/16 v3, 0x4e1f

    if-gt v2, v3, :cond_4

    .line 1337
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1338
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 1339
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1340
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1341
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 1344
    :cond_0
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1346
    invoke-virtual {p0, v4, v1}, Lcom/android/server/appop/AppOpsService;->refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1349
    :cond_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1350
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_3

    .line 1354
    :cond_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1357
    :cond_5
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public uidRemoved(I)V
    .locals 5

    .line 1492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1494
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1496
    const-string p0, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to remove existing UID. uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " name: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1504
    monitor-enter p0

    .line 1505
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 1507
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1508
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 1510
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 1500
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1501
    throw p0
.end method

.method public final updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .locals 1

    .line 4901
    monitor-enter p0

    .line 4902
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/appop/AppOpsUidStateTracker;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    .line 4903
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final updatePermissionRevokedCompat(III)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 2338
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_b

    .line 2345
    :cond_0
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2346
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_b

    :cond_1
    const/4 v11, 0x0

    .line 2349
    aget-object v7, v0, v11

    .line 2351
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [I

    .line 2352
    array-length v13, v12

    move v14, v11

    :goto_0
    if-ge v14, v13, :cond_e

    aget v0, v12, v14

    .line 2353
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    move-object/from16 v19, v12

    move/from16 v24, v13

    goto/16 :goto_a

    .line 2358
    :cond_2
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-virtual {v6, v0, v8, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 2365
    :cond_3
    :try_start_0
    invoke-virtual {v5, v0, v11}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2371
    invoke-virtual {v6}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 2375
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v8

    .line 2376
    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v8

    const/16 v9, 0x17

    if-lt v8, v9, :cond_5

    const/16 v16, 0x1

    goto :goto_2

    :cond_5
    move/from16 v16, v11

    .line 2378
    :goto_2
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 2380
    iget-object v8, v6, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    const/16 v17, 0x8

    const-string v9, ", permission="

    const-string v11, ", mode="

    const-string v15, ", switchCode="

    const-string/jumbo v1, "setUidMode() called with a mode inconsistent with runtime permission state, this is discouraged and you should revoke the runtime permission instead: uid="

    move-object/from16 v19, v12

    const-string v12, "AppOps"

    if-eqz v8, :cond_b

    .line 2381
    invoke-virtual {v5, v8, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9

    if-eqz v4, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_7

    if-eqz v16, :cond_7

    move-object/from16 v20, v5

    .line 2386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v7

    iget-object v7, v6, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move-object/from16 v20, v5

    move-object/from16 v21, v7

    .line 2393
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 2395
    :try_start_1
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v8, :cond_8

    move-object v5, v9

    move/from16 v9, v17

    goto :goto_5

    :cond_8
    move-object v5, v9

    const/4 v9, 0x0

    :goto_5
    const/16 v8, 0x8

    move/from16 v24, v13

    move-object/from16 v7, v21

    move-object v13, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2400
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2401
    throw v0

    :cond_9
    move/from16 v24, v13

    move-object v13, v9

    :goto_6
    if-eqz v4, :cond_a

    const/4 v6, 0x4

    if-eq v4, v6, :cond_a

    :goto_7
    const/16 v18, 0x1

    goto :goto_8

    :cond_a
    const/16 v18, 0x0

    goto :goto_8

    :cond_b
    move/from16 v24, v13

    move-object v13, v9

    if-eqz v4, :cond_a

    goto :goto_7

    :goto_8
    if-eqz v18, :cond_c

    if-eqz v16, :cond_c

    .line 2411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    if-eqz v18, :cond_d

    move/from16 v9, v17

    goto :goto_9

    :cond_d
    const/4 v9, 0x0

    :goto_9
    const/16 v8, 0x8

    move-object v6, v0

    .line 2419
    :try_start_2
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2423
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a

    :catchall_1
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2424
    throw v0

    :catch_0
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v24, v13

    .line 2367
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v12, v19

    move/from16 v13, v24

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_e
    :goto_b
    return-void
.end method

.method public final updateStartedOpModeForUidForDefaultDeviceLocked(IZI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 6953
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v8, :cond_0

    goto/16 :goto_5

    .line 6958
    :cond_0
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_7

    .line 6960
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/appop/AppOpsService$Ops;

    move/from16 v2, p1

    if-eqz v12, :cond_1

    .line 6961
    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_4

    .line 6965
    :cond_2
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v7, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 6967
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 6966
    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    goto :goto_4

    .line 6971
    :cond_3
    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    const-string v4, "default:0"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/util/ArrayMap;

    move v14, v10

    .line 6973
    :goto_2
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v14, v3, :cond_6

    .line 6975
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/server/appop/AttributedOp;

    if-eqz p2, :cond_4

    .line 6976
    invoke-virtual {v15}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6977
    invoke-virtual {v15}, Lcom/android/server/appop/AttributedOp;->pause()V

    goto :goto_3

    .line 6978
    :cond_4
    invoke-virtual {v15}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6979
    iget-object v3, v12, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v3

    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 6981
    iget-object v3, v12, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 6984
    invoke-virtual {v15}, Lcom/android/server/appop/AttributedOp;->resume()V

    :cond_5
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v1, p3

    goto :goto_2

    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    goto/16 :goto_0

    :cond_7
    :goto_5
    return-void
.end method

.method public final updateStartedOpModeForUserForDefaultDevice(IZI)V
    .locals 4

    .line 6939
    monitor-enter p0

    .line 6940
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6942
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    .line 6943
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, p3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6946
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IZI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6948
    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateUidProcState(III)V
    .locals 1

    .line 1711
    monitor-enter p0

    .line 1712
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTracker;->updateUidProcState(III)V

    .line 1713
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final validateOpRequest(IILjava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4740
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    if-eqz p5, :cond_0

    .line 4742
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 4744
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/appop/AppOpsService;->isValidVirtualDeviceId(I)Z

    move-result p1

    const/4 p5, 0x0

    const-string v0, "AppOps"

    if-nez p1, :cond_1

    .line 4745
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": error due to virtualDeviceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p5

    .line 4748
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/appop/AppOpsService;->isIncomingPackageValid(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 4749
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": error due to package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p5

    .line 4753
    :cond_2
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    .line 4755
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": error due to unable to resolve uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p5

    :cond_3
    return-object p0
.end method

.method public final verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4967
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public final verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 4977
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public final verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_1

    .line 5007
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    if-eqz p6, :cond_0

    .line 5009
    invoke-virtual {v1, v5, v4}, Lcom/android/server/appop/AppOpsService;->isPackageNullOrSystem(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    invoke-direct {v0, v8, v6}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    .line 5011
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5019
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5020
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v9

    .line 5021
    invoke-static {v2, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-wide/16 v10, 0x0

    .line 5023
    invoke-static {v10, v11}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 5022
    invoke-virtual {v0, v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5027
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    move/from16 v0, p1

    .line 5033
    :goto_1
    monitor-enter p0

    .line 5034
    :try_start_1
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$UidState;

    if-eqz v9, :cond_4

    .line 5035
    iget-object v10, v9, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 5036
    iget-object v9, v9, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v9, :cond_4

    if-eqz v3, :cond_3

    .line 5038
    iget-object v10, v9, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_3
    :goto_2
    iget-object v10, v9, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    if-eqz v10, :cond_4

    .line 5040
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    iget-object v2, v9, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    .line 5041
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v0, v10, v2}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    monitor-exit p0

    return-object v0

    .line 5044
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5046
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 5050
    const-string v10, "com.android.shell"

    invoke-static {v2, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x7d0

    goto :goto_3

    .line 5055
    :cond_5
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result v10

    :goto_3
    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 5058
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v10, v3, :cond_7

    if-nez p7, :cond_6

    .line 5060
    const-string v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad call made by uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Package \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" does not belong to uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    :cond_6
    const-string v1, " but it is not"

    .line 5066
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Specified package \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" under uid "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5067
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5072
    :cond_7
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    sget-object v2, Landroid/app/AppOpsManager$RestrictionBypass;->UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;

    if-eqz p6, :cond_8

    .line 5074
    invoke-virtual {v1, v5, v4}, Lcom/android/server/appop/AppOpsService;->isPackageNullOrSystem(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    move v6, v7

    :goto_4
    invoke-direct {v0, v2, v6}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    .line 5077
    :cond_9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5082
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 5084
    :try_start_2
    const-class v13, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    .line 5085
    invoke-virtual {v13, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    if-nez v14, :cond_a

    move-object v15, v8

    goto :goto_5

    .line 5086
    :cond_a
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    :goto_5
    if-eqz v15, :cond_b

    .line 5088
    invoke-virtual {v1, v15, v3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v10

    .line 5089
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-static {v4, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 5090
    invoke-virtual {v1, v14}, Lcom/android/server/appop/AppOpsService;->getBypassforPackage(Lcom/android/server/pm/pkg/PackageState;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v6

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_b
    move-object v6, v8

    move v4, v10

    move v10, v7

    :goto_6
    if-nez v10, :cond_10

    if-eqz v5, :cond_c

    .line 5094
    invoke-virtual {v13, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    :cond_c
    if-eqz p6, :cond_d

    .line 5097
    invoke-virtual {v1, v8, v3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v16, 0x1

    goto :goto_7

    :cond_d
    move/from16 v16, v7

    :goto_7
    if-eqz v15, :cond_e

    if-eqz v16, :cond_e

    .line 5100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attributionTag "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " declared in manifest of the proxy package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", this is not advised"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_e
    if-eqz v15, :cond_f

    .line 5103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attributionTag "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not declared in manifest of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 5106
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found, can\'t check for attributionTag "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5109
    :goto_8
    const-string v3, "AppOps"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v10, v16

    .line 5112
    :cond_10
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eq v4, v0, :cond_12

    if-nez p7, :cond_11

    .line 5117
    const-string v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad call made by uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Package \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" does not belong to uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5120
    :cond_11
    const-string v1, " but it is not"

    .line 5121
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Specified package \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" under uid "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5124
    :cond_12
    new-instance v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    invoke-direct {v0, v6, v10}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object v0

    .line 5112
    :goto_9
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5113
    throw v0

    .line 5044
    :goto_a
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final verifyIncomingOp(I)V
    .locals 3

    if-ltz p1, :cond_2

    const/16 v0, 0xa3

    if-ge p1, v0, :cond_2

    .line 4813
    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4814
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4815
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4814
    const-string v2, "android.permission.MANAGE_APPOPS"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4818
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4816
    const-string v2, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4821
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4819
    const-string v1, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4823
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "verifyIncomingOp: uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not have any of {MANAGE_APPOPS, GET_APP_OPS_STATS, MANAGE_APP_OPS_MODES}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 4830
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad operation #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyIncomingProxyUid(Landroid/content/AttributionSource;)V
    .locals 3

    .line 4762
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4765
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4768
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 4771
    :cond_2
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4772
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 4771
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final verifyIncomingUid(I)V
    .locals 3

    .line 4776
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4779
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    .line 4782
    :cond_1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4783
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 4782
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public writeRecentAccesses()V
    .locals 31

    move-object/from16 v1, p0

    .line 5572
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 5575
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 5581
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5584
    :try_start_2
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 5585
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5586
    const-string v6, "app-ops"

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5587
    const-string/jumbo v6, "v"

    const/4 v7, 0x1

    invoke-interface {v5, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_10

    move-object v8, v0

    const/4 v7, 0x0

    .line 5591
    :goto_0
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_f

    .line 5592
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 5593
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v10, :cond_1

    if-eqz v8, :cond_0

    .line 5595
    :try_start_4
    const-string/jumbo v8, "pkg"

    invoke-interface {v5, v0, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_a

    .line 5597
    :cond_0
    :goto_1
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 5599
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5600
    const-string/jumbo v10, "n"

    invoke-interface {v5, v0, v10, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5603
    :cond_1
    :try_start_5
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5604
    const-string/jumbo v10, "n"

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-interface {v5, v0, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5605
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    .line 5606
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_e

    .line 5607
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    .line 5608
    const-string/jumbo v12, "op"

    invoke-interface {v5, v0, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5609
    const-string/jumbo v12, "n"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-interface {v5, v0, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5610
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq v12, v13, :cond_2

    .line 5611
    :try_start_6
    const-string/jumbo v12, "m"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v13

    invoke-interface {v5, v0, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5614
    :cond_2
    :try_start_7
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 5616
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 5618
    invoke-virtual {v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v15

    .line 5620
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v6, :cond_c

    .line 5622
    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move/from16 v18, v6

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move/from16 v16, v0

    .line 5624
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v0

    move-object/from16 v19, v4

    .line 5625
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 5627
    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v8

    move/from16 v22, v10

    move-object/from16 v23, v11

    .line 5629
    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v24, v2

    .line 5631
    :try_start_8
    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v1

    .line 5634
    invoke-virtual {v14, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    const-wide/16 v25, 0x0

    cmp-long v4, v8, v25

    if-gtz v4, :cond_3

    cmp-long v27, v10, v25

    if-gtz v27, :cond_3

    cmp-long v27, v1, v25

    if-gtz v27, :cond_3

    if-nez v0, :cond_3

    move-object/from16 v28, v12

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    goto/16 :goto_8

    :cond_3
    if-eqz v0, :cond_4

    .line 5646
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 5647
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v28

    .line 5648
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v0

    move-object/from16 v29, v27

    move/from16 v27, v4

    move-object/from16 v4, v29

    move-object/from16 v29, v28

    move-object/from16 v28, v12

    move-object/from16 v12, v29

    :goto_5
    move-object/from16 v29, v14

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    :goto_6
    move-object/from16 v1, p0

    goto/16 :goto_a

    :cond_4
    const/4 v0, -0x1

    move/from16 v27, v4

    move-object/from16 v28, v12

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_5

    .line 5651
    :goto_7
    const-string/jumbo v14, "st"

    move-object/from16 v30, v15

    const/4 v15, 0x0

    invoke-interface {v5, v15, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v13, :cond_5

    .line 5653
    const-string v14, "id"

    invoke-interface {v5, v15, v14, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5655
    :cond_5
    const-string/jumbo v14, "n"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v14, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v27, :cond_6

    .line 5657
    const-string/jumbo v6, "t"

    invoke-interface {v5, v15, v6, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    cmp-long v6, v10, v25

    if-lez v6, :cond_7

    .line 5660
    const-string/jumbo v6, "r"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v6, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    cmp-long v6, v1, v25

    if-lez v6, :cond_8

    .line 5663
    const-string v6, "d"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v6, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    if-eqz v4, :cond_9

    .line 5666
    const-string/jumbo v1, "pp"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    if-eqz v12, :cond_a

    .line 5669
    const-string/jumbo v1, "pc"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v1, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    if-ltz v0, :cond_b

    .line 5672
    const-string/jumbo v1, "pu"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5674
    :cond_b
    const-string/jumbo v0, "st"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_8
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v17

    move/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v2, v24

    move-object/from16 v12, v28

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_6

    :cond_c
    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v24, v2

    move-object/from16 v19, v4

    move/from16 v17, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v22, v10

    .line 5678
    const-string/jumbo v0, "op"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v2, v24

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_e
    move-object/from16 v24, v2

    move-object/from16 v19, v4

    move/from16 v17, v7

    move-object/from16 v20, v8

    .line 5680
    const-string/jumbo v0, "uid"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v2, v24

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    move-object/from16 v24, v2

    if-eqz v8, :cond_11

    .line 5683
    const-string/jumbo v0, "pkg"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    :cond_10
    move-object/from16 v24, v2

    .line 5687
    :cond_11
    :goto_9
    const-string v0, "app-ops"

    const/4 v15, 0x0

    invoke-interface {v5, v15, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5688
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v1, p0

    .line 5689
    :try_start_9
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_b

    :catch_3
    move-exception v0

    .line 5691
    :goto_a
    :try_start_a
    const-string v2, "AppOps"

    const-string v4, "Failed to write state, restoring backup."

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5692
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 5694
    :goto_b
    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 5695
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    invoke-interface {v0}, Lcom/android/server/appop/HistoricalRegistryInterface;->writeAndClearDiscreteHistory()V

    return-void

    :catch_4
    move-exception v0

    move-object/from16 v24, v2

    .line 5577
    :try_start_b
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5578
    monitor-exit v24

    return-void

    .line 5694
    :goto_c
    monitor-exit v24
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0
.end method
