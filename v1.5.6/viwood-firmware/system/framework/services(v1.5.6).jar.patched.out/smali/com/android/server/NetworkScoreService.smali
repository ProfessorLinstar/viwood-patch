.class public Lcom/android/server/NetworkScoreService;
.super Landroid/net/INetworkScoreService$Stub;
.source "NetworkScoreService.java"


# static fields
.field public static final DBG:Z

.field public static final VERBOSE:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mLocationModeReceiver:Landroid/content/BroadcastReceiver;

.field public final mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

.field public mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

.field public final mPackageMonitorLock:Ljava/lang/Object;

.field public final mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

.field public final mScoreCaches:Ljava/util/Map;

.field public final mServiceConnProducer:Ljava/util/function/Function;

.field public mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

.field public final mServiceConnectionLock:Ljava/lang/Object;

.field public final mUseOpenWifiPackageObserver:Landroid/database/ContentObserver;

.field public mUserIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$Y0o2HBV9B2B3w4dg71qG1th9Qc8(Lcom/android/server/NetworkScoreService;I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService;->lambda$new$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkScorerAppManager(Lcom/android/server/NetworkScoreService;)Lcom/android/server/NetworkScorerAppManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbindToScoringServiceIfNeeded(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshBinding(Lcom/android/server/NetworkScoreService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munbindFromScoringServiceIfNeeded(Lcom/android/server/NetworkScoreService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetVERBOSE()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 83
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "NetworkScoreService"

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    sput-boolean v4, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 84
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 262
    new-instance v0, Lcom/android/server/NetworkScorerAppManager;

    invoke-direct {v0, p1}, Lcom/android/server/NetworkScorerAppManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda1;-><init>()V

    .line 263
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 262
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/NetworkScorerAppManager;",
            "Ljava/util/function/Function<",
            "Landroid/net/NetworkScorerAppData;",
            "Lcom/android/server/NetworkScoreService$ScoringServiceConnection;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 269
    invoke-direct {p0}, Landroid/net/INetworkScoreService$Stub;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/android/server/NetworkScoreService$1;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$1;-><init>(Lcom/android/server/NetworkScoreService;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Lcom/android/server/NetworkScoreService$2;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$2;-><init>(Lcom/android/server/NetworkScoreService;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 272
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 273
    new-instance v3, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 278
    new-instance v9, Lcom/android/server/NetworkScoreService$ServiceHandler;

    invoke-direct {v9, p0, p4}, Lcom/android/server/NetworkScoreService$ServiceHandler;-><init>(Lcom/android/server/NetworkScoreService;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    .line 279
    new-instance v7, Landroid/content/IntentFilter;

    const-string p1, "android.location.MODE_CHANGED"

    invoke-direct {v7, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    move-object v4, v0

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 283
    new-instance p1, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    invoke-direct {p1, v0, v9}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 284
    iput-object p3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    .line 285
    new-instance p1, Lcom/android/server/NetworkScoreService$3;

    invoke-direct {p1, p0, v9}, Lcom/android/server/NetworkScoreService$3;-><init>(Lcom/android/server/NetworkScoreService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mUseOpenWifiPackageObserver:Landroid/database/ContentObserver;

    .line 300
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "use_open_wifi_package"

    .line 301
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const/4 p4, 0x0

    .line 300
    invoke-virtual {p2, p3, p4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    new-instance p2, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/NetworkScoreService;)V

    .line 306
    invoke-interface {p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method


# virtual methods
.method public final bindToScoringServiceIfNeeded()V
    .locals 2

    .line 391
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string v1, "bindToScoringServiceIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    return-void
.end method

.method public final bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V
    .locals 3

    .line 404
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToScoringServiceIfNeeded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    .line 406
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/NetworkScorerAppData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 414
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-nez v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 419
    :cond_2
    iget-object p1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->bind(Landroid/content/Context;)V

    .line 420
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 422
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    return-void
.end method

.method public final clearInternal()V
    .locals 2

    .line 800
    new-instance v0, Lcom/android/server/NetworkScoreService$4;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$4;-><init>(Lcom/android/server/NetworkScoreService;)V

    .line 811
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->getScoreCacheLists()Ljava/util/Collection;

    move-result-object v1

    .line 800
    invoke-virtual {p0, v0, v1}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V

    return-void
.end method

.method public clearScores()Z
    .locals 2

    .line 699
    invoke-static {}, Landroid/net/INetworkScoreService$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrIsActiveScorer(I)V

    .line 700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 702
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 706
    throw p0
.end method

.method public disableScoring()V
    .locals 1

    .line 794
    invoke-static {}, Landroid/net/INetworkScoreService$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrIsActiveScorer(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 887
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkScoreService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 888
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 890
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v2}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v2

    if-nez v2, :cond_1

    .line 892
    const-string p0, "Scoring is disabled."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 895
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current scorer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    :try_start_2
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz p0, :cond_2

    .line 899
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 901
    :cond_2
    const-string p0, "ScoringServiceConnection: null"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 904
    :try_start_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 906
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 903
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 906
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    throw p0
.end method

.method public final enforceSystemOnly()V
    .locals 2

    .line 731
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.REQUEST_NETWORK_SCORES"

    const-string v1, "Caller must be granted REQUEST_NETWORK_SCORES."

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSystemOrHasScoreNetworks()V
    .locals 2

    .line 736
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SCORE_NETWORKS"

    .line 738
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is neither the system process or a network scorer."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceSystemOrIsActiveScorer(I)V
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is neither the system process or the active network scorer."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 0

    .line 776
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 777
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object p0

    return-object p0
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .locals 0

    .line 762
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrHasScoreNetworks()V

    .line 763
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 767
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllValidScorers()Ljava/util/List;
    .locals 0

    .line 787
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 788
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_0
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz p0, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 945
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

.method public final getScoreCacheLists()Ljava/util/Collection;
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v0

    .line 918
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 919
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCallerActiveScorer(I)Z
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz p0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object p0

    iget p0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    if-ne p0, p1, :cond_0

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

    .line 726
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$new$0(I)[Ljava/lang/String;
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "use_open_wifi_package"

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 310
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onUserUnlocked(I)V
    .locals 2

    .line 329
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkScoreService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    return-void
.end method

.method public final refreshBinding()V
    .locals 2

    .line 334
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "refreshBinding()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->updateState()V

    .line 337
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->migrateNetworkScorerAppSettingIfNeeded()V

    .line 338
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->registerPackageMonitorIfNeeded()V

    .line 339
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded()V

    return-void
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    .locals 6

    .line 818
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 821
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 822
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    if-nez v3, :cond_0

    .line 824
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 825
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 827
    :cond_0
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 828
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    if-nez p2, :cond_1

    .line 829
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_1
    const-string p0, "NetworkScoreService"

    const/4 p2, 0x2

    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 832
    const-string p0, "NetworkScoreService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to register NetworkScoreCache for type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 837
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 835
    :goto_1
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

    .line 837
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    throw p0
.end method

.method public final registerPackageMonitorIfNeeded()V
    .locals 7

    .line 360
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v1, "NetworkScoreService"

    const-string/jumbo v2, "registerPackageMonitorIfNeeded()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v1}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 364
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v5, v5, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 368
    const-string v3, "NetworkScoreService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unregistering package monitor for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v6, v6, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_2
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 372
    iput-object v4, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    :cond_3
    if-eqz v1, :cond_4

    .line 376
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    if-nez v3, :cond_4

    .line 377
    new-instance v3, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 378
    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService-IA;)V

    iput-object v3, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 380
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    if-eqz v0, :cond_4

    .line 383
    const-string v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered package monitor for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object p0, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_4
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerRecommendationSettingsObserver()V
    .locals 3

    .line 343
    const-string/jumbo v0, "network_recommendations_package"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->observe(Landroid/net/Uri;I)V

    .line 347
    const-string/jumbo v0, "network_recommendations_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 348
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->observe(Landroid/net/Uri;I)V

    return-void
.end method

.method public requestScores([Landroid/net/NetworkKey;)Z
    .locals 3

    .line 864
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 867
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 870
    :try_start_1
    invoke-interface {p0, p1}, Landroid/net/INetworkRecommendationProvider;->requestScores([Landroid/net/NetworkKey;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 881
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 875
    :try_start_2
    const-string p1, "NetworkScoreService"

    const-string v2, "Failed to request scores."

    invoke-static {p1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 881
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    throw p0
.end method

.method public final sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    .locals 4

    .line 924
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RemoteCallbackList;

    .line 925
    monitor-enter p2

    .line 926
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    .line 929
    :try_start_1
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkScoreCache;

    .line 930
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    .line 929
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 933
    :try_start_2
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 934
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 933
    :cond_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 935
    monitor-exit p2

    goto :goto_0

    :goto_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 0

    .line 711
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrHasScoreNetworks()V

    .line 712
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public systemReady()V
    .locals 2

    .line 318
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->registerRecommendationSettingsObserver()V

    return-void
.end method

.method public systemRunning()V
    .locals 1

    .line 324
    sget-boolean p0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "NetworkScoreService"

    const-string/jumbo v0, "systemRunning"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final unbindFromScoringServiceIfNeeded()V
    .locals 4

    .line 427
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v1, "NetworkScoreService"

    const-string/jumbo v2, "unbindFromScoringServiceIfNeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v2, :cond_1

    .line 430
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->unbind(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    .line 431
    const-string v0, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 432
    invoke-virtual {v3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 434
    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 435
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    return-void

    .line 435
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 5

    .line 843
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 846
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 847
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 848
    invoke-virtual {v3, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    if-nez p2, :cond_2

    .line 854
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 849
    :cond_1
    :goto_0
    const-string p0, "NetworkScoreService"

    const/4 p2, 0x2

    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 850
    const-string p0, "NetworkScoreService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to unregister NetworkScoreCache for type "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 856
    :goto_2
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

    .line 858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 859
    throw p0
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 9

    .line 441
    invoke-static {}, Landroid/net/INetworkScoreService$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 449
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 450
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p1, v5

    .line 451
    iget-object v7, v6, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v7, v7, Landroid/net/NetworkKey;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_0

    .line 453
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 454
    iget-object v8, v6, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v8, v8, Landroid/net/NetworkKey;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 456
    :cond_0
    :goto_1
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 460
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 463
    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :try_start_1
    iget-object v6, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallbackList;

    if-eqz v6, :cond_4

    .line 466
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 467
    :cond_4
    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_5

    .line 470
    :try_start_2
    const-string v3, "NetworkScoreService"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    const-string v3, "NetworkScoreService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No scorer registered for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", discarding"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 477
    :cond_5
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 478
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 479
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 478
    invoke-static {v3, v5, v2}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->create(Landroid/content/Context;Ljava/util/List;I)Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;

    move-result-object v2

    .line 480
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 467
    :goto_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 485
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    throw p0

    .line 442
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Caller with UID "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/INetworkScoreService$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not the active scorer."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
