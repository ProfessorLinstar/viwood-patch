.class public final Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# static fields
.field public static final DEBUG:Z

.field static final TRANSPORT_AFFINITY_AVOID:I = 0x2

.field static final TRANSPORT_AFFINITY_PREFER:I = 0x1

.field static final TRANSPORT_AFFINITY_UNDEFINED:I

.field static final sNetworkTransportAffinities:Landroid/util/SparseIntArray;


# instance fields
.field public final mAvailableNetworks:Landroid/util/ArrayMap;

.field public final mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

.field public final mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

.field public final mConnManager:Landroid/net/ConnectivityManager;

.field public final mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

.field public final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

.field public final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field public final mHandler:Landroid/os/Handler;

.field public mLastAllJobUpdateTimeElapsed:J

.field public mLastCallbackAdjustmentTimeElapsed:J

.field public final mNetPolicyListener:Landroid/net/INetworkPolicyListener;

.field public final mNetPolicyManager:Landroid/net/NetworkPolicyManager;

.field public final mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field public final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mRequestedWhitelistJobs:Landroid/util/SparseArray;

.field public final mSignalStrengths:Landroid/util/SparseArray;

.field public final mSortedStats:Ljava/util/List;

.field public mSystemDefaultNetwork:Landroid/net/Network;

.field public final mTrackedJobs:Landroid/util/SparseArray;

.field public final mUidStats:Landroid/util/SparseArray;

.field public final mUidStatsComparator:Ljava/util/Comparator;


# direct methods
.method public static synthetic $r8$lambda$MqfC7AxNiM37KdNO4Z5A70P8tKE(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController;->lambda$onConstantsUpdatedLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackgroundMeteredAllowed(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentDefaultNetworkCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlexibilityController(Lcom/android/server/job/controllers/ConnectivityController;)Lcom/android/server/job/controllers/FlexibilityController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetPolicyManager(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/net/NetworkPolicyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSystemDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController;Landroid/net/Network;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeAdjustRegisteredCallbacksLocked(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->maybeAdjustRegisteredCallbacksLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAllTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateAllTrackedJobsLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(ILandroid/net/Network;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTransportAffinitySatisfaction(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTransportAffinitySatisfaction(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 95
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Connectivity"

    .line 96
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 143
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    .line 145
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xa

    .line 147
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 4

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/RestrictingController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 158
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 165
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 172
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 179
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 181
    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/ConnectivityController$1;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStatsComparator:Ljava/util/Comparator;

    .line 277
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    .line 278
    new-instance p1, Landroid/util/Pools$SimplePool;

    const/16 v0, 0x7d

    invoke-direct {p1, v0}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    .line 284
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    .line 285
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    .line 289
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    .line 1680
    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$2;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1835
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$3;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1857
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$4;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$4;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 306
    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    .line 307
    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    .line 309
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 310
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicyManager;

    iput-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 311
    const-class v3, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 312
    iput-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 316
    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    .line 317
    invoke-virtual {v1, p2, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 319
    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 321
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.type.watch"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 323
    sget-object p0, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    :cond_0
    return-void
.end method

.method public static calculateTransferTimeMs(JJ)J
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    mul-long/2addr p2, v0

    const-wide/16 v0, 0x8

    .line 902
    div-long/2addr p2, v0

    div-long/2addr p0, p2

    return-wide p0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;
    .locals 6

    .line 997
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 998
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 999
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object p0

    array-length v1, p0

    :goto_1
    if-ge v3, v1, :cond_1

    aget v2, p0, v3

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 0

    const/16 p1, 0x14

    .line 912
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result p0

    iget p1, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method

.method public static isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 0

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    const/high16 p1, 0x1000000

    .line 1007
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 p1, 0xb

    .line 1010
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1011
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onConstantsUpdatedLocked$0()V
    .locals 7

    .line 664
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 665
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 666
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    if-nez v5, :cond_0

    goto :goto_1

    .line 670
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/ConnectivityController;->updateTransportAffinitySatisfaction(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 674
    :cond_1
    iget-boolean v5, v5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    or-int/2addr v4, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 677
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 679
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    const/high16 v3, 0x10000000

    .line 677
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IZJ)V

    .line 680
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateAllTrackedJobsLocked(Z)V

    .line 682
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 2275
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->-$$Nest$mdump(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 7

    .line 2282
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 2284
    const-string v2, "Aconfig flags:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2287
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2286
    const-string v3, "com.android.server.job.relax_prefetch_connectivity_constraint_only_on_charger"

    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2288
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2289
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2290
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2292
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 2293
    const-string v2, "Requested standby exceptions:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v2, v3

    .line 2294
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 2295
    const-string v4, " "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2296
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2297
    const-string v4, " ("

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2298
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2299
    const-string v4, " jobs)"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2301
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2303
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const-string v4, ": "

    if-lez v2, :cond_3

    .line 2304
    const-string v2, "Available networks:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 2306
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 2307
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 2308
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2309
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2311
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_2

    .line 2313
    :cond_3
    const-string v2, "No available networks"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2315
    :goto_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2317
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 2318
    const-string v2, "Subscription ID signal strengths:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2319
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 2320
    :goto_3
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 2321
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2322
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2323
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    iget v5, v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2325
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_4

    .line 2327
    :cond_5
    const-string v2, "No cached signal strengths"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2329
    :goto_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2331
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2332
    const-string v2, "Background metered allowed: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2333
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2334
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2337
    :cond_6
    const-string v2, "Current default network callbacks:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 2339
    :goto_5
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 2340
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    invoke-static {v5, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$mdumpLocked(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2342
    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2343
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2345
    const-string v2, "UID Pecking Order:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    .line 2347
    :goto_6
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 2348
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2349
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2350
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->-$$Nest$mdumpLocked(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Landroid/util/IndentingPrintWriter;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2352
    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2353
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v0, v3

    .line 2355
    :goto_7
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 2356
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    move v2, v3

    .line 2357
    :goto_8
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    .line 2358
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 2359
    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_9

    .line 2362
    :cond_9
    const-string v6, "#"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2363
    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 2364
    const-string v6, " from "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-static {p1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2366
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2367
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 2368
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 11

    .line 2377
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000003L

    .line 2378
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    .line 2380
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2381
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 2383
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const-wide v5, 0x20500000003L

    .line 2381
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2385
    :goto_1
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2386
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move v5, v2

    .line 2387
    :goto_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2388
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 2389
    invoke-interface {p4, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    const-wide v7, 0x20b00000002L

    .line 2392
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10b00000001L

    .line 2394
    invoke-virtual {v6, p1, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v9, 0x10500000002L

    .line 2397
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    .line 2396
    invoke-virtual {p1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2398
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2402
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2403
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    .line 496
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    .line 503
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    const/high16 v3, 0x10000000

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 515
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-nez v1, :cond_5

    .line 516
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 519
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_1

    .line 504
    :cond_4
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 523
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v1

    const-string v3, "evaluateStateLocked finds job "

    const-string v4, "JobScheduler.Connectivity"

    if-eqz v1, :cond_7

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 525
    sget-boolean v1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " would be ready."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_6
    iget v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    return-void

    .line 531
    :cond_7
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " would not be ready."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public getCcConfig()Lcom/android/server/job/controllers/ConnectivityController$CcConfig;
    .locals 0

    .line 2270
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    return-object p0
.end method

.method public getEstimatedTransferTimeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 8

    .line 871
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    .line 872
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v4

    .line 877
    :cond_0
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-nez p1, :cond_1

    return-wide v4

    .line 881
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_2

    return-wide v4

    .line 886
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result p1

    int-to-long v6, p1

    .line 885
    invoke-static {v0, v1, v6, v7}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v0

    .line 888
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p0

    int-to-long p0, p0

    .line 887
    invoke-static {v2, v3, p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide p0

    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    return-wide p0

    :cond_3
    cmp-long v2, p0, v4

    if-nez v2, :cond_4

    return-wide v0

    :cond_4
    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 1331
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1332
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public final getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;
    .locals 5

    .line 1352
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 1353
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1358
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 1363
    iget p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    const/16 v2, 0x1e

    const v3, -0x30048

    const-string v4, "JobScheduler.Connectivity"

    if-ge p0, v2, :cond_7

    .line 1364
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    goto :goto_1

    .line 1369
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1370
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_8

    .line 1371
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using UI bypass for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1374
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p0

    if-nez p0, :cond_5

    iget-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz p0, :cond_3

    goto :goto_0

    .line 1380
    :cond_3
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 1381
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using BG bypass for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v3, -0x41

    goto :goto_2

    .line 1375
    :cond_5
    :goto_0
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_6

    .line 1376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using EJ bypass for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v3, -0x48

    goto :goto_2

    .line 1365
    :cond_7
    :goto_1
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_8

    .line 1366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using FG bypass for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_8
    :goto_2
    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fgetmBlockedReasons(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)I

    move-result p0

    and-int/2addr p0, v3

    if-nez p0, :cond_9

    .line 1387
    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fgetmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)Landroid/net/Network;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v1
.end method

.method public final getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1345
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1346
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 423
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UidStats was null after job for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was registered"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "JobScheduler.Connectivity"

    invoke-static {p3, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    new-instance p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/server/job/controllers/ConnectivityController$UidStats;-><init>(ILcom/android/server/job/controllers/ConnectivityController-IA;)V

    .line 427
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p2

    :cond_1
    return-object v0
.end method

.method public final isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 19

    move-object/from16 v0, p0

    .line 703
    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v3

    .line 705
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getMinimumNetworkChunkBytes()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    .line 706
    const-string/jumbo v11, "ms to run; that\'s insane!"

    const-string/jumbo v12, "ms and job has "

    const-string v13, " kbps network would take "

    const-string v14, "JobScheduler.Connectivity"

    const-wide/16 v15, 0x0

    if-eqz v1, :cond_2

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, v15

    .line 710
    const-string v7, " bytes over "

    const-string v8, "Minimum chunk "

    const/16 p2, 0x0

    const/16 p4, 0x1

    if-lez v2, :cond_0

    .line 712
    invoke-static {v5, v6, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v9

    cmp-long v2, v9, v3

    if-lez v2, :cond_0

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 722
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, v15

    if-lez v2, :cond_1

    .line 726
    invoke-static {v5, v6, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v9

    cmp-long v2, v9, v3

    if-lez v2, :cond_1

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    :cond_1
    return p2

    :cond_2
    const/16 p2, 0x0

    const/16 p4, 0x1

    const/16 v1, 0xb

    move-object/from16 v5, p3

    .line 740
    invoke-virtual {v5, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 741
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_3

    return p2

    .line 749
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    cmp-long v6, v0, v7

    .line 750
    const-string v9, "Estimated "

    if-eqz v6, :cond_4

    .line 751
    invoke-virtual {v5}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v6

    move-wide/from16 v17, v7

    int-to-long v7, v6

    cmp-long v6, v7, v15

    if-lez v6, :cond_5

    .line 754
    invoke-static {v0, v1, v7, v8}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v5

    cmp-long v10, v5, v3

    if-lez v10, :cond_5

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " download bytes over "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    :cond_4
    move-wide/from16 v17, v7

    .line 765
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    cmp-long v2, v0, v17

    if-eqz v2, :cond_6

    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v2

    int-to-long v5, v2

    cmp-long v2, v5, v15

    if-lez v2, :cond_6

    .line 770
    invoke-static {v0, v1, v5, v6}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-lez v2, :cond_6

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " upload bytes over "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    :cond_6
    return p2
.end method

.method public final isMeteredAllowed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/NetworkCapabilities;)Z
    .locals 12

    const/16 v0, 0xb

    .line 787
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    const/16 v0, 0x19

    .line 788
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_2

    .line 792
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    .line 793
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    move-result v0

    .line 794
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, p2}, Lcom/android/server/job/JobSchedulerService;->getUidCapabilities(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-eq v0, v3, :cond_1

    if-ge v0, v5, :cond_1

    .line 799
    invoke-static {v0, v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 801
    :goto_0
    sget-boolean v6, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    const-string v7, " capabilities="

    const-string v8, "UID "

    const-string v9, "JobScheduler.Connectivity"

    if-eqz v6, :cond_2

    .line 802
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " current state allows metered network="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " procState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-static {v0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-static {v2}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v3, :cond_3

    return v1

    .line 811
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    .line 814
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    move-result v3

    or-int/2addr v3, v2

    .line 816
    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result v0

    if-eqz v6, :cond_4

    .line 819
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " willBeForeground flag allows metered network="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-static {v3}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 819
    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v0, :cond_5

    return v1

    .line 829
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p1

    if-eqz p1, :cond_7

    or-int/lit8 p1, v2, 0x20

    .line 838
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    move-result v0

    or-int/2addr p1, v0

    .line 840
    invoke-static {v5, p1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result v0

    if-eqz v6, :cond_6

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " UI job state allows metered network="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v0, :cond_7

    return v1

    .line 852
    :cond_7
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_8

    .line 853
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    .line 856
    :cond_8
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 857
    invoke-virtual {p1, p2}, Landroid/net/NetworkPolicyManager;->getRestrictBackgroundStatus(I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    goto :goto_1

    :cond_9
    move v1, v4

    :goto_1
    if-eqz v6, :cond_a

    .line 860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " allowed in data saver="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_a
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_b
    :goto_2
    return v1
.end method

.method public isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 9

    .line 437
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 438
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 439
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Network;

    .line 440
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 442
    :cond_0
    iget-object v4, v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 443
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v5

    .line 444
    sget-boolean v6, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 445
    const-string v6, "JobScheduler.Connectivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNetworkAvailable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") with network "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and capabilities "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Satisfied="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    const/4 p0, 0x1

    .line 449
    monitor-exit v0

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_3
    monitor-exit v0

    return v1

    .line 453
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isNetworkInStateForJobRunLocked(Landroid/net/Network;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 10

    .line 1020
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 1023
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return v1

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1038
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController;->copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v6, 0xb

    .line 1039
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1040
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1041
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result p3

    iget p4, p4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float p3, p3, p4

    if-lez p3, :cond_4

    .line 1042
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 p3, 0x1

    .line 1043
    invoke-virtual {p0, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerInternal;->getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J

    move-result-wide v6

    .line 1045
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide p0

    const-wide/16 v8, -0x1

    cmp-long p2, p0, v8

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move-wide v4, p0

    :goto_0
    add-long/2addr v2, v4

    cmp-long p0, v6, v2

    if-ltz p0, :cond_4

    return p3

    :cond_4
    :goto_1
    return v1
.end method

.method public isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto :goto_0

    .line 1060
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isUsable(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1063
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 1069
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isMeteredAllowed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 1072
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 1074
    :cond_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isStrongEnough(Lcom/android/server/job/controllers/JobStatus;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 1077
    :cond_5
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    return v2

    .line 1080
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/ConnectivityController;->isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v2

    :cond_7
    :goto_0
    return v0
.end method

.method public isStandbyExceptionRequestedLocked(I)Z
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 486
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isStrongEnough(Lcom/android/server/job/controllers/JobStatus;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 8

    .line 922
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x190

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 926
    :cond_0
    iget-boolean v1, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 929
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x4

    .line 932
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 950
    :cond_3
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p2

    .line 951
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "JobScheduler.Connectivity"

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 952
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    if-eqz v6, :cond_4

    .line 954
    iget v4, v6, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 956
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subscription ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t have a registered callback"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 960
    :cond_5
    sget-boolean p2, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 961
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cell signal strength for job="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-gt v3, v2, :cond_c

    const/16 p2, 0x12c

    if-le v0, p2, :cond_7

    return v2

    :cond_7
    if-ge v0, p2, :cond_8

    return v1

    .line 975
    :cond_8
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result p0

    if-nez p0, :cond_a

    .line 976
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result p0

    iget p1, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_b

    :cond_a
    return v2

    :cond_b
    return v1

    :cond_c
    const/4 p2, 0x2

    if-gt v3, p2, :cond_f

    const/16 p2, 0xc8

    if-lt v0, p2, :cond_d

    return v2

    .line 985
    :cond_d
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result p2

    if-eqz p2, :cond_e

    return v2

    .line 989
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p3

    .line 988
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p0

    .line 990
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    return v2
.end method

.method public final isUsable(Landroid/net/NetworkCapabilities;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/16 p0, 0x15

    .line 689
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeAdjustRegisteredCallbacksLocked()V
    .locals 12

    .line 1202
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1204
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1205
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto/16 :goto_a

    .line 1211
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 1212
    iget-wide v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastCallbackAdjustmentTimeElapsed:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 1213
    invoke-virtual {p0, v6, v7}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks(J)V

    return-void

    .line 1217
    :cond_1
    iput-wide v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastCallbackAdjustmentTimeElapsed:J

    .line 1218
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 1220
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_d

    .line 1221
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 1222
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-eqz v5, :cond_c

    .line 1223
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_6

    .line 1229
    :cond_2
    iget-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v6, v6, v2

    if-gez v6, :cond_b

    const-wide v6, 0x7fffffffffffffffL

    .line 1230
    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 1231
    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 1232
    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    .line 1233
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 1234
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 1235
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    .line 1236
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    .line 1237
    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    move v6, v1

    .line 1239
    :goto_1
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 1240
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    const/high16 v8, 0x10000000

    .line 1241
    invoke-virtual {p0, v7, v8}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1242
    iget v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 1243
    invoke-virtual {p0, v7}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1244
    iget v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    .line 1250
    :cond_3
    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    .line 1251
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v8

    if-nez v8, :cond_5

    iget-boolean v8, v7, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v8, :cond_4

    goto :goto_2

    .line 1254
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1255
    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1256
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    goto :goto_3

    .line 1252
    :cond_5
    :goto_2
    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1253
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    .line 1259
    :cond_6
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v8

    if-nez v8, :cond_9

    iget-boolean v8, v7, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v8, :cond_7

    goto :goto_4

    .line 1261
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1262
    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    goto :goto_5

    .line 1264
    :cond_8
    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    goto :goto_5

    .line 1260
    :cond_9
    :goto_4
    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1268
    :cond_a
    iput-wide v2, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    .line 1270
    :cond_b
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1224
    :cond_c
    :goto_6
    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1273
    :cond_d
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStatsComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1275
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1277
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_11

    .line 1278
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    const/16 v5, 0x7d

    if-lt v1, v5, :cond_e

    .line 1280
    iget v5, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1281
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_9

    .line 1284
    :cond_e
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    .line 1285
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v5, :cond_10

    .line 1288
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    invoke-interface {v5}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v5, :cond_f

    .line 1290
    new-instance v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController-IA;)V

    .line 1292
    :cond_f
    iget v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v5, v6}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$msetUid(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;I)V

    .line 1293
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1294
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4, v5, v7}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    :cond_10
    :goto_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1299
    :cond_11
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 1300
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_12
    :goto_a
    return-void
.end method

.method public final maybeRegisterDefaultNetworkCallbackLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1149
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 1150
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1154
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p1

    .line 1155
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    :cond_1
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/16 v0, 0x7d

    if-lt p1, v0, :cond_2

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    return-void

    .line 1162
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->registerPendingUidCallbacksLocked()V

    return-void
.end method

.method public maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 558
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 559
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 563
    const-string v2, "JobScheduler.Connectivity"

    if-nez v1, :cond_1

    .line 564
    const-string/jumbo p0, "maybeRevokeStandbyExceptionLocked found null jobs array even though a standby exception has been requested."

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 569
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_0

    .line 578
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->revokeStandbyExceptionLocked(I)V

    return-void

    .line 570
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 571
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "maybeRevokeStandbyExceptionLocked not revoking because there are still "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " jobs left."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 571
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 338
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 340
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p2

    const/high16 v0, 0x10000000

    .line 341
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 344
    :cond_0
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-nez p2, :cond_1

    .line 346
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 347
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    :cond_1
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x2

    .line 350
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    :cond_2
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    const/4 p2, 0x2

    .line 379
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 380
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-eqz p2, :cond_0

    .line 382
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 385
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p2

    .line 386
    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    .line 387
    iget-object p2, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    :cond_1
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 2

    .line 595
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1, p2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p1

    if-nez p1, :cond_0

    .line 598
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 599
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 600
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 601
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 602
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 603
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->registerPendingUidCallbacksLocked()V

    :cond_0
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .locals 1

    .line 642
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->-$$Nest$fgetmShouldReprocessNetworkCapabilities(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 660
    invoke-virtual {v0}, Lcom/android/server/job/controllers/FlexibilityController;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->-$$Nest$fgetmFlexIsEnabled(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 661
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/ConnectivityController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNetworkActive()V
    .locals 4

    .line 1656
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1657
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    if-nez v1, :cond_0

    .line 1658
    const-string p0, "JobScheduler.Connectivity"

    const-string v1, "System default network is unknown but active"

    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1662
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 1663
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    if-nez v1, :cond_1

    .line 1665
    const-string p0, "JobScheduler.Connectivity"

    const-string v1, "System default network capabilities are unknown but active"

    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    monitor-exit v0

    return-void

    .line 1672
    :cond_1
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1674
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastCheckTimeElapsed:J

    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastConfirmedTimeElapsed:J

    .line 1675
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1676
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUidBiasChangedLocked(III)V
    .locals 0

    .line 631
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    if-eqz p1, :cond_0

    .line 632
    iget p2, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    if-eq p2, p3, :cond_0

    .line 633
    iput p3, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    .line 634
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    :cond_0
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 5

    .line 610
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 611
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 612
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 613
    iget v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 614
    iget v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    .line 615
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 616
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 620
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 621
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 625
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    return-void
.end method

.method public final postAdjustCallbacks()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1193
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks(J)V

    return-void
.end method

.method public final postAdjustCallbacks(J)V
    .locals 1

    .line 1197
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 358
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p0

    .line 361
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->-$$Nest$fputmShouldReprocessNetworkCapabilities(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;Z)V

    .line 648
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController;->isEnabled()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->-$$Nest$fputmFlexIsEnabled(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;Z)V

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    return-void
.end method

.method public reevaluateStateLocked(I)V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-nez p1, :cond_0

    goto :goto_1

    .line 549
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 550
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final registerPendingUidCallbacksLocked()V
    .locals 6

    .line 1173
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1174
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are more registered callbacks than sorted UIDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler.Connectivity"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-ge v0, v1, :cond_2

    const/16 v2, 0x7d

    if-ge v0, v2, :cond_2

    .line 1181
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    .line 1182
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    invoke-interface {v3}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v3, :cond_1

    .line 1184
    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController-IA;)V

    .line 1186
    :cond_1
    iget v4, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v3, v4}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$msetUid(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;I)V

    .line 1187
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1188
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget v2, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v3, v5}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    .line 463
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 465
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    .line 466
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_0

    .line 468
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 469
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "JobScheduler.Connectivity"

    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    goto :goto_0

    .line 477
    :cond_1
    sget-boolean p1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting standby exception for UID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    return-void

    .line 472
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 473
    const-string/jumbo p0, "requestStandbyExceptionLocked found exception already requested."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final revokeStandbyExceptionLocked(I)V
    .locals 2

    .line 587
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking standby exception for UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    .line 589
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final satisfiesTransportAffinities(Landroid/net/NetworkCapabilities;)Z
    .locals 9

    .line 1102
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/FlexibilityController;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1105
    :cond_0
    const-string v0, "JobScheduler.Connectivity"

    if-nez p1, :cond_1

    .line 1106
    const-string p1, "Network constraint satisfied with null capabilities"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    xor-int/2addr p0, v1

    return p0

    .line 1110
    :cond_1
    sget-object v2, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1111
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    xor-int/2addr p0, v1

    return p0

    .line 1114
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p1

    .line 1115
    array-length v2, p1

    if-nez v2, :cond_3

    .line 1116
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    xor-int/2addr p0, v1

    return p0

    .line 1119
    :cond_3
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_8

    aget v5, p1, v4

    .line 1120
    sget-object v6, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 1121
    sget-boolean v7, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 1122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "satisfiesTransportAffinities transport="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " aff="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v6, :cond_6

    const/4 v5, 0x2

    if-eq v6, v5, :cond_5

    goto :goto_1

    :cond_5
    return v3

    .line 1127
    :cond_6
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-boolean v5, v5, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    if-eqz v5, :cond_7

    return v3

    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return v1
.end method

.method public startTrackingLocked()V
    .locals 0

    .line 0
    return-void
.end method

.method public startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 397
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    :cond_0
    return-void
.end method

.method public stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 406
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    :cond_0
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 368
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    .line 371
    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    :cond_0
    return-void
.end method

.method public final unregisterDefaultNetworkCallbackLocked(IJ)Z
    .locals 9

    .line 1306
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1310
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1311
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1312
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1313
    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$mclear(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)V

    .line 1316
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_1

    .line 1321
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1323
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v5, p2

    .line 1322
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    move-result p0

    or-int/2addr v1, p0

    add-int/lit8 v0, v0, -0x1

    move-object p0, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final updateAllTrackedJobsLocked(Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1466
    iget-wide v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastAllJobUpdateTimeElapsed:J

    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, p1, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    add-long/2addr v1, v3

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1468
    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 1470
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1471
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1476
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 1477
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(ILandroid/net/Network;)V

    .line 1478
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastAllJobUpdateTimeElapsed:J

    return-void
.end method

.method public final updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 7

    .line 1391
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 1392
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 1393
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v0, :cond_0

    .line 1395
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRegisterDefaultNetworkCallbackLocked(Lcom/android/server/job/controllers/JobStatus;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1396
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    move-result p0

    return p0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    .line 1398
    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;

    move-result-object v5

    .line 1399
    invoke-virtual {v1, v5}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object v6

    .line 1400
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    move-result p0

    return p0
.end method

.method public final updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z
    .locals 7

    if-nez p5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1408
    :cond_0
    iget-object v0, p5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1409
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1411
    const-string v3, "JobScheduler.Connectivity"

    if-nez v1, :cond_2

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1412
    invoke-virtual {v4, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 1414
    invoke-virtual {p0, v4}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 1413
    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1421
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 1422
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not reassigning network from "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for running job "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 1428
    :cond_2
    invoke-virtual {p1, p2, p3, v1}, Lcom/android/server/job/controllers/JobStatus;->setConnectivityConstraintSatisfied(JZ)Z

    move-result v4

    if-eqz v1, :cond_3

    if-eqz p5, :cond_3

    .line 1430
    iget-boolean p5, p5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    if-eqz p5, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setTransportAffinitiesSatisfied(Z)V

    .line 1432
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->canApplyTransportAffinities()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 1434
    iget-object p5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 1435
    invoke-virtual {p5, p1}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p5

    .line 1434
    invoke-virtual {p1, p2, p3, p5}, Lcom/android/server/job/controllers/JobStatus;->setFlexibilityConstraintSatisfied(JZ)Z

    :cond_4
    if-nez v4, :cond_5

    if-eqz v1, :cond_5

    .line 1440
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1441
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1447
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p2, p1, p4}, Lcom/android/server/job/StateChangedListener;->onNetworkChanged(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;)V

    .line 1453
    :cond_5
    iput-object p4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 1455
    sget-boolean p2, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p2, :cond_7

    .line 1456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Connectivity "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    const-string p3, "CHANGED"

    goto :goto_1

    :cond_6
    const-string/jumbo p3, "unchanged"

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": usable="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isUsable(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " satisfied="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1456
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v4
.end method

.method public final updateTrackedJobsLocked(ILandroid/net/Network;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1493
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1494
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1495
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1496
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1500
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1501
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 1506
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 1507
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_4
    return-void
.end method

.method public final updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1514
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 1518
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 1519
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v1, :cond_1

    return v0

    .line 1528
    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 1530
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    .line 1531
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1533
    invoke-virtual {p0, v3}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;

    move-result-object v6

    if-eqz p2, :cond_4

    .line 1535
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1540
    :cond_2
    iget-object v2, v3, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p0

    goto :goto_2

    .line 1541
    :cond_4
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    move-result p0

    or-int/2addr p0, v0

    move v0, p0

    :goto_2
    add-int/lit8 v1, v1, -0x1

    move-object p0, v2

    goto :goto_0

    :cond_5
    :goto_3
    return v0
.end method

.method public final updateTransportAffinitySatisfaction(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z
    .locals 1

    .line 1092
    iget-object v0, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1093
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->satisfiesTransportAffinities(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    .line 1094
    iget-boolean v0, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    if-eq v0, p0, :cond_0

    .line 1095
    iput-boolean p0, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
